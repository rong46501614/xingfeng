package com.xingfeng.img;

import java.awt.image.BufferedImage;
import java.util.List;

public class Img {

	public static void main(String[] args) throws Exception {
		//1. First Gray Img
		BufferedImage grayImgScale = ImgTools.grayImgScale("C:/Users/xingfeng/Desktop/timg.jpg",20);
		ImgTools.writeImg(grayImgScale, "C:/Users/xingfeng/Desktop/timg5.jpg");
	}
}