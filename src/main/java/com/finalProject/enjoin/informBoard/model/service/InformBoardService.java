package com.finalProject.enjoin.informBoard.model.service;

import com.finalProject.enjoin.informBoard.model.exception.InsertInformException;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;

public interface InformBoardService  {

	int insertInform(InformBoard ib, InformBoardFiles ibf) throws InsertInformException;

	
	

	
	
	
	
}
