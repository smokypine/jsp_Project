package com.servlet.one;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.JDBCUtil;

/**
 * Servlet implementation class PromotionDAO
 */
@WebServlet("/PromotionDAO")
public class PromotionDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /*
     * root 사용자가 여행지 정보를 데이터베이스에서 불러오는 메서드
     */
    public ArrayList<PromotionDTO> selectPromotionList() throws SQLException {
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        conn = JDBCUtil.getConnection();
        final String destinationQuery = "select * from promotion";
        pstmt = conn.prepareStatement(destinationQuery);
        rs = pstmt.executeQuery();
        
        ArrayList<PromotionDTO> cList = new ArrayList<PromotionDTO>();
        
        
        while (rs.next()) {
        	PromotionDTO rd = new PromotionDTO();
        	rd.setPrmCode(rs.getInt("prmcode"));
            rd.setDsCode(rs.getInt("dscode"));
            rd.setPrmName(rs.getString("prmname"));
            rd.setDiscount(rs.getInt("discount"));
            cList.add(rd);
        }

        // 반환 타입을 ArrayList<RegisterDTO>로 수정
        return cList;
    }
    //관리자 모드에서 프로모션 추가하기
    public boolean promotionInsertManager(PromotionDTO pDTO) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean flag = false;
        try {
            conn = JDBCUtil.getConnection();
            // 프로모션 정보를 등록하는 쿼리
            String strQuery = "INSERT INTO promotion (DSCODE, PRMNAME, DISCOUNT) VALUES (?, ?, ?)";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setInt(1, pDTO.getDsCode());
            pstmt.setString(2, pDTO.getPrmName());
            pstmt.setInt(3, pDTO.getDiscount());

            int count = pstmt.executeUpdate();

            // 등록된 행이 하나면 성공
            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            JDBCUtil.close(rs, pstmt, conn);
        }
        return flag;
    }
    //프로모션 값을 받아 해당 행을 뿌리는 것.
    public PromotionDTO getPromotionByPrmCode(int prmcode) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        PromotionDTO promotion = null;

        try {
            conn = JDBCUtil.getConnection();
            String strQuery = "SELECT * FROM promotion WHERE prmcode = ?";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setInt(1, prmcode);
            rs = pstmt.executeQuery();

            if (rs.next()) {
            	promotion = new PromotionDTO();
            	promotion.setPrmCode(rs.getInt("prmcode"));
            	promotion.setDsCode(rs.getInt("dscode"));
            	promotion.setPrmName(rs.getString("prmname"));
            	promotion.setDiscount(rs.getInt("discount"));
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            JDBCUtil.close(rs, pstmt, conn);
        }

        return promotion;
    }
    
    //prmcode를 통해 데이터를 구분하여 업데이트 하는 코드
    public boolean promotionUpdateManager(PromotionDTO pDTO) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean flag = false;

        try {
            conn = JDBCUtil.getConnection();
            String strQuery = "UPDATE promotion SET dscode=?, prmname=?, discount=? WHERE prmcode=?";

            pstmt = conn.prepareStatement(strQuery);
            pstmt.setInt(1, pDTO.getDsCode());
            pstmt.setString(2, pDTO.getPrmName());
            pstmt.setInt(3, pDTO.getDiscount());
            pstmt.setInt(4, pDTO.getPrmCode());

            int count = pstmt.executeUpdate();

            // 업데이트된 행이 하나면 성공
            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            JDBCUtil.close(rs, pstmt, conn);
        }
        return flag;
    }
    /**
     * 프로모션 정보를 데이터베이스에서 삭제하는 메서드
     * 
     * @param dscode       삭제할 여행지 코드
     * @param dsname 		삭제할 여행지명
     * @return 삭제 성공 여부를 반환 (true: 성공, false: 실패)
     */
    public boolean deletePromotion(int prmcode, String prmname) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = JDBCUtil.getConnection();

            // 회원 정보를 삭제하는 쿼리
            String deleteQuery = "DELETE FROM promotion WHERE prmcode = ? AND prmname = ?";
            pstmt = conn.prepareStatement(deleteQuery);

            // 쿼리 매개변수 설정
            pstmt.setInt(1, prmcode);
            pstmt.setString(2, prmname);

            // 삭제된 행의 수가 1이면 삭제 성공
            return pstmt.executeUpdate() == 1;

        } catch (SQLException e) {
            e.printStackTrace();
            // TODO: 예외 처리 필요 (예: 로깅, 예외를 다시 던지거나 처리)
        } finally {
            JDBCUtil.close(null, pstmt, conn);
        }

        // 삭제 실패 시
        return false;
    }
}
