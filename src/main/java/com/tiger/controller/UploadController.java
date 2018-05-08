package com.tiger.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/upload")
public class UploadController {
	private static final int BUFFER_SIZE = 16 * 1024 * 1024;          
	
	@RequestMapping("/toUpload")
	public String toUpload(){
		return "upload/upload2";
	}
	
	@RequestMapping("/toUpload2")
	public String toUpload2(HttpServletRequest request){
		String index1 = request.getParameter("picIndex");
		request.setAttribute("picIndex", index1);
		return "upload/upload";
	}

    @RequestMapping("/upload")
    public String upload(@RequestParam MultipartFile file,String fileIndex, HttpServletRequest request) throws IOException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
        String res = sdf.format(new Date());
        
      // uploads文件夹位置
/*        StringgetServlet rootPath0 = request.getSession().getServletContext().getRealPath("upload");
        
        rootPath = rootPath + "yuhe Maven Webapp/src/main/upload";*/
        String rootPath = request.getServletContext().getRealPath("/upload");
        
        
        // 原始名称
       String originalFileName = file.getOriginalFilename();
        // 新文件名
        final String newFileName = "yuhe" + res + originalFileName.substring(originalFileName.lastIndexOf("."));
        // 新文件
//        File newFile0 = new File(rootPath0 + File.separator + newFileName);
        File newFile = new File(rootPath + File.separator + newFileName);
        // 判断目标文件所在目录是否存在
//        if( !newFile0.getParentFile().exists()) {
//            // 如果目标文件所在的目录不存在，则创建父目录
//            newFile0.getParentFile().mkdirs();
//        }
        if( !newFile.getParentFile().exists()) {
            // 如果目标文件所在的目录不存在，则创建父目录
            newFile.getParentFile().mkdirs();
        }
        
        // 将内存中的数据写入磁盘
        
        file.transferTo(newFile);
//        copy(newFile0,newFile);
        
       /* Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                // TODO Auto-generated method stub
            	try {
					Thumbnails.of(rootPath0 + File.separator + newFileName)   
					.size(200, 300)  
					.watermark(Positions.BOTTOM_RIGHT, ImageIO.read(new File(rootPath0 + File.separator + newFileName)), 0.1f)  
					.outputQuality(0.1).toFile(rootPath0 + File.separator + newFileName);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            }
        }, 0, 1000);*/
        //这边是定义图片存的路径 改路径
//        request.setAttribute("picSrc", "upload/"+newFileName);
        request.setAttribute("picSrc", "upload/"+newFileName);
        request.setAttribute("fileIndex", fileIndex);
        System.out.println("upload/"+newFileName+"**********"+fileIndex);
        return "upload/uploadSuccess";
    }

    
    @SuppressWarnings("unused")
	private static void copy(File src, File dst) 
    {
        InputStream in = null;
        OutputStream out = null;
        try 
        {
            in = new BufferedInputStream(new FileInputStream(src), BUFFER_SIZE);
            out = new BufferedOutputStream(new FileOutputStream(dst),BUFFER_SIZE);
            byte[] buffer = new byte[BUFFER_SIZE];
            int len = 0;
            while ((len = in.read(buffer)) > 0) 
            {
                out.write(buffer, 0, len);
            }
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        } 
        finally
        {
            if (null != in) 
            {
                try 
                {
                    in.close();
                } 
                catch (IOException e) 
                {
                    e.printStackTrace();
                }
            }
            if (null != out) 
            {
                try 
                {
                    out.close();
                } 
                catch (IOException e) 
                {
                    e.printStackTrace();
                }
            }
        }
    }
    
   
}
