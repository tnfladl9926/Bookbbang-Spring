package com.team.bbang.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.team.bbang.domain.ChatRoomDTO;
import com.team.bbang.domain.SecondhandDTO;

public interface SecondhandService {

	public List<SecondhandDTO> getList();

	public SecondhandDTO getView(String seq);

	public void addok(SecondhandDTO dto, List<MultipartFile> images, HttpServletRequest req);

	public List<SecondhandDTO> searchList(String word, String condition);

	public void edit(SecondhandDTO dto, List<MultipartFile> images, HttpServletRequest req, String[] data);

	public int delSecondhand(String seq);

	public List<ChatRoomDTO> getChatRoom(String secondhandseq, String memberseq);

	public List<SecondhandDTO> getMyStore(String memberseq);

}
