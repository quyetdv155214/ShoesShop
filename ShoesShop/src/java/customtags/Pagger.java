/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package customtags;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author Jic
 */
public class Pagger extends TagSupport {

    private int pageIndex;
    private int totalPage;
    private int step;
    private String href;

    @Override
    public int doStartTag() throws JspException {
        try {
            JspWriter out = pageContext.getOut();
            
            out.write("<ul class=\"pagination\">\n");
            
            if (pageIndex - step > 1) {
                out.write(hyperLink("First", href, 1));
            }

            for (int i = step; i > 0; i--) {
                if (pageIndex - i > 0) {
                    out.write(hyperLink(pageIndex - i + "", href, (pageIndex - i)));
                }
            }

            out.write("<li class=\"active\"><a style=\"margin-left: 10px\" href=\"#\">" + pageIndex + "</a></li>");

            for (int i = 1; i <= step; i++) {
                if (pageIndex + i <= totalPage) {
                    out.write(hyperLink(pageIndex + i + "", href, (pageIndex + i)));
                }
            }

            if (pageIndex + step < totalPage) {
                out.write(hyperLink("Last", href, totalPage));
            }
            
            out.write("</ul>");
        } catch (IOException ex) {
            Logger.getLogger(Pagger.class.getName()).log(Level.SEVERE, null, ex);
        }
        return SKIP_BODY;
    }

    private String hyperLink(String text, String href, int page) {
        String link = "<li> " + "<a style=\"margin-left: 10px\" href=\"" + href + page + "\">" + text + "</a>" + "</li>";
        return link;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getStep() {
        return step;
    }

    public void setStep(int step) {
        this.step = step;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }
}
