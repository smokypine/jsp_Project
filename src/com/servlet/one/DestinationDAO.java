package com.servlet.one;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;

import common.JDBCUtil;

/**
 * MemberDAO 클래스는 데이터베이스와 관련된 작업을 처리하는 클래스입니다.
 */
public class DestinationDAO {
    /*
     * root 사용자가 여행지 정보를 데이터베이스에서 불러오는 메서드
     */
    public ArrayList<DestinationDTO> selectDestinationList() throws SQLException {
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        conn = JDBCUtil.getConnection();
        final String destinationQuery = "select * from traveldestination";
        pstmt = conn.prepareStatement(destinationQuery);
        rs = pstmt.executeQuery();
        
        ArrayList<DestinationDTO> bList = new ArrayList<DestinationDTO>();
        
        
        while (rs.next()) {
            DestinationDTO rd = new DestinationDTO();
            rd.setDsCode(rs.getInt("dscode"));
            rd.setDsName(rs.getString("dsname"));
            rd.setDsDetail(rs.getString("dsdetail"));
            rd.setType(rs.getString("type"));
            rd.setPrice(rs.getInt("price"));
            bList.add(rd);
        }

        // 반환 타입을 ArrayList<RegisterDTO>로 수정
        return bList;
    }
  //관리자 모드에서 여행지 추가하기
    public boolean destinationInsertManager(DestinationDTO dDTO) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean flag = false;
        try {
            conn = JDBCUtil.getConnection();
            // 사용자 정보를 등록하는 쿼리
            String strQuery = "INSERT INTO traveldestination (DSNAME, DSDETAIL, TYPE, PRICE) VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1, dDTO.getDsName());
            pstmt.setString(2, dDTO.getDsDetail());
            pstmt.setString(3, dDTO.getType());
            pstmt.setInt(4, dDTO.getPrice());

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
    //dscode값을 받아 해당 행을 뿌리는 것.
    public DestinationDTO getDestinationByDsCode(int dscode) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        DestinationDTO destination = null;

        try {
            conn = JDBCUtil.getConnection();
            String strQuery = "SELECT * FROM traveldestination WHERE dscode = ?";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setInt(1, dscode);
            rs = pstmt.executeQuery();

            if (rs.next()) {
            	destination = new DestinationDTO();
            	destination.setDsCode(rs.getInt("dscode"));
            	destination.setDsName(rs.getString("dsname"));
            	destination.setDsDetail(rs.getString("dsdetail"));
            	destination.setType(rs.getString("type"));
            	destination.setPrice(rs.getInt("price"));
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            JDBCUtil.close(rs, pstmt, conn);
        }

        return destination;
    }
    
    //dscode를 통해 데이터를 구분하여 업데이트 하는 코드
    public boolean destinationUpdateManager(DestinationDTO dDTO) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean flag = false;

        try {
            conn = JDBCUtil.getConnection();
            String strQuery = "UPDATE traveldestination SET dsname=?, dsdetail=?, type=?, price=? WHERE dscode=?";

            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1, dDTO.getDsName());
            pstmt.setString(2, dDTO.getDsDetail());
            pstmt.setString(3, dDTO.getType());
            pstmt.setInt(4, dDTO.getPrice());
            pstmt.setInt(5, dDTO.getDsCode());

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
     * 회원 정보를 데이터베이스에서 삭제하는 메서드
     * 
     * @param dscode       삭제할 여행지 코드
     * @param dsname 		삭제할 여행지명
     * @return 삭제 성공 여부를 반환 (true: 성공, false: 실패)
     */
    public boolean deleteDestination(int dscode, String dsname) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = JDBCUtil.getConnection();

            // 회원 정보를 삭제하는 쿼리
            String deleteQuery = "DELETE FROM traveldestination WHERE dscode = ? AND dsname = ?";
            pstmt = conn.prepareStatement(deleteQuery);

            // 쿼리 매개변수 설정
            pstmt.setInt(1, dscode);
            pstmt.setString(2, dsname);

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