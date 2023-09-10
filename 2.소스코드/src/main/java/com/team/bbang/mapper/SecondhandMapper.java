package com.team.bbang.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.team.bbang.domain.ChatRoomDTO;
import com.team.bbang.domain.SecondhandDTO;
import com.team.bbang.domain.SecondhandImgDTO;

public interface SecondhandMapper {

	public List<SecondhandDTO> getList();

	public SecondhandDTO getView(String secondhandseq);

	public void addok(SecondhandDTO dto);

	public void addokImg(SecondhandImgDTO dto);

	public List<SecondhandDTO> searchList(Map<String, String> map);

	public void edit(SecondhandDTO dto);

	public void editImg(List<MultipartFile> images);

	public void editAddImg(SecondhandImgDTO imgDTO);

	public void delImg(String secondhandimgseq);

	public int del(String seq);

	public int delSecondhand(String seq);

	public List<ChatRoomDTO> getChatRoom(Map<String, String> map);

	public List<SecondhandDTO> getMyStore(String memberseq);

	
	
	
}
