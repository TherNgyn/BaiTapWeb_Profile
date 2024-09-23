package vn.iostar.controller;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.MultipartConfig;

import jakarta.servlet.annotation.WebServlet;

import jakarta.servlet.http.HttpServlet;

import jakarta.servlet.http.HttpServletRequest;

import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.http.Part;
import vn.iostar.utils.Constant;

import java.io.File;

import java.io.FileNotFoundException;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;

@WebServlet(name = "MultiPartServlet", urlPatterns = { "/multiPartServlet" })

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)

public class MultipartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String getFileName(Part part) {

		for (String content : part.getHeader("content-disposition").split(";")) {

			if (content.trim().startsWith("filename"))

				return content.substring(content.indexOf("=") + 2, content.length() - 1);

		}

		return Constant.DEFAULT_FILENAME;

	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("upload.jsp").forward(req, resp);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		try {
			
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			Part part = request.getPart("image");
			String realPath = request.getServletContext().getRealPath("/uploads");
			
			String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
			
			if(!Files.exists(Paths.get(realPath))){
				Files.createDirectory(Paths.get(realPath));
			}
			part.write(realPath+"/"+fileName);
			PrintWriter out = response.getWriter();
			try {
				out.print("<h2>Tên: "+name+"</h2");
				out.print("<br><h2>Số điện thoại: "+ phone+"</h2>");
				out.print("<img src=uploads/"+fileName+">");
			} catch (Exception e) {
				// TODO: handle exception
			}
			request.setAttribute("message", "File " + fileName + " has uploaded successfully!");
			request.setAttribute("name",name);
			request.setAttribute("phone", phone);
			request.setAttribute("image", "uploads/"+fileName);
		} catch (FileNotFoundException fne) {

			request.setAttribute("message", "There was an error: " + fne.getMessage());

		}
		getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
	}

}
