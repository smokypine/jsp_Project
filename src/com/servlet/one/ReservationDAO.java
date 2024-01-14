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
 * Servlet implementation class ReservationDAO
 */
@WebServlet("/ReservationDAO")
public class ReservationDAO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /*
     * root 사용자가 여행지 정보를 데이터베이스에서 불러오는 메서드
     */
    public ArrayList<ReservationDTO> selectReservationList() throws SQLException {
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        conn = JDBCUtil.getConnection();
        final String destinationQuery = "select * from reservation";
        pstmt = conn.prepareStatement(destinationQuery);
        rs = pstmt.executeQuery();
        
        ArrayList<ReservationDTO> dList = new ArrayList<ReservationDTO>();
        
        
        while (rs.next()) {
        	ReservationDTO rd = new ReservationDTO();
        	rd.setRvCode(rs.getInt("rvcode"));
        	rd.setUserCode(rs.getInt("usercode"));
        	rd.setId(rs.getString("id"));
            rd.setDsCode(rs.getInt("dscode"));
            
            rd.setPrmCode(rs.getInt("prmcode"));
            rd.setFiPrice(rs.getInt("fiprice"));
            rd.setDate(rs.getString("date"));
            dList.add(rd);
        }

        // 반환 타입을 ArrayList<RegisterDTO>로 수정
        return dList;
    }
    //관리자 모드에서 예약 추가하기
    public boolean reservationInsertManager(ReservationDTO rDTO) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean flag = false;
        try {
            conn = JDBCUtil.getConnection();
            // 프로모션 정보를 등록하는 쿼리
            String strQuery = "INSERT INTO reservation (USERCODE, ID, DSCODE, PRMCODE, FIPRICE, DATE) VALUES (?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setInt(1, rDTO.getUserCode());
            pstmt.setString(2, rDTO.getId());
            pstmt.setInt(3, rDTO.getDsCode());
            pstmt.setInt(4, rDTO.getPrmCode());
            pstmt.setInt(5, rDTO.getFiPrice());
            pstmt.setString(6, rDTO.getDate());

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
    //rvcode 값을 받아 해당 행을 뿌리는 것.
    public ReservationDTO getReservationByRvCode(int rvcode) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ReservationDTO reservation = null;

        try {
            conn = JDBCUtil.getConnection();
            String strQuery = "SELECT * FROM reservation WHERE rvcode = ?";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setInt(1, rvcode);
            rs = pstmt.executeQuery();

            if (rs.next()) {
            	reservation = new ReservationDTO();
            	reservation.setRvCode(rs.getInt("rvcode"));
            	reservation.setUserCode(rs.getInt("usercode"));
            	reservation.setId(rs.getString("id"));
            	reservation.setDsCode(rs.getInt("dscode"));
            	reservation.setPrmCode(rs.getInt("prmcode"));
            	reservation.setDsCode(rs.getInt("dscode"));
            	reservation.setFiPrice(rs.getInt("fiprice"));
            	reservation.setDate(rs.getString("date"));
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            JDBCUtil.close(rs, pstmt, conn);
        }

        return reservation;
    }
  //id 값을 받아 해당 행을 뿌리는 것.
    public ReservationDTO getReservationById(String id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ReservationDTO reservation = null;

        try {
            conn = JDBCUtil.getConnection();
            String strQuery = "SELECT * FROM reservation WHERE id = ?";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
            	reservation = new ReservationDTO();
            	reservation.setRvCode(rs.getInt("rvcode"));
            	reservation.setUserCode(rs.getInt("usercode"));
            	reservation.setId(rs.getString("id"));
            	reservation.setDsCode(rs.getInt("dscode"));
            	reservation.setPrmCode(rs.getInt("prmcode"));
            	reservation.setDsCode(rs.getInt("dscode"));
            	reservation.setFiPrice(rs.getInt("fiprice"));
            	reservation.setDate(rs.getString("date"));
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            JDBCUtil.close(rs, pstmt, conn);
        }

        return reservation;
    }
  //id 값을 받아 해당 행을 뿌리는 것.
    public ArrayList<ReservationDTO> getReservationListById(String id) throws SQLException {
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        conn = JDBCUtil.getConnection();
        final String destinationQuery = "SELECT * FROM reservation WHERE id = ?";
        pstmt = conn.prepareStatement(destinationQuery);
        pstmt.setString(1, id);
        rs = pstmt.executeQuery();
        
        ArrayList<ReservationDTO> dList = new ArrayList<ReservationDTO>();
        
        
        while (rs.next()) {
        	ReservationDTO rd = new ReservationDTO();
        	rd.setRvCode(rs.getInt("rvcode"));
        	rd.setUserCode(rs.getInt("usercode"));
        	rd.setId(rs.getString("id"));
            rd.setDsCode(rs.getInt("dscode"));
            rd.setPrmCode(rs.getInt("prmcode"));
            rd.setFiPrice(rs.getInt("fiprice"));
            rd.setDate(rs.getString("date"));
            dList.add(rd);
        }

        // 반환 타입을 ArrayList<RegisterDTO>로 수정
        return dList;
    }
    
    //rvcode를 통해 데이터를 구분하여 업데이트 하는 코드
    public boolean reservationUpdateManager(ReservationDTO rDTO) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean flag = false;

        try {
            conn = JDBCUtil.getConnection();
            String strQuery = "UPDATE reservation SET usercode=?, id =?, dscode=?, prmcode=?, fiprice=?, date=? WHERE rvcode=?";

            pstmt = conn.prepareStatement(strQuery);
            pstmt.setInt(1, rDTO.getUserCode());
            pstmt.setString(2, rDTO.getId());
            pstmt.setInt(3, rDTO.getDsCode());
            pstmt.setInt(4, rDTO.getPrmCode());
            pstmt.setInt(5, rDTO.getFiPrice());
            pstmt.setString(6, rDTO.getDate());
            pstmt.setInt(7, rDTO.getRvCode());

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
    public boolean deleteReservation(int rvcode, int usercode) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = JDBCUtil.getConnection();

            // 회원 정보를 삭제하는 쿼리
            String deleteQuery = "DELETE FROM reservation WHERE rvcode = ? AND usercode = ?";
            pstmt = conn.prepareStatement(deleteQuery);

            // 쿼리 매개변수 설정
            pstmt.setInt(1, rvcode);
            pstmt.setInt(2, usercode);

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
