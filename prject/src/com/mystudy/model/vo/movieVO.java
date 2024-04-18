package com.mystudy.model.vo;

import java.sql.Date;

public class movieVO {
	private int mNO;
	private String mTitle;
	private String mDirect;
	private String mActor;
	private String mGenre;
	private int mRate;
	private String mAudience;
	private String mGrade;
	private Date mDate;
	private String mPoster;
	
	public int getmNO() {
		return mNO;
	}
	public void setmNO(int mNO) {
		this.mNO = mNO;
	}
	public String getmTitle() {
		return mTitle;
	}
	public void setmTitle(String mTitle) {
		this.mTitle = mTitle;
	}
	public String getmDirect() {
		return mDirect;
	}
	public void setmDirect(String mDirect) {
		this.mDirect = mDirect;
	}
	public String getmActor() {
		return mActor;
	}
	public void setmActor(String mActor) {
		this.mActor = mActor;
	}
	public String getmGenre() {
		return mGenre;
	}
	public void setmGenre(String mGenre) {
		this.mGenre = mGenre;
	}
	public int getmRate() {
		return mRate;
	}
	public void setmRate(int mRate) {
		this.mRate = mRate;
	}
	public String getmAudience() {
		return mAudience;
	}
	public void setmAudience(String mAudience) {
		this.mAudience = mAudience;
	}
	public String getmGrade() {
		return mGrade;
	}
	public void setmGrade(String mGrade) {
		this.mGrade = mGrade;
	}
	public Date getmDate() {
		return mDate;
	}
	public void setmDate(Date mDate) {
		this.mDate = mDate;
	}
	public String getmPoster() {
		return mPoster;
	}
	public void setmPoster(String mPoster) {
		this.mPoster = mPoster;
	}
	@Override
	public String toString() {
		return "movieVO [mNO=" + mNO + ", mTiltle=" + mTitle + ", mDirect=" + mDirect + ", mActor=" + mActor
				+ ", mGenre=" + mGenre + ", mRate=" + mRate + ", mAudience=" + mAudience + ", mGrade=" + mGrade
				+ ", mDate=" + mDate + ", mPoster=" + mPoster + "]";
	}
	
	
}
