package com.spring.web.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.web.common.JDBCUtil;
import com.spring.web.vo.FBoardVO;
	
	@Repository("fboardDAO")
	public class FBoardDAO {
		
		private Connection conn=null;
		private ResultSet rs=null;
		private PreparedStatement pstmt=null;
		
		//insertBoard
		public void insertBoard(FBoardVO vo) {
			String BOARD_INSERT="insert into fboard (seq,id,nickname,subject,content) values((select COALESCE(max(seq),0)+1 from fboard a),?,?,?,?)";
			System.out.println("insert Board(5555)");
			conn=JDBCUtil.getConnection();
			try {
				pstmt=conn.prepareStatement(BOARD_INSERT);
				pstmt.setString(1, vo.getId());
				pstmt.setString(2, vo.getNickname());
				pstmt.setString(3, vo.getSubject());
				pstmt.setString(4, vo.getContent());
				pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally {
				JDBCUtil.close(pstmt, conn, rs);
			}
		}
		
		//updateBoard
		public void updateBoard(FBoardVO vo) {
			System.out.println("update Board()");
			conn=JDBCUtil.getConnection();
			String BOARD_UPDATE="update fboard set subject=?, content=? where seq=?";
			try {
				pstmt=conn.prepareStatement(BOARD_UPDATE);
				pstmt.setString(1, vo.getSubject());
				pstmt.setString(2, vo.getContent());
				pstmt.setInt(3, vo.getSeq());
				pstmt.executeUpdate();
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally {
				JDBCUtil.close(pstmt, conn, rs);
			}
		
		}
		
		//deleteBoard
		public void deleteBoard(FBoardVO vo) {
			System.out.println("deleteBoard()");
			String BOARD_DELETE="delete from fboard where seq=?";
			conn=JDBCUtil.getConnection();
			try {
				pstmt=conn.prepareStatement(BOARD_DELETE);
				pstmt.setInt(1, vo.getSeq());
				pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally {
				JDBCUtil.close(pstmt, conn, rs);
			}
		}
		
		//GetBoard
		public FBoardVO getBoard(FBoardVO vo) {
			System.out.println("getBoard()");
			String BOARD_GET="select * from fboard where seq=?";
			FBoardVO board = null;
			try {
				conn=JDBCUtil.getConnection();
				pstmt=conn.prepareStatement(BOARD_GET);
				pstmt.setInt(1, vo.getSeq());
				rs = pstmt.executeQuery();
				if(rs.next()) {
					int seq = rs.getInt("seq");
					String id = rs.getString("id"); 
					String nickname = rs.getString("nickname"); 
					String subject = rs.getString("subject"); 
					String content = rs.getString("content"); 
					String date = rs.getString("date"); 
					board=new FBoardVO(seq, id, nickname, subject, content, date);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally {
				JDBCUtil.close(pstmt, conn, rs);
			}
			return board;
		}
		
		//GetBoardList
		public List<FBoardVO> getBoardList() {
			System.out.println("getBoardList");
			String BOARD_LIST="select * from fboard order by seq desc";
			List<FBoardVO> boardList = new ArrayList<FBoardVO>();
			conn=JDBCUtil.getConnection();
			try {
				pstmt=conn.prepareStatement(BOARD_LIST);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					int seq = rs.getInt("seq");
					String id = rs.getString("id"); 
					String nickname = rs.getString("nickname"); 
					String subject = rs.getString("subject"); 
					String content = rs.getString("content"); 
					String date = rs.getString("date"); 
					
					FBoardVO board = new FBoardVO(seq, id, nickname, subject, content, date);
					boardList.add(board);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally {
				JDBCUtil.close(pstmt, conn, rs);
			}
			return boardList;
		}
		
}

