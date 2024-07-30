package com.pro.user.vo;

public class User {
	
	private String userId;
	private String userPw;
	private String userName;
	private int userNumber;
	private int user_birth;
	
	public User() {
		super();
	}

	public User(String userId, String userPw, String userName, int userNumber, int userBirth) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userNumber = userNumber;
		this.user_birth = userBirth;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}
	
	public int getUser_birth() {
		return user_birth;
	}

	public void setUser_birth(int user_birth) {
		this.user_birth = user_birth;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userPw=" + userPw + ", userName=" + userName + ", userNumber=" + userNumber
				+ ", user_birth=" + user_birth + "]";
	}
	
}