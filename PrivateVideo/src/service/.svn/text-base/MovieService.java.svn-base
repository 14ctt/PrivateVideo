package service;

import java.util.List;

import dao.EntityDaoI;
import entity.Movies;
import entity.Types;

public class MovieService implements IMovieService{
	private EntityDaoI edi;
	public MovieService() {
		// TODO Auto-generated constructor stub
	}
	public EntityDaoI getEdi() {
		return edi;
	}
	public void setEdi(EntityDaoI edi) {
		this.edi = edi;
	}
	@Override
	public void addMovie(Movies obj) throws Exception {
		edi.addObject(obj);
		
	}
	@Override
	public List findAllMovie() throws Exception {
		List m = edi.findAll("From Movies");
		List<Movies> mo = m;
		Types t = (Types) edi.findObjectByID(Types.class, mo.get(mo.size()-1).getTypes().getTypeid());
		mo.get(mo.size()-1).setTypes(t);
		return mo;
	}

	@Override
	public Movies findMovieById(int id) throws Exception {
		// TODO Auto-generated method stub
		return (Movies) edi.findObjectByID(Movies.class, id);
	}
	@Override
	public void updateMovie(Movies obj) throws Exception {
		edi.updateObject(obj);		
	}
	@Override
	public void delMovie(Movies obj) throws Exception {
		edi.delObject(obj);		
	}
	@Override
	public void delMovies(List<Movies> m) throws Exception {
		for(Movies mm :m){
			edi.delObject(mm);
		}
		
	}
	

}
