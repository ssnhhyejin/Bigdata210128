package com.spring.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.web.common.JDBCUtil;
import com.spring.web.vo.QBoardVO;
	
	@Repository("qboardDAO")
	public class QBoardDAO {
		
		private Connection conn=null;
		private ResultSet rs=null;
		private PreparedStatement pstmt=null;
		
		//insertBoard
		public void insertBoard(QBoardVO vo) {
			String BOARD_INSERT="insert into qboard (seq,id,nickname,subject,content) values((select COALESCE(max(seq),0)+1 from qboard a),?,?,?,?)";
			System.out.println("insert Board()");
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
		public void updateBoard(QBoardVO vo) {
			System.out.println("update Board()");
			conn=JDBCUtil.getConnection();
			String BOARD_UPDATE="update qboard set subject=?, content=? where seq=?";
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
		public void deleteBoard(QBoardVO vo) {
			System.out.println("deleteBoard()");
			String BOARD_DELETE="delete from qboard where seq=?";
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
		public QBoardVO getBoard(QBoardVO vo) {
			System.out.println("getBoard()");
			String BOARD_GET="select * from qboard where seq=?";
			QBoardVO board = null;
			try {
				conn=JDBCUtil.getConnection();
				pstmt=conn.prepareStatement(BOARD_GET);
				pstmt.setInt(1, vo.getSeq());
				rs = pstmt.executeQuery();
				if(rs.next()) {
					String id = rs.getString("id"); 
					String nickname = rs.getString("nickname"); 
					String subject = rs.getString("subject"); 
					String content = rs.getString("content"); 
					String date = rs.getString("date"); 
					int seq = rs.getInt("seq");
					board =new QBoardVO(seq, id, nickname, subject, content, date);
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
		public List<QBoardVO> getBoardList() {
			System.out.println("getBoardList");
			String BOARD_LIST="select * from qboard order by seq desc";
			List<QBoardVO> boardList = new ArrayList<QBoardVO>();
			conn=JDBCUtil.getConnection();
			try {
				pstmt=conn.prepareStatement(BOARD_LIST);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					String id = rs.getString("id"); 
					String nickname = rs.getString("nickname"); 
					String subject = rs.getString("subject"); 
					String content = rs.getString("content"); 
					String date = rs.getString("date"); 
					int seq = rs.getInt("seq");
					QBoardVO board = new QBoardVO(seq, id, nickname, subject, content, date);
					//System.out.println(board);
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

