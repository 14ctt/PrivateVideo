package controller;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import entity.Movies;
import service.IMovieService;

public class MovieAction extends ActionSupport{
	private IMovieService ms;
	private Movies mv;
	private String Mvid;//ÅúÁ¿É¾³ý
	public MovieAction() {
		// TODO Auto-generated constructor stub
	}
	public IMovieService getMs() {
		return ms;
	}
	public void setMs(IMovieService ms) {
		this.ms = ms;
	}
	public Movies getMv() {
		return mv;
	}
	public void setMv(Movies mv) {
		this.mv = mv;
	}
	
	public String getMvid() {
		return Mvid;
	}
	public void setMvid(String mvid) {
		Mvid = mvid;
	}
	public String addMovie() throws Exception{
		ms.addMovie(getMv());
		return this.NONE;
	}
	
	public String findallmovie() throws Exception{
		List<Movies> movies = ms.findAllMovie();
		//System.out.println(movies.get(movies.size()-1).getTypes().getTypename());
		ServletActionContext.getRequest().setAttribute("movies", movies);
		return this.NONE;
	}
	
	public String findmovieById()throws Exception{
		int id = Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));
		//System.out.println(id);
		Movies m = ms.findMovieById(id);
		ServletActionContext.getRequest().setAttribute("movie", m);
		return "updatemovie";
	}
	
	public String updatemovie()throws Exception{
		ms.updateMovie(getMv());
		return this.NONE;
	}
	
	public String delMovie() throws Exception{
		ms.delMovie(getMv());
		return this.NONE;
	}
	public String delmany() throws Exception{

		for(String s:getMvid().split(",")){
			int id = Integer.parseInt(s);
			Movies m = new Movies();
			m.setMvid(id);
			ms.delMovie(m);
		}
		
		return this.NONE;
	}
}

