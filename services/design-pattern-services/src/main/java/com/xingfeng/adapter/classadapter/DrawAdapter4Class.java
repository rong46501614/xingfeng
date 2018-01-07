package com.xingfeng.adapter.classadapter;

/** 
 * 类适配器 使用对象继承的方式，是静态的定义方式 
 * @author stone 
 * 
 */  
public class DrawAdapter4Class extends DrawRectangle implements IDrawCircle {

	public void drawCircle() {
		System.out.println("DrawAdapter4Class: drawCircle");  
	}
      
}  