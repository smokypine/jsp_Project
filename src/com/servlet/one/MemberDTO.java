package com.servlet.one;
/**
 * MemberDTO 클래스는 사용자 정보를 담는 데이터 객체입니다.
 */
public class MemberDTO {
	private int usercode;	//사용자 유저코드
    private String id;       // 사용자 아이디
    private String password; // 사용자 비밀번호
    private String name;     // 사용자 이름
    private int age;		// 사용자 나이
    private String gender;		// 사용자 성별
    private String email;		//사용자 이메일
    private String role;     // 사용자 역할
    
    public int getUsercode() {
    	return usercode;
    }
    public void setUsercode(int usercode) {
    	this.usercode = usercode;
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    } 
    @Override
    public String toString() {
        return "MemberDTO [usercode=" + usercode + ", id=" + id + ", password=" + password +
                ", name=" + name + ", age=" + age + ", gender=" + gender + ", email=" + email +
                ", role=" + role + "]";
    }
}
