package com.unicon.action;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.unicon.tool.VerifyUtil;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.Map;

@Controller@RequestMapping("/jsp")
public class ImageAction {
    private InputStream imageStream;
    @RequestMapping("/image.action")
    public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("那你好");
        Map<String, Object> map = VerifyUtil.createImage();
        BufferedImage image = (BufferedImage) map.get("image");
        HttpSession session = request.getSession();
        session.setAttribute("code", map.get("code"));
        response.setContentType("image/png");
        OutputStream os = response.getOutputStream();
        ImageIO.write(image, "png", os);
        os.flush();
        os.close();//关闭流
    }


    public  String re() throws IOException, SQLException {

        Object name = ServletActionContext.getRequest().getSession().getAttribute("uname");
        if(name!=null){
//            QueryRunner qr = new QueryRunner(ConnectionUtil2.getConnectionUtil().getDataSource());
//            String sql = "select PATH from TB_USER where USERNAME ='"+name+"'";
//            List<TB_USER> list = qr.query(sql, new BeanListHandler<>(TB_USER.class));
//            System.out.println(list.get(0).getPATH());
//            Image ima  =  new ImageIcon(list.get(0).getPATH()).getImage();
//            BufferedImage image = toBufferedImage(ima);
//            imageStream = VerifyUtil.getInputStream(image);

        }


        return "success";
    }
    public BufferedImage toBufferedImage(Image image) {
        if (image instanceof BufferedImage) {
            return (BufferedImage) image;
        }
        image = new ImageIcon(image).getImage();
        boolean hasAlpha = false;
        BufferedImage bimage = null;
        GraphicsEnvironment ge = GraphicsEnvironment
                .getLocalGraphicsEnvironment();
        try {
            int transparency = Transparency.OPAQUE;
            if (hasAlpha) {
                transparency = Transparency.BITMASK;
            }
            GraphicsDevice gs = ge.getDefaultScreenDevice();
            GraphicsConfiguration gc = gs.getDefaultConfiguration();
            bimage = gc.createCompatibleImage(image.getWidth(null), image
                    .getHeight(null), transparency);
        } catch (HeadlessException e) {
        }
        if (bimage == null) {
            int type = BufferedImage.TYPE_INT_RGB;
            if (hasAlpha) {
                type = BufferedImage.TYPE_INT_ARGB;
            }
            bimage = new BufferedImage(image.getWidth(null), image
                    .getHeight(null), type);
        }
        Graphics g = bimage.createGraphics();
        g.drawImage(image, 0, 0, null);
        g.dispose();
        return bimage;
    }




    public InputStream getImageStream() {
        return imageStream;
    }

    public void setImageStream(InputStream imageStream) {
        this.imageStream = imageStream;
    }
}
