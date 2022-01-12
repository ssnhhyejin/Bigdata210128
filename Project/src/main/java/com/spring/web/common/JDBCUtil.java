package com.spring.web.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCUtil {
	public static Connection getConnection() {
		String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://bigdata210128-jkedu.cpggtewfn08o.ap-northeast-2.rds.amazonaws.com:3306/project?serverTimezome=UTC";
		String user="jkeduadmin";
		String password="jkeduadmin";
		Connection conn=null;
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,user,password);
			} 
		catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 return conn;
		} 

	public static void close(PreparedStatement pstmt, Connection conn, ResultSet rs) {
			try {
				if(conn != null)
				if(pstmt!=null) pstmt.close();
				conn.close();
			} 
			catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally {
				pstmt=null;
				conn=null;
			}
	}
	}

