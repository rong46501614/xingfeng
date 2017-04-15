package com.xingfeng.util;

import java.io.File;
import java.io.FileOutputStream;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;


public class Xmlutils {
	
	static Document document;
	
	
	public static void main(String[] args) throws Exception {
		String path="F:/test.xml";
		readTuNiu(path);
		
	}

	
	
	@SuppressWarnings("unchecked")
	public static void readTuNiu(String path) throws Exception{
		SAXReader saxReader=new SAXReader();
		document=saxReader.read(new File(path));
		Element e=document.getRootElement();
		List<Element> list=e.elements("li");
		for (Element element : list) {
			Element el=element.element("div").element("a").element("img");
			
			if (el.attributeValue("data-src")==null) {
				System.out.println(el.attributeValue("src"));
			}else{
				System.out.println(el.attributeValue("data-src"));
			}
			Element els=((Element) element.element("div").elements("div").get(2)).element("a").element("span");
			if (els!=null) {
				System.out.println(els.getText());
			}else{
				System.out.println(((Element) element.element("div").elements("div").get(2)).element("a").getText().replaceAll("(^\\s*)|(\\s*$)",""));
			}
			Element em=element.element("a").element("div").element("span").element("em");
			System.out.println(em.getText());
			Element satis=((Element) element.element("a").element("div").elements("span").get(1));
			System.out.println(satis.getText().replaceAll("(^\\s*)|(\\s*$)",""));
			Element href=element.element("div").element("a");
			System.out.println(href.attributeValue("href"));
			System.out.println("****************************************************************************************************************************************");
		}
	}
	
	
	
	@SuppressWarnings("unchecked")
	public static void list(Element e){
		System.out.println(e.getName()+"	"+e.getText() );
		Iterator<Element> iterator=e.elementIterator();
		while (iterator.hasNext()) {
			Element element=iterator.next();
			list(element);
		}
	}
	
	
	
	@SuppressWarnings("unchecked")
	public static void listitem(Element e) throws Exception{
		
		Iterator<Element> iterator=e.elementIterator();
		while (iterator.hasNext()) {
			Element element=iterator.next();
			System.out.println(element.getName()+"	"+element.attributeValue("Name") );
		}
	}
	
	
	@SuppressWarnings("unchecked")
	public static String src(String path) throws Exception{
		SAXReader saxReader=new SAXReader();
		document=saxReader.read(new File(path));
		Element e=document.getRootElement();
		Iterator<Element> iterator=e.elementIterator();
		String s="";
		while (iterator.hasNext()) {
			Element element=iterator.next();
			System.out.println(element.getName()+"	\n"+element.getText());
			s=element.getText();
		}
		return s;
	}
	
	
	
	
	@SuppressWarnings("deprecation")
	public static void createxml(String date,HttpServletRequest request,String userId) throws Exception{
        Element root = DocumentHelper.createElement("img");  
        Document document = DocumentHelper.createDocument(root);  
        //给根节点添加属性  
        //root.addAttribute("学校", "南大").addAttribute("位置", "江西");  
          
        //给根节点添加孩子节点  
        Element element1 = root.addElement("src");  
        element1.addText(date);  
        //把生成的xml文档存放在硬盘上  true代表是否换行  
        OutputFormat format = new OutputFormat("    ",true);  
        format.setEncoding("utf-8");//设置编码格式  
        String path=request.getRealPath("/item/"+userId+"/userimg");
        File files=new File(path);
		if(files.isDirectory()||!files.exists()){
			files.mkdirs();
		}
        XMLWriter xmlWriter = new XMLWriter(new FileOutputStream(path+"/img.xml"),format);  
      
        xmlWriter.write(document);  
        xmlWriter.close();  
	}
}
