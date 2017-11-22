package entity;
// Generated 2017-10-30 19:23:51 by Hibernate Tools 5.2.3.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Movies generated by hbm2java
 */
public class Movies implements java.io.Serializable {
	private int mvid;
	private Types types;
	private String mvname;
	private Date releasetime;
	private String mvtime;
	private String mvdirector;
	private String mvlanguage;
	private String mvintroduction;
	private String mvimg;
	private String mvactor;
	private Set screeningses = new HashSet(0);

	public Movies() {
		
	}

	
	public Movies(int mvid, Types types, String mvname, Date releasetime, String mvtime, String mvdirector,
			String mvlanguage, String mvintroduction, String mvimg, String mvactor) {
		this.mvid = mvid;
		this.types = types;
		this.mvname = mvname;
		this.releasetime = releasetime;
		this.mvtime = mvtime;
		this.mvdirector = mvdirector;
		this.mvlanguage = mvlanguage;
		this.mvintroduction = mvintroduction;
		this.mvimg = mvimg;
		this.mvactor = mvactor;
	}

	public Movies(int mvid, Types types, String mvname, Date releasetime, String mvtime, String mvdirector,
			String mvlanguage, String mvintroduction, String mvimg, String mvactor, Set screeningses) {
		this.mvid = mvid;
		this.types = types;
		this.mvname = mvname;
		this.releasetime = releasetime;
		this.mvtime = mvtime;
		this.mvdirector = mvdirector;
		this.mvlanguage = mvlanguage;
		this.mvintroduction = mvintroduction;
		this.mvimg = mvimg;
		this.mvactor = mvactor;
		this.screeningses = screeningses;
	}

	public int getMvid() {
		return this.mvid;
	}

	public void setMvid(int mvid) {
		this.mvid = mvid;
	}

	public Types getTypes() {
		return this.types;
	}

	public void setTypes(Types types) {
		this.types = types;
	}

	public String getMvname() {
		return this.mvname;
	}

	public void setMvname(String mvname) {
		this.mvname = mvname;
	}

	public Date getReleasetime() {
		return this.releasetime;
	}

	public void setReleasetime(Date releasetime) {
		this.releasetime = releasetime;
	}

	public String getMvtime() {
		return this.mvtime;
	}

	public void setMvtime(String mvtime) {
		this.mvtime = mvtime;
	}

	public String getMvdirector() {
		return this.mvdirector;
	}

	public void setMvdirector(String mvdirector) {
		this.mvdirector = mvdirector;
	}

	public String getMvlanguage() {
		return this.mvlanguage;
	}

	public void setMvlanguage(String mvlanguage) {
		this.mvlanguage = mvlanguage;
	}

	public String getMvintroduction() {
		return this.mvintroduction;
	}

	public void setMvintroduction(String mvintroduction) {
		this.mvintroduction = mvintroduction;
	}

	public String getMvimg() {
		return this.mvimg;
	}

	public void setMvimg(String mvimg) {
		this.mvimg = mvimg;
	}

	public String getMvactor() {
		return this.mvactor;
	}

	public void setMvactor(String mvactor) {
		this.mvactor = mvactor;
	}

	public Set getScreeningses() {
		return this.screeningses;
	}

	public void setScreeningses(Set screeningses) {
		this.screeningses = screeningses;
	}

}
