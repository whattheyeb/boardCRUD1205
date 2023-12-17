package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertBoard(BoardVO vo){
        int result = sqlSession.insert("Board1.insertBoard", vo);
        return result;
    }

    public BoardVO getBoard(int seq){
        BoardVO one = sqlSession.selectOne("Board1.getBoard", seq);
        return one;
    }

    public List<BoardVO> getBoardList(){
        List<BoardVO> list = sqlSession.selectList("Board1.getBoardList");
        return list;
    }

    public int updateBoard(BoardVO vo) {
        int result = sqlSession.update("Board1.updateBoard", vo);
        return result;
    }

    public int deleteBoard(int seq) {
        int result = sqlSession.delete("Board1.deleteBoard", seq);
        return result;
    }





}
