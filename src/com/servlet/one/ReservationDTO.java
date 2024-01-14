package com.servlet.one;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ReservationDTO
 */
@WebServlet("/ReservationDTO")
public class ReservationDTO extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
    private int rvcode;			//예약 코드
    private int usercode;		//유저 코드
    private String id;
	private int dscode;			//여행지 코드
    //private String type;    	 // 프로모션 이름
	private int prmcode;		//프로모션 코드
	private int fiprice;			//가격
	private String date;		//날짜
    
    
	public int getRvCode() {
    	return rvcode;
    }
    public void setRvCode(int rvcode) {
    	this.rvcode = rvcode;
    }
    public int getUserCode() {
    	return usercode;
    }
    public void setUserCode(int usercode) {
    	this.usercode = usercode;
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public int getDsCode() {
    	return dscode;
    }
    public void setDsCode(int dscode) {
    	this.dscode = dscode;
    }

    public int getPrmCode() {
    	return prmcode;
    }
    public void setPrmCode(int prmcode) {
    	this.prmcode = prmcode;
    }
    public int getFiPrice() {
    	return fiprice;
    }
    public void setFiPrice(int price) {
    	this.fiprice = price;
    }

    public String getDate() {
        return date;
    }
    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "DestinationDTO [rvcode=" + rvcode + "usercode=" + usercode + "dscode=" + dscode + "prmcode=" + prmcode + ", fiprice=" + fiprice + ", date=" + date + "]";
    }

}
