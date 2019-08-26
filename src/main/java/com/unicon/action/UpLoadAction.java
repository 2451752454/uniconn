package com.unicon.action;

import com.unicon.biz.IuserBiz;
import com.unicon.entity.TB_FILE;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.*;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller@RequestMapping("/jsp")
public class UpLoadAction {
    public File[] file;
    public List<String> fileFileName;
    private Map<String,String> map = new HashMap<String,String>();
    @Resource
    private IuserBiz userDao;
//    public String upload() throws SQLException, IOException {
//
//        String root = ServletActionContext.getRequest().getRealPath("/upload");
//
//        for(int i=0;i<file.length;i++){
//            File file1 = file[i];
//            String path = root+"\\"+fileFileName.get(i);
//            File file2 = new File(path);
//            saveFile(file1,file2);
//            long length = file2.length();
//            String printSize = getPrintSize(length);
//            String suffix = file2.getName().substring(file2.getName().lastIndexOf(".") + 1);
//            Object name = ServletActionContext.getRequest().getSession().getAttribute("uname");
//            if(null!=name){
//                TB_FILE TB_FILE = new TB_FILE(file2.getName(),suffix,printSize,name.toString(),path);
//                int num = userDao.addFile(TB_FILE);
//                if(num>0){
//                    System.out.println("上传成功");
//                    map.put("code","0");
//                }else{
//                    map.put("code","1");
//                }
//            }
//        }
//
//        return "code";
//    }

    public void saveFile(File srcFile, File destFile) {
        try {
            InputStream is = new FileInputStream(srcFile);

            String root = ServletActionContext.getRequest().getRealPath(
                    "/upload");


            OutputStream os = new FileOutputStream(destFile);

            byte[] buffer = new byte[400];

            int length = 0;

            while ((length = is.read(buffer)) > 0) {
                os.write(buffer, 0, length);
                os.flush();
            }
            is.close();
            os.close();

        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
    public  String getPrintSize(long size) {
if (size < 1024) {
    // 如果字节数少于1024，则直接以B为单位，否则先除于1024，后3位因太少无意义
return String.valueOf(size) + "B";
} else {
size = size / 1024;
}
// 如果原字节数除于1024之后，少于1024，则可以直接以KB作为单位
// 因为还没有到达要使用另一个单位的时候
// 接下去以此类推
if (size < 1024) {
return String.valueOf(size) + "KB";
} else {
size = size / 1024;
}
if (size < 1024) {
// 因为如果以MB为单位的话，要保留最后1位小数，
// 因此，把此数乘以100之后再取余
size = size * 100;
return String.valueOf((size / 100)) + "." + String.valueOf((size % 100)) + "MB";
} else {
// 否则如果要以GB为单位的，先除于1024再作同样的处理
size = size * 100 / 1024;
return String.valueOf((size / 100)) + "." + String.valueOf((size % 100)) + "GB";
}
}



    public File[] getFile() {
        return file;
    }

    public void setFile(File[] file) {
        this.file = file;
    }
    public Map<String, String> getMap() {
        return map;
    }

    public void setMap(Map<String, String> map) {
        this.map = map;
    }
}
