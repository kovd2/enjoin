package com.finalProject.enjoin.informBoard.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;

@Repository
public class InformBoardDaoImpl implements InformBoardDao{

	@Override
	public int insertInform(SqlSessionTemplate sqlSession, InformBoard ib, 
			ArrayList<InformBoardFiles> fileList) {
		
		int result=0;
		result=sqlSession.insert("InformBoard.insertInformBoard",ib);
		if(result > 0) {
		
		int Board_no = sqlSession.selectOne("InformBoard.selectBoardNo");
		System.out.println(Board_no);
		/*Map<String, Object> list = new HashMap<String, Object>();
		
		for(int i=0; i<3; i++) {
			
			fileList.get(i).setRefNo(Board_no);
			fileList.get(i).getRefNo();
			fileList.get(i).getFileNo();
			fileList.get(i).getFileExt();
			fileList.get(i).getOriginName();
			fileList.get(i).getUploadName();
			fileList.get(i).getFilesize();
			System.out.println(fileList.get(i));
		}

		list.put("list", fileList);
		
		sqlSession.insert("InformBoard.insertInformFiles", list);
		
		return 1;*/
		
		
			for(int i=0; i<fileList.size(); i++) {
				
				fileList.get(i).setRefNo(Board_no);
				System.out.println("dao:"+fileList.get(i));
				
				sqlSession.insert("InformBoard.insertInformFiles"+i, fileList.get(i));
			}
		}
		
		
		return 1;
	}

}
