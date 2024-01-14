package com.servlet.one;
/**
 * DestinationDTO 클래스는 여행지 정보를 담는 데이터 객체입니다.
 */
public class DestinationDTO {
	private int dscode;			//여행지 코드
    private String dsname;     // 여행지 이름
    private String dsdetail;	// 여행지 디테일
    private int price;
    private String type;
    

    public int getDsCode() {
    	return dscode;
    }
    public void setDsCode(int dscode) {
    	this.dscode = dscode;
    }
    public String getDsName() {
        return dsname;
    }
    public void setDsName(String dsname) {
        this.dsname = dsname;
    }
    public String getDsDetail() {
        return dsdetail;
    }
    public void setDsDetail(String dsdetail) {
        this.dsdetail = dsdetail;
    }
    public int getPrice() {
    	return price;
    }
    public void setPrice(int price) {
    	this.price = price;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "DestinationDTO [dscode=" + dscode + ", dsname=" + dsname + ", dsdetail=" + dsdetail + ", type=" + type + ", price=" +price + "]";
    }
}
