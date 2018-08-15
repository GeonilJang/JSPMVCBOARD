package com.test.ex.cmd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.ex.dao.Bdao;

public class BwriteCommand implements BCommand{
	
	
	//글 등록 커맨드
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String bName =  request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		
		Bdao dao = new Bdao();
		dao.write(bName, bTitle, bContent);
	}
	
}
