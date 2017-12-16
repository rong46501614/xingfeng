package com.xftx.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class Base64ToImg {


	// 图片转化成base64字符�?
	public static String GetImageStr() {// 将图片文件转化为字节数组字符串，并对其进行Base64编码处理
		String imgFile = "C:/Users/Star/Desktop/test.png";// 待处理的图片
		InputStream in = null;
		byte[] data = null;
		// 读取图片字节数组
		try {
			in = new FileInputStream(imgFile);
			data = new byte[in.available()];
			in.read(data);
			in.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 对字节数组Base64编码
		BASE64Encoder encoder = new BASE64Encoder();
		return encoder.encode(data);// 返回Base64编码过的字节数组字符�?
	}

	// base64字符串转化成图片
	@SuppressWarnings("deprecation")
	public static String GenerateImage(String imgStr, HttpServletRequest request, String userId) { // 对字节数组字符串进行Base64解码并生成图�?
		imgStr=imgStr.substring(imgStr.indexOf(",")+1);
		if (imgStr == null) // 图像数据为空
			return null;
		BASE64Decoder decoder = new BASE64Decoder();
		try {
			// Base64解码
			byte[] b = decoder.decodeBuffer(imgStr);
			for (int i = 0; i < b.length; ++i) {
				if (b[i] < 0) {// 调整异常数据
					b[i] += 256;
				}
			}
			String path=request.getRealPath("/item/"+userId+"/userimg");
	        File files=new File(path);
			if(files.isDirectory()||!files.exists()){
				files.mkdirs();
			}
			String imgFilePath = path+"/img.jpg";// 新生成的图片
			OutputStream out = new FileOutputStream(imgFilePath);
			out.write(b);
			out.flush();
			out.close();
			return path+"/img.jpg";
		} catch (Exception e) {
			return null;
		}
	}
}