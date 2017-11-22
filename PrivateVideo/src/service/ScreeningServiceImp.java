package service;

import java.util.List;

import dao.ScreeningDaoI;
import entity.Screenings;

public class ScreeningServiceImp implements ScreeningServiceI {
	private ScreeningDaoI screeningDaoI;
	

	public ScreeningDaoI getScreeningDaoI() {
		return screeningDaoI;
	}

	public void setScreeningDaoI(ScreeningDaoI screeningDaoI) {
		this.screeningDaoI = screeningDaoI;
	}

	@Override
	public Screenings findScreeningByID(Screenings screening) throws Exception{
		return (Screenings) screeningDaoI.findObjectByID(screening.getClass(), screening.getScid());
	}

	@Override
	public void updateScreening(Screenings screening) throws Exception {
		screeningDaoI.updateObject(screening);
	}

	@Override
	public List findAllScreenings(Screenings Screening) throws Exception {
		return screeningDaoI.findAll(Screening.getClass());
	}

	@Override
	public void delScreening(Screenings screening) throws Exception {
		screeningDaoI.delObject(screening);
	}

	@Override
	public void addScreening(Screenings screening) throws Exception {
		screeningDaoI.addObject(screening);
	}

	@Override
	public List findScreeningsByscdate(String scdate) throws Exception{
		return screeningDaoI.findScreeningsByscdate(scdate);
	}

	@Override
	public List findDatelimit4() throws Exception{
		// TODO Auto-generated method stub
		return screeningDaoI.findDatelimit4();
	}
}
