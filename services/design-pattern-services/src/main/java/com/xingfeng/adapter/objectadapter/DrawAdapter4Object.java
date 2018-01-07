package com.xingfeng.adapter.objectadapter;

import com.xingfeng.adapter.classadapter.DrawRectangle;
import com.xingfeng.adapter.classadapter.IDrawCircle;

/** 
 * ������������ ʹ�ö�����ϵķ�ʽ���Ƕ�̬��ϵķ�ʽ�� 
 * ���ܻ������ܻ�Բ 
 * @author stone 
 * DrawAdapter����������DrawRectangle����adapter,�Ǳ������ߣ����������������ߺ�����Ŀ�꣨DrawCircle���������� 
 * 
 */  
public class DrawAdapter4Object implements IDrawCircle {//���ܻ������ܻ�Բ  
      
    private DrawRectangle drawRectangle;  
    public DrawAdapter4Object(DrawRectangle drawRectangle) {  
        this.drawRectangle = drawRectangle;
    }  
      
    public void drawRectangle(String msg) {  
        drawRectangle.drawRectangle(msg);  
    }

    public void drawCircle() {  
        System.out.println("DrawAdapter4Object: drawcircle");  
    }
      
}  