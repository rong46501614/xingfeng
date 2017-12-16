package com.xftx.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

public class UploadImg {
	
	
	
	
	/**  
	* @Name: uploadThumbnail
	* @Description: 上传项目主缩略图�?
	* @Author: 张荣瑞（作�?�）
	* @Version: V1.00 （版本号�?
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters:  File file,        上传文件对象
	* 				String userId,    上传用户Id
	* 				String itemName,  上传项目名称
	* 				HttpServletRequest request,
	* 				String fileNames  上传文件名称，用于获取文件扩展名
	* @Return:  String 返回上传的缩略图文件路径 
	*/
	public static String uploadThumbnail(File file,String userId, String itemName,HttpServletRequest request,String fileNames) {
		// TODO Auto-generated method stub
		InputStream is=null;
		OutputStream os=null;
		@SuppressWarnings("deprecation")
		String path=request.getRealPath("/item/"+userId+"/"+itemName+"/Thumbnail");
		System.out.println(path);
		String imgType=GetImgType.getImgType(fileNames);
		try {
			File files=new File(path);
			if(files.isDirectory()||!files.exists()){
				files.mkdirs();
			}
			is=new FileInputStream(file);
			os=new FileOutputStream(path+"/"+itemName+imgType);
			int len=0;
			byte[] bytes=new byte[1024];
			while((len=is.read(bytes))!=-1){
				os.write(bytes,0,len);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				if(os!=null){
					os.close();
				}
				if(is!=null){
					is.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return "item/"+userId+"/"+itemName+"/Thumbnail"+"/"+itemName+imgType;
	}
	
	
	
	/**  
	* @Name: uploadThumbnail
	* @Description: 上传图片�?
	* @Author: 张荣瑞（作�?�）
	* @Version: V1.00 （版本号�?
	* @Create Date: 2016-8-23 （创建日期）
	* @Parameters:  File file,        上传文件对象
	* 				String userId,    上传用户Id
	* 				String itemName,  上传项目名称
	* 				HttpServletRequest request,
	* 				String fileNames  上传文件名称，用于获取文件扩展名
	* @Return:  String 返回上传的缩略图文件路径 
	*/
	public static String uploadImg(File file,String userId, String itemName,HttpServletRequest request,String fileNames){
		// TODO Auto-generated method stub
		InputStream is=null;
		OutputStream os=null;
		String fileName=String.valueOf((Math.random())*10000000);
		@SuppressWarnings("deprecation")
		String path=request.getRealPath("/item/"+userId+"/"+itemName+"/Images");
		System.out.println(path);
		String imgType=GetImgType.getImgType(fileNames);
		try {
			File files=new File(path);
			if(files.isDirectory()||!files.exists()){
				files.mkdirs();
			}
			is=new FileInputStream(file);
			
			os=new FileOutputStream(path+"/"+fileName+imgType);
			int len=0;
			byte[] bytes=new byte[1024];
			while((len=is.read(bytes))!=-1){
				os.write(bytes,0,len);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				if(os!=null){
					os.close();
				}
				if(is!=null){
					is.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		
		return "item/"+userId+"/"+itemName+"/Images"+"/"+fileName+imgType;
	}

}
