package semiProject.com.kh.place.model.service;

import static semiProject.com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import semiProject.com.kh.board.model.vo.PlaceAttachment;
import semiProject.com.kh.place.model.dao.PlaceDao;
import semiProject.com.kh.place.model.vo.Place;

public class PlaceService {

	public ArrayList<Place> selectPList() {
		Connection conn = getConnection();
		ArrayList<Place> list = new PlaceDao().selectPList(conn);
		
		close(conn);
		return list;
	}

	public int insertPlace(Place p, PlaceAttachment pat) {
		Connection conn = getConnection();
		int result1 = new PlaceDao().insertPlace(conn, p);
		int result2 = new PlaceDao().insertPAttachment(conn, pat);
		
		if(result1 > 0 && result2>0)
		{
			commit(conn);
		}
		else {
			rollback(conn);
		}
		close(conn);
		return result1 * result2;
	}

  public Place selectPlace(int pno) {
		Connection conn = getConnection();
		
		int result = new PlaceDao().increaseCount(conn, pno);
		
		Place p = null;
		
		if(result > 0) {
			commit(conn);
			p = new PlaceDao().selectPlace(conn, pno);
		}else {
			rollback(conn);
		}
		
		return p;
  }

	public int deletePlace(int pno) {
		Connection conn = getConnection();
		
		int result1 = new PlaceDao().deletePlace(conn, pno);
		int result2 = new PlaceDao().deletePAttachment(conn, pno);
		
		if(result1 >0 )
		{
			commit(conn);
		}
		else
			rollback(conn);
		close(conn);
		return result1;
	}

	
}
