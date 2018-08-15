package com.test.ex.cmd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.ex.dao.Bdao;

public class BDeleteCommand  implements BCommand{

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String bId = request.getParameter("bId");
		Bdao dao = new Bdao();
		dao.delete(bId);
	} 

}
