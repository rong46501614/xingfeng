package com.xftx.utils;

import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Iterator;

import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;

public class OperateImage {
    /** *//** 
     * 对图片裁剪，并把裁剪完的新图片保�? �?
     */
    public static void cut(String srcpath, int x,int y,int width,int height) throws IOException{ 
        FileInputStream is = null ;
        ImageInputStream iis =null ;
        try{   
            //读取图片文件
            is = new FileInputStream(srcpath); 
            /**//*
             * 返回包含�?有当前已注册 ImageReader �? Iterator，这�? ImageReader 
             * 声称能够解码指定格式�? 参数：formatName - 包含非正式格式名�? .
             *（例�? "jpeg" �? "tiff"）等 �? 
             */
            Iterator<ImageReader> it = ImageIO.getImageReadersByFormatName("jpg");  
            ImageReader reader = it.next(); 
            //获取图片�? 
            iis = ImageIO.createImageInputStream(is);
            /**//* 
             * <p>iis:读取�?.true:只向前搜�? </p>.将它标记�? ‘只向前搜索’�??
             * 此设置意味着包含在输入源中的图像将只按顺序读取，可能允许 reader
             *  避免缓存包含与以前已经读取的图像关联的数据的那些输入部分�?
             */
            reader.setInput(iis,true) ;
            /**//* 
             * <p>描述如何对流进行解码的类<p>.用于指定如何在输入时�? Java Image I/O 
             * 框架的上下文中的流转换一幅图像或�?组图像�?�用于特定图像格式的插件
             * 将从�? ImageReader 实现�? getDefaultReadParam 方法中返�? 
             * ImageReadParam 的实例�??  
             */
            
            ImageReadParam param = reader.getDefaultReadParam(); 
            
            /**//*
             * 图片裁剪区域。Rectangle 指定了坐标空间中的一个区域，通过 Rectangle 对象
             * 的左上顶点的坐标（x，y）�?�宽度和高度可以定义这个区域�? 
             */ 
            Rectangle rect = new Rectangle(x, y, width, height); 
            //提供�?�? BufferedImage，将其用作解码像素数据的目标�? 
            param.setSourceRegion(rect); 
            /**//*
             * 使用�?提供�? ImageReadParam 读取通过索引 imageIndex 指定的对象，并将
             * 它作为一个完整的 BufferedImage 返回�?
             */
            BufferedImage bi = reader.read(0,param);                
            //保存新图�? 
            ImageIO.write(bi, "jpg", new File(srcpath));     
        }finally{
            if(is!=null)
               is.close() ;       
            if(iis!=null)
               iis.close();  
        } 
     

    }
}