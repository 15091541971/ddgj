package com.douding.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import net.coobird.thumbnailator.Thumbnails;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class FileUploadUtil {
	/*
	 * 允许的图片类型
	 */
   public static final List<String> ALLOW_TYPE = Arrays.asList(
		  "image/jpeg","image/jpg","image/gif","image/png");
   
   /**
    * 图片重命名
    * @param fileName
    * @return
    */
   public static String rename(String fileName){
	   int i  = fileName.lastIndexOf(".");
	   String str = fileName.substring(i);
	   String uuid = UUID.randomUUID().toString().replaceAll("-", "");
	   String newFileName = uuid+str;
	   return newFileName;
   }
   /**
    * 判断上传的文件类型
    * @param filetype
    * @return
    */
   public  static  boolean allowUpload(String filetype){
	   
	   return ALLOW_TYPE.contains(filetype);
   } 
   /**
    * 缩略图处理
    * @param file
    * @param url
 * @return 
    * @throws IOException
    */
   public static  void isPictureProcessing( File file,String rootPath) throws IOException{
		   Thumbnails.of(file)
           .size(160,160)                                    //压缩后的像素
           .keepAspectRatio(false)
           .outputFormat("jpg")                   //保存后的图片格式
           .toFile(new File(rootPath+UUID.randomUUID().toString()+"_160x160.jpg"));
	   
   }
   /**
    * 图片批量上传工具
    * @param files
    * @param request
    * @param floder
    * @return
    * @throws Exception
    */
   public static  NodeResult picUpload(MultipartFile [] files,HttpServletRequest request,String floder,boolean flag )throws Exception{
	   NodeResult result = new NodeResult();
	   List<String> urlList = new ArrayList<String>();
	  String rootPath = request.getSession().getServletContext().getRealPath(floder);
	   String url = "";
	   for(MultipartFile file:files){
		   if(file.isEmpty()){
			   result.setMsg("上传失败！,文件为空");
			   result.setStatus(7);
		   }else{
			   String fileName = rename(file.getOriginalFilename());  //将文件重命名
			     if(allowUpload(file.getContentType())){                //判断文件类型是否合法
			    	   url = rootPath+"/"+fileName;
			    	   if(flag){
			    		    CommonsMultipartFile cf= (CommonsMultipartFile)file;    //MultipartFile转换为File对象
			    	        DiskFileItem fi = (DiskFileItem)cf.getFileItem(); 
			    	        File f = fi.getStoreLocation();
			    		   isPictureProcessing(f , rootPath+"/");               //保存缩略图
			    	   }else{
			    		   file.transferTo(new File(url));                       //保存文件(大图)
			    	   }
			    	  String  picUrl = floder+fileName;
			    	   urlList.add(picUrl);
			     }else{
			    	 result.setMsg("文件类型不合法");
			    	 result.setStatus(8);
			     }
		   }
	   }
	   result.setCount(urlList);
	   return result;
   }

}
