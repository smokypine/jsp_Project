package com.servlet.one;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.JDBCUtil;

/**
 * MemberDAO 클래스는 데이터베이스와 관련된 작업을 처리하는 클래스입니다.
 */
public class MemberDAO {

    /**
     * 사용자의 로그인 정보를 확인하는 메서드
     * 
     * @param id       사용자 아이디
     * @param password 사용자 비밀번호
     * @return 로그인 성공 여부를 반환 (true: 성공, false: 실패)
     */
    public boolean loginCheck(String id, String password) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean loginCon = false;
        try {
            conn = JDBCUtil.getConnection();
            // 사용자의 아이디와 비밀번호를 확인하는 쿼리
            String strQuery = "SELECT id, password FROM users WHERE id = ? AND password = ?";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1, id);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            // 결과가 있으면 로그인 성공
            loginCon = rs.next();
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            JDBCUtil.close(rs, pstmt, conn);
        }
        return loginCon;
    }

    /**
     * 사용자 정보를 데이터베이스에 등록하는 메서드
     * 
     * @param mDTO MemberDTO 객체로 사용자 정보를 전달
     * @return 등록 성공 여부를 반환 (true: 성공, false: 실패)
     */
    public boolean memberInsert(MemberDTO mDTO) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean flag = false;
        try {
            conn = JDBCUtil.getConnection();
            // 사용자 정보를 등록하는 쿼리
            String strQuery = "INSERT INTO users(ID, PASSWORD, NAME, AGE, GENDER, EMAIL) VALUES (?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1, mDTO.getId());
            pstmt.setString(2, mDTO.getPassword());
            pstmt.setString(3, mDTO.getName());
            pstmt.setInt(4, mDTO.getAge());
            pstmt.setString(5, mDTO.getGender());
            pstmt.setString(6, mDTO.getEmail());

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
    //관리자 모드에서 회원 추가하기
    public boolean memberInsertManager(MemberDTO mDTO) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean flag = false;
        try {
            conn = JDBCUtil.getConnection();
            // 사용자 정보를 등록하는 쿼리
            String strQuery = "INSERT INTO users(ID, PASSWORD, NAME, AGE, GENDER, EMAIL, ROLE) VALUES (?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1, mDTO.getId());
            pstmt.setString(2, mDTO.getPassword());
            pstmt.setString(3, mDTO.getName());
            pstmt.setInt(4, mDTO.getAge());
            pstmt.setString(5, mDTO.getGender());
            pstmt.setString(6, mDTO.getEmail());
            pstmt.setString(7, mDTO.getRole());

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
    
    /*
     * root 사용자가 전체 멤버 정보를 데이터베이스에서 불러오는 메서드
     */
    public ArrayList<MemberDTO> selectMemberList() throws SQLException {
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        conn = JDBCUtil.getConnection();
        final String memberQuery = "select * from users";
        pstmt = conn.prepareStatement(memberQuery);
        rs = pstmt.executeQuery();
        
        ArrayList<MemberDTO> aList = new ArrayList<MemberDTO>();
        
        while (rs.next()) {
            MemberDTO rd = new MemberDTO();
            rd.setUsercode(rs.getInt("usercode"));
            rd.setId(rs.getString("id"));
            rd.setPassword(rs.getString("password"));
            rd.setName(rs.getString("name"));
            rd.setAge(rs.getInt("age"));
            rd.setGender(rs.getString("gender"));
            rd.setEmail(rs.getString("email"));
            rd.setRole(rs.getString("role"));
            aList.add(rd);
        }
        return aList;
    }
    /*
    public boolean IdPasswordCheck(String id, String password) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean idpass = false;
        try {
            conn = JDBCUtil.getConnection();
            // 입력된 아이디와 비밀번호를 확인하는 쿼리
            String strQuery = "SELECT id, password FROM users WHERE id = ? AND password = ?";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1, id);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            // 결과가 있으면 로그인 성공
            idpass = rs.next();
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            JDBCUtil.close(rs, pstmt, conn);
        }
        return idpass;
    }
    */
    public boolean memberUpdateManager(MemberDTO mDTO) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean flag = false;

        try {
            conn = JDBCUtil.getConnection();
            String strQuery = "UPDATE users SET password=?, name=?, age=?, gender=?, email=?, role=? WHERE id=?";

            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1, mDTO.getPassword());
            pstmt.setString(2, mDTO.getName());
            pstmt.setInt(3, mDTO.getAge());
            pstmt.setString(4, mDTO.getGender());
            pstmt.setString(5, mDTO.getEmail());
            pstmt.setString(6, mDTO.getRole());
            pstmt.setString(7, mDTO.getId());

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
    
    
    public MemberDTO getMemberByIdAndPassword(String id, String password) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        MemberDTO member = null;

        try {
            conn = JDBCUtil.getConnection();
            String strQuery = "SELECT * FROM users WHERE id = ? AND password = ?";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1, id);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                member = new MemberDTO();
                member.setUsercode(rs.getInt("usercode"));
                member.setId(rs.getString("id"));
                member.setPassword(rs.getString("password"));
                member.setName(rs.getString("name"));
                member.setAge(rs.getInt("age"));
                member.setGender(rs.getString("gender"));
                member.setEmail(rs.getString("email"));
                member.setRole(rs.getString("role"));
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            JDBCUtil.close(rs, pstmt, conn);
        }

        return member;
    }
    public MemberDTO getMemberByUserCode(int usercode) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        MemberDTO member = null;

        try {
            conn = JDBCUtil.getConnection();
            String strQuery = "SELECT * FROM users WHERE usercode = ?";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setInt(1, usercode);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                member = new MemberDTO();
                member.setUsercode(rs.getInt("usercode"));
                member.setId(rs.getString("id"));
                member.setPassword(rs.getString("password"));
                member.setName(rs.getString("name"));
                member.setAge(rs.getInt("age"));
                member.setGender(rs.getString("gender"));
                member.setEmail(rs.getString("email"));
                member.setRole(rs.getString("role"));
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            JDBCUtil.close(rs, pstmt, conn);
        }

        return member;
    }
    /**
     * 회원 정보를 데이터베이스에서 삭제하는 메서드
     * 
     * @param id       삭제할 회원의 아이디
     * @param password 삭제할 회원의 패스워드
     * @return 삭제 성공 여부를 반환 (true: 성공, false: 실패)
     */
    public boolean deleteMember(String id, String password) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = JDBCUtil.getConnection();

            // 회원 정보를 삭제하는 쿼리
            String deleteQuery = "DELETE FROM users WHERE id = ? AND password = ?";
            pstmt = conn.prepareStatement(deleteQuery);

            // 쿼리 매개변수 설정
            pstmt.setString(1, id);
            pstmt.setString(2, password);

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

