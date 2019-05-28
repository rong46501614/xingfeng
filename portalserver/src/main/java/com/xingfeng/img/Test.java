package com.xingfeng.img;

import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;


public class Test {

    public static void main(String[] args) throws IOException{
        FingerPrint fp1 = new FingerPrint(ImageIO.read(new File("G:\\DCIM\\100CANON\\IMG_0215.JPG")));
        FingerPrint fp2 =new FingerPrint(ImageIO.read(new File("G:\\DCIM\\100CANON\\IMG_0239.JPG")));
//        System.out.println(fp1.toString(true));
        System.out.printf("sim=%f",fp1.compare(fp2));
    }
}