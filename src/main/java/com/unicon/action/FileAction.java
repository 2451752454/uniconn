package com.unicon.action;

import com.unicon.biz.IuserBiz;
import com.unicon.entity.TB_FILE;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller@RequestMapping("/jsp")
public class FileAction {
    private String contentType;
    private InputStream inputStream;
    private long fileSize;
    private TB_FILE TB_FILE1 = new TB_FILE();
    @Resource
    private IuserBiz userDao;
    private List<TB_FILE> list = null;
    private Map<String,String> map = new HashMap<String,String>();
    private String FILEMANE;
    private String FileName;
//    public String execute() throws IOException, SQLException {
//        System.out.println("调用文档方法...");
//        Object name = ServletActionContext.getRequest().getSession().getAttribute("uname");
//        if(name!=null){
//            TB_FILE TB_FILE = new TB_FILE(null,name.toString());
//            list =  userDao.selectUserFile(TB_FILE);
//        }
//
//return  "success";
//}
//public String selectFile() throws IOException, SQLException {
//    TB_FILE TB_FILE = new TB_FILE(TB_FILE1.getFILENAME(),null);
//    list =  userDao.selectUserFile(TB_FILE);
//    System.out.println("调用文档搜索方法..."+list.size());
//    System.out.println("调用文档搜索方法...");
//    return  "success1";
//}
//    public String downLoad() throws IOException, SQLException {
//        list =  userDao.downLoadFile(FILEMANE);
//        File file1 = new File(list.get(0).getFILEPATH());
//        FileName = file1.getName();
//        fileSize = file1.length();
//        inputStream = new FileInputStream(file1);
//        return  "success2";
//    }

    public String getFileName() {
        return FileName;
    }

    public void setFileName(String fileName) {
        FileName = fileName;
    }

    public List<TB_FILE> getList() {
        return list;
    }

    public void setList(List<TB_FILE> list) {
        this.list = list;
    }

    public TB_FILE getTB_FILE1() {
        return TB_FILE1;
    }

    public void setTB_FILE1(TB_FILE TB_FILE1) {
        this.TB_FILE1 = TB_FILE1;
    }

    public String getFILEMANE() {
        return FILEMANE;
    }

    public void setFILEMANE(String FILEMANE) {
        this.FILEMANE = FILEMANE;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public InputStream getInputStream() {
        return inputStream;
    }

    public void setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    public long getFileSize() {
        return fileSize;
    }

    public void setFileSize(long fileSize) {
        this.fileSize = fileSize;
    }
}
