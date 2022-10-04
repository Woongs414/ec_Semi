package com.spring.ec.common.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.coobird.thumbnailator.Thumbnails;

@Controller
public class FileDownloadController {
	private static String U_IMAGE_REPO = "c:\\board\\u_board_imagefile";
	
	private static String S_IMAGE_REPO = "c:\\board\\s_board_imagefile";

	@RequestMapping("/u_board/download")
	public void userdownload(@RequestParam("image_fileName") String image_fileName, @RequestParam("list_num") String list_num, HttpServletResponse response)
			throws Exception {
		OutputStream out = response.getOutputStream();
		String downFile = U_IMAGE_REPO + "\\" + list_num + "\\" + image_fileName;
		File file = new File(downFile);
		int lastIndex = image_fileName.lastIndexOf(".");
		String fileName = image_fileName.substring(0, lastIndex);
		File thumbnail = new File(U_IMAGE_REPO + "\\" + "thumbnail" + "\\" + fileName + ".png");		
		if(file.exists()) {
			thumbnail.getParentFile().mkdirs();
			Thumbnails.of(file).size(300,700).outputFormat("png").toFile(thumbnail);
		}
		FileInputStream in = new FileInputStream(thumbnail);
		byte[] buffer = new byte[1024 * 8];
		while(true) {
			int count = in.read(buffer);
			if(count == -1) 
				break;
				out.write(buffer, 0, count);		
		}
		in.close();
		out.close();
	}
	
	@RequestMapping("/s_board/download.do")
	public void sellerdownload(@RequestParam("image_fileName") String image_fileName, @RequestParam("list_num") String list_num, HttpServletResponse response)
			throws Exception {
		OutputStream out = response.getOutputStream();
		String downFile = S_IMAGE_REPO + "\\" + list_num + "\\" + image_fileName ;
		File file = new File(downFile);

		response.setHeader("Cache-Control", "no-cache");
		response.addHeader("Content-disposition", "attachment; fileName=" + image_fileName);
		FileInputStream in = new FileInputStream(file);
		byte[] buffer = new byte[1024 * 8];
		while (true) {
			int count = in.read(buffer);
			if (count == -1) {
				break;
			}
			out.write(buffer, 0, count);
		}
		in.close();
		out.close();
	}
}
