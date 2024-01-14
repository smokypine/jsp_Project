package com.servlet.one;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PromotionDTO
 */
@WebServlet("/PromotionDTO")
public class PromotionDTO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private int prmcode;			//프로모션 코드
	private int dscode;			//여행지 코드
    private String prmname;     // 프로모션 이름
    private int discount;	// 할인률
    
    public int getPrmCode() {
    	return prmcode;
    }
    public void setPrmCode(int prmcode) {
    	this.prmcode = prmcode;
    }
    public int getDsCode() {
    	return dscode;
    }
    public void setDsCode(int dscode) {
    	this.dscode = dscode;
    }
    public String getPrmName() {
        return prmname;
    }
    public void setPrmName(String prmname) {
        this.prmname = prmname;
    }
    public int getDiscount() {
        return discount;
    }
    public void setDiscount(int discount) {
        this.discount = discount;
    }

    @Override
    public String toString() {
        return "DestinationDTO [prmcode=" + prmcode + ", dscode=" + dscode + ", prmname=" + prmname + ", discount=" + discount + "]";
    }

}
