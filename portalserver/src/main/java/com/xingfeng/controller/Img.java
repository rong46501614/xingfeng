package com.xingfeng.controller;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Iterator;

import javax.imageio.ImageIO;
import javax.imageio.ImageWriter;
import javax.imageio.stream.ImageOutputStream;

public class Img {
	
	public static void main(String[] args) throws Exception {
		getImagePixel("C:/Users/xingfeng/Desktop/img.jpg");
	}

	public static void getImagePixel(String image) throws Exception {  
        int[] rgb = new int[3];
        File file = new File(image);  
        BufferedImage bi = null;  
        try {  
            bi = ImageIO.read(file);  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
        int width = bi.getWidth();  
        int height = bi.getHeight();  
        int minx = bi.getMinX();  
        int miny = bi.getMinY();  
        System.out.println("width=" + width + ",height=" + height + ".");  
        System.out.println("minx=" + minx + ",miniy=" + miny + "."); 
        Color targetColor = new Color(255,0,156,255);
        StringBuffer sb = new StringBuffer();
        
        for (int i = 0; i < width; i++) {  
            for (int j = 0; j < height; j++) { 
                int pixel = bi.getRGB(i, j); // 下面三行代码将一个数字转换为RGB数字  
                rgb[0] = (pixel & 0xff0000) >> 16;  
                rgb[1] = (pixel & 0xff00) >> 8;  
                rgb[2] = (pixel & 0xff);  
                
                
                
                if(rgb[2] == 242){
                	sb.append(0+"\t");
                }else{
                	sb.append(1+"\t");
                }
                
                
                if(rgb[2] >180){
                	bi.setRGB(i,j,targetColor.getRGB());
                }
                
            }
            sb.append("\n");
        }
        
        String path="F:/abc.txt";
        File files=new File(path);
        if(!files.exists())
            files.createNewFile();
        FileOutputStream out=new FileOutputStream(files,false); //如果追加方式用true        
        out.write(sb.toString().getBytes("utf-8"));//注意需要转换对应的字符集
        out.close();
        
        
        
        
        
        
        
        
        
        Iterator<ImageWriter> it = ImageIO.getImageWritersByFormatName("png");//自定义图像格式
        ImageWriter writer = it.next();
        ImageOutputStream ios = ImageIO.createImageOutputStream(new File("F:/123.png"));//自定义图像路径

        writer.setOutput(ios);
        writer.write(bi);
        bi.flush();
        ios.flush();
        
        
        
    }  
}
