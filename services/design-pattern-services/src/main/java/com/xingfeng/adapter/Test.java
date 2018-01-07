package com.xingfeng.adapter;

import com.xingfeng.adapter.classadapter.DrawAdapter4Class;
import com.xingfeng.adapter.classadapter.DrawRectangle;
import com.xingfeng.adapter.interfaceadapter.DefaultDrawAdapter;
import com.xingfeng.adapter.objectadapter.DrawAdapter4Object;

public class Test {
	 public static void main(String[] args) {  
	        //∂‘œÛ  ≈‰∆˜  
	        DrawAdapter4Object objAdapter = new DrawAdapter4Object(new DrawRectangle());  
	        objAdapter.drawCircle();  
	        objAdapter.drawRectangle(" in DrawAdapter4Object");  
	          
	        System.out.println("--------------");  
	          
	        //¿‡  ≈‰∆˜  
	        DrawAdapter4Class clzAdapter = new DrawAdapter4Class();  
	        clzAdapter.drawCircle();  
	        clzAdapter.drawRectangle("in DrawAdapter4Class");  
	          
	        System.out.println("--------------");  
	          
	        //Ω”ø⁄  ≈‰∆˜  
	        MyDrawAdapter myDrawAdapter = new MyDrawAdapter();  
	        myDrawAdapter.drawCircle();  
	        myDrawAdapter.drawRectangle();  
	    }  
	      
	    static class MyDrawAdapter extends DefaultDrawAdapter {  
	  
	        @Override  
	        public void drawCircle() {  
	            System.out.println("drawCircle in MyDrawAdapter");  
	        }  
	          
	    }  
}
