package com.finalProject.enjoin.informBoard.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;

@Repository
public class InformBoardDaoImpl implements InformBoardDao{

	@Override
	public int insertInform(SqlSessionTemplate sqlSession, InformBoard ib, InformBoardFiles ibf,
			ArrayList<InformBoardFiles> fileList) {
		
		
		int result = 0;
		result=sqlSession.insert("InformBoard.insertInformBoard",ib);
		
		int Board_no = sqlSession.selectOne("InformBard.selctBoardNo");
		
		for(int i=1; i<=3; i++) {
			
			fileList.get(i).setRefNo(Board_no);
			fileList.get(i).getRefNo();
			fileList.get(i).getFileNo();
			fileList.get(i).getFileExt();
			fileList.get(i).getOriginName();
			fileList.get(i).getUploadName();
			fileList.get(i).getFilesize();
		}
		return sqlSession.insert("InformBoard.insertInformFiles",fileList);
		
	}

}
