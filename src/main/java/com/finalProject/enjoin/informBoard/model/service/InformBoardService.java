package com.finalProject.enjoin.informBoard.model.service;


import java.util.ArrayList;

import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;

public interface InformBoardService  {

	

	int insertInform(InformBoard ib, InformBoardFiles ibf, ArrayList<InformBoardFiles> fileList);

	
	

	
	
	
	
}
