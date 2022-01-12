package com.spring.web.dao;

import java.awt.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.spring.web.common.JDBCUtil;
import com.spring.web.vo.UserVO;


@Repository("userDAO")
public class UserDAO {
	
	private Connection conn=null;
	private ResultSet rs=null;
	private PreparedStatement pstmt=null;
	
	public void insertUser(UserVO vo) {
		String INSERT_USER="insert into user (id, password, name, email, nickname) values (?,?,?,?,?)";
		System.out.println("Insert User");
		conn=JDBCUtil.getConnection();
		try {
			pstmt=conn.prepareStatement(INSERT_USER);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPassword());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getNickname());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			JDBCUtil.close(pstmt, conn, rs);
		}
	}
	
	public UserVO getUser(UserVO vo) {
		System.out.println("Get User");
		UserVO user=null;
		conn=JDBCUtil.getConnection();
		String getUser="select * from user where id=? and password=?";
		try {
			pstmt=conn.prepareStatement(getUser);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPassword());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				String id=rs.getString("id");
				String password=rs.getString("password");
				String name=rs.getString("name");
				String email=rs.getString("email");
				String nickname=rs.getString("nickname");
				user=new UserVO(id, password, name, email, nickname);
				System.out.println(user.toString());
			}
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			JDBCUtil.close(pstmt, conn, rs);
		}
		return user;
	}
	
	public UserVO userInfo(UserVO vo) {
		System.out.println("Get UserInfo");
		UserVO user=null;
		conn=JDBCUtil.getConnection();
		String userInfo="select * from user where id=?";
		try {
			System.out.println("555555555");
			pstmt=conn.prepareStatement(userInfo);
			pstmt.setString(1, vo.getId());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				String id=rs.getString("id");
				String password=rs.getString("password");
				String name=rs.getString("name");
				String email=rs.getString("email");
				String nickname=rs.getString("nickname");
				user=new UserVO(id, password, name, email, nickname);
				System.out.println(user.toString());
			}
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			JDBCUtil.close(pstmt, conn, rs);
		}
		return user;
	}
	
	public void deleteUser(UserVO vo) {
		System.out.println("deleteUser");
		String delete_user="delete from user where id=? and password=?";
		conn=JDBCUtil.getConnection();
		try {
			pstmt=conn.prepareStatement(delete_user);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPassword());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			JDBCUtil.close(pstmt, conn, rs);
		}
	}
	
	public void updateUser(UserVO vo) {
		System.out.println("updateUser");
		String update_user="update user set password=?, name=?, nickname=?, email=? where id=?";
		conn=JDBCUtil.getConnection();
		try {
			pstmt=conn.prepareStatement(update_user);
			pstmt.setString(1, vo.getPassword());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getEmail());
			pstmt.setString(4, vo.getNickname());
			pstmt.setString(5, vo.getId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			JDBCUtil.close(pstmt, conn, rs);
		}
	}
	
}
