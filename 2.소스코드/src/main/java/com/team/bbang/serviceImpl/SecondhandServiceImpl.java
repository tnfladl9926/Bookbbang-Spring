package com.team.bbang.serviceImpl;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.team.bbang.domain.ChatRoomDTO;
import com.team.bbang.domain.SecondhandDTO;
import com.team.bbang.domain.SecondhandImgDTO;
import com.team.bbang.mapper.SecondhandMapper;
import com.team.bbang.service.SecondhandService;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class SecondhandServiceImpl implements SecondhandService {

	@Autowired
	private SecondhandMapper mapper;

	@Override
	public List<SecondhandDTO> getList() {

		List<SecondhandDTO> list = mapper.getList();

		int index = 0;
		for (SecondhandDTO dto : list) {

			int num = Integer.parseInt(dto.getRegdate());

			list.get(index).setHour(num);

			index++;
		}

		return list;
	}

	@Override
	public SecondhandDTO getView(String seq) {

		return mapper.getView(seq);
	}

	@Override
	public List<ChatRoomDTO> getChatRoom(String secondhandseq, String memberseq) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("secondhandseq", secondhandseq);
		map.put("memberseq", memberseq);

		return mapper.getChatRoom(map);
	}

	@Override
	public void addok(SecondhandDTO dto, List<MultipartFile> images, HttpServletRequest req) {

		mapper.addok(dto);

		for (MultipartFile image : images) {
			try {
				UUID uuid = UUID.randomUUID();

				String imagename = uuid + "_" + image.getOriginalFilename();

				// 파일경로로 이동시켜서 저장하기
				image.transferTo(new File(req.getRealPath("/resources/secondhand" + "\\" + imagename)));
				log.info(req.getRealPath("/resources/secondhand") + " 저장된 파일경로");
				SecondhandImgDTO imgDTO = new SecondhandImgDTO();
				imgDTO.setSecondhandimg(imagename);

				mapper.addokImg(imgDTO);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public List<SecondhandDTO> searchList(String word, String condition) {

		Map<String, String> map = new HashMap<String, String>();
		map.put("word", word);
		map.put("condition", condition);

		List<SecondhandDTO> list = mapper.searchList(map);

		int index = 0;
		for (SecondhandDTO dto : list) {
			int num = Integer.parseInt(dto.getRegdate());

			list.get(index).setHour(num);

			index++;
		}
		return list;
	}

	@Override
	public void edit(SecondhandDTO dto, List<MultipartFile> images, HttpServletRequest req, String[] data) {
		System.out.println(dto.getAddress() + "edit address");

		mapper.edit(dto);

		if (images.size() > 0 && images.get(0).getSize() > 0) {
			for (MultipartFile image : images) {
				try {
					UUID uuid = UUID.randomUUID();

					String imagename = uuid + "_" + image.getOriginalFilename();

					// 파일경로로 이동시켜서 저장하기
					image.transferTo(new File(req.getRealPath("/resources/secondhand" + "\\" + imagename)));
					log.info(req.getRealPath("/resources/secondhand"));
					SecondhandImgDTO imgDTO = new SecondhandImgDTO();
					imgDTO.setSecondhandseq(dto.getSecondhandseq());
					imgDTO.setSecondhandimg(imagename);

					mapper.editAddImg(imgDTO);

				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}

		if (data != null) {
			for (String secondhandimgseq : data) {
				mapper.delImg(secondhandimgseq);
			}
		}

	}

	@Override
	public int delSecondhand(String seq) {
		SecondhandDTO dto = mapper.getView(seq);

		for (int i = 0; i < dto.getImgList().size(); i++) {
			String secondhandimgseq = dto.getImgList().get(i).getSecondhandimgseq();
			String filename = "C:\\class\\code\\spring\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\BookBakery\\resources\\secondhand\\"
					+ dto.getImgList().get(i).getSecondhandimg();
			File file = new File(filename);
			mapper.delImg(secondhandimgseq);
			file.delete();

		}

		int result = mapper.delSecondhand(seq);
		return result;
	}

	@Override
	public List<SecondhandDTO> getMyStore(String memberseq) {
		
		List<SecondhandDTO> list = mapper.getMyStore(memberseq);

		int index = 0;
		for (SecondhandDTO dto : list) {

			int num = Integer.parseInt(dto.getRegdate());

			list.get(index).setHour(num);

			index++;
		}
		return list;
	}
}
