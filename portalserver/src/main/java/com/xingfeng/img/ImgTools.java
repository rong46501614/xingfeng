package com.xingfeng.img;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.imageio.ImageIO;
import javax.imageio.ImageWriter;
import javax.imageio.stream.ImageOutputStream;

public class ImgTools {
	
	public static void writeFilebyString(String content, String filePath) throws Exception {
		File files3 = new File(filePath);
		if (!files3.exists())
			files3.createNewFile();
		FileOutputStream out3 = new FileOutputStream(files3, false);
		out3.write(content.getBytes("utf-8"));
		out3.close();
	}
	
	public static void writeImg(BufferedImage bi, String path) throws IOException {
		Iterator<ImageWriter> it = ImageIO.getImageWritersByFormatName("png");
		ImageWriter writer = it.next();
		ImageOutputStream ios = ImageIO.createImageOutputStream(new File(path));
		writer.setOutput(ios);
		writer.write(bi);
		bi.flush();
		ios.flush();
	}

	public static BufferedImage grayImg(String path) throws IOException {
		BufferedImage bufferedImage = ImageIO.read(new File(path));
		BufferedImage grayImage = new BufferedImage(bufferedImage.getWidth(), bufferedImage.getHeight(),
				bufferedImage.getType());

		for (int i = 0; i < bufferedImage.getWidth(); i++) {
			for (int j = 0; j < bufferedImage.getHeight(); j++) {
				final int color = bufferedImage.getRGB(i, j);
				final int r = (color >> 16) & 0xff;
				final int g = (color >> 8) & 0xff;
				final int b = color & 0xff;
				int gray = (int) (0.3 * r + 0.59 * g + 0.11 * b);
				int newPixel = colorToRGB(255, gray, gray, gray);
				grayImage.setRGB(i, j, newPixel);
			}
		}
		return grayImage;
	}
	
	public static BufferedImage grayImgScale(String path, int value) throws IOException {
		BufferedImage bufferedImage = ImageIO.read(new File(path));
		BufferedImage grayImage = new BufferedImage(bufferedImage.getWidth(), bufferedImage.getHeight(),
				bufferedImage.getType());

		for (int i = 0; i < bufferedImage.getWidth(); i+=value) {
			for (int j = 0; j < bufferedImage.getHeight(); j+=value) {
				try {
					int graySum = 0;
					for (int k = 0; k < value; k++) {
						for (int l = 0; l < value; l++) {
							final int color = bufferedImage.getRGB(i+k, j+l);
							final int r = (color >> 16) & 0xff;
							final int g = (color >> 8) & 0xff;
							final int b = color & 0xff;
							int gray = (int) (0.3 * r + 0.59 * g + 0.11 * b);
							graySum += gray;
						}
					}
					int gray = (int)Math.floor(graySum/Math.pow(value, 2));
					int newPixel = colorToRGB(255, gray, gray, gray);
					for (int k = 0; k < value; k++) {
						for (int l = 0; l < value; l++) {
							grayImage.setRGB(i+k, j+l, newPixel);
						}
					}
					
				} catch (Exception e) {
					value = value -1;
					continue;
				}
			}
		}
		return grayImage;
	}
	
	
	
	
	
	
	
	public static List<List<Integer>> getGrayValue(String path) throws IOException {
		
		List<List<Integer>> rgb = new ArrayList<List<Integer>>();
		BufferedImage bufferedImage = ImageIO.read(new File(path));
		for (int i = 0; i < bufferedImage.getWidth(); i++) {
			List<Integer> list = new ArrayList<Integer>();
			for (int j = 0; j < bufferedImage.getHeight(); j++) {
				final int color = bufferedImage.getRGB(i, j);
				final int r = (color >> 16) & 0xff;
				final int g = (color >> 8) & 0xff;
				final int b = color & 0xff;
				int gray = (int) (0.3 * r + 0.59 * g + 0.11 * b);
				list.add(gray);
			}
			rgb.add(list);
		}
		return rgb;
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
		Color targetColor = new Color(255, 0, 156, 255);
		StringBuffer sb1 = new StringBuffer();
		StringBuffer sb2 = new StringBuffer();
		StringBuffer sb3 = new StringBuffer();
		sb1.append("");
		for (int i = 0; i < width; i++) {
			for (int j = 0; j < height; j++) {
				int pixel = bi.getRGB(i, j);
				rgb[0] = (pixel & 0xff0000) >> 16;
				rgb[1] = (pixel & 0xff00) >> 8;
				rgb[2] = (pixel & 0xff);

				sb1.append(rgb[0] + " ");
				sb2.append(rgb[1] + " ");
				sb3.append(rgb[2] + " ");

				if (rgb[2] > 180) {
					bi.setRGB(i, j, targetColor.getRGB());
				}

			}
			sb1.append("\n");
			sb2.append("\n");
			sb3.append("\n");
		}

		ImgTools.writeFilebyString(sb1.toString(), "F:/abc1.txt");
		ImgTools.writeFilebyString(sb2.toString(), "F:/abc2.txt");
		ImgTools.writeFilebyString(sb3.toString(), "F:/abc3.txt");

		ImgTools.writeImg(bi,"F:/123.png");

	}
	
	private static int colorToRGB(int alpha, int red, int green, int blue) {

		int newPixel = 0;
		newPixel += alpha;
		newPixel = newPixel << 8;
		newPixel += red;
		newPixel = newPixel << 8;
		newPixel += green;
		newPixel = newPixel << 8;
		newPixel += blue;

		return newPixel;

	}
}
