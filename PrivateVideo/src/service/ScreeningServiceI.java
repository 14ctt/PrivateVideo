package service;

import java.util.Date;
import java.util.List;

import entity.Screenings;

public interface ScreeningServiceI {
	public List findScreeningsByscdate(String scdate) throws Exception;
	public Screenings findScreeningByID(Screenings Screening) throws Exception;
	public void updateScreening(Screenings Screening)throws Exception;
	public List findAllScreenings(Screenings Screening)throws Exception;
	public void delScreening(Screenings Screening) throws Exception;
	public void addScreening(Screenings Screening) throws Exception;
	public List findDatelimit4() throws Exception;
}
