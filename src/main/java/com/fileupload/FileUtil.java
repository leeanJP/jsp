package com.fileupload;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FileUtil {

    //파일 업로드
    public static String uploadFile(HttpServletRequest req, String sDir)
        throws ServletException, IOException {

        //Part 객체를 통해 서버로 전송된 파일명 읽기
        Part part = req.getPart("attachedFile");
        //Part 객체의 헤더값 content-disposition 값 읽기
        String partHeader = part.getHeader("content-disposition");
        //form-data; name="attachedFile"; filename="파일명.확장자"
        System.out.println("partHeader ::: " +partHeader);

        //헤더 값에서 파일명 잘라내기
        String[] phArr = partHeader.split("filename=");
        String originalFileName = phArr[1].trim().replace("\"", "");

        //전송된 파일이 있으면 디렉토리에 저장
        if(!originalFileName.isEmpty()){
            //C://download/filename.확장자
            part.write(sDir + File.separator + originalFileName);
        }
        return originalFileName;
    }

    //파일명 변경
    public static String renameFile(String sDir, String fileName){
        //확장자 잘라내기
        //temp.png
        String ext = fileName.substring(fileName.lastIndexOf("."));

        //날짜_시간.확장자 새로운 파일명 생성
        String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
        String newFileName = now + ext;

        //기존 파일명을 새 파일명으로 변경
        File oldFile = new File(sDir+File.separator+fileName);
        File newFile = new File(sDir+File.separator+newFileName);
        oldFile.renameTo(newFile);

        return newFileName;
    }

}
