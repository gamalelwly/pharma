package view.servlets;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import java.sql.Connection;

import java.util.HashMap;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;

import javax.servlet.*;
import javax.servlet.http.*;

import javax.sql.DataSource;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.type.WhenNoDataTypeEnum;
import net.sf.jasperreports.engine.util.JRLoader;

public class JasperServlet extends HttpServlet {
    private static final String CONTENT_TYPE = "text/html; charset=UTF-8";

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)  {
        Connection conn = null;
        
        try {
            String repPath = "TargetVsAchievedRep.jasper";
            Map param = new HashMap();
            param.put("fromDateParam", "");
            param.put("toDateParam", "");
            param.put("repIds", "1,2,3");

            response.setHeader("Cache-Control", "max-age=0");
            response.setContentType("application/pdf");
            String path = "http://127.0.0.1:7101" + request.getContextPath() + "/reports/" + repPath;
            
            InputStream fs = new FileInputStream(new File(getServletConfig().getServletContext().getRealPath("/reports/" + repPath
                                                                                                             )));
            
            ServletOutputStream out = response.getOutputStream();
//            InputStream fs = new FileInputStream(new File(path));
            //            context.getResourceAsStream("/reports/" +
            //                                        repPath); //we will put the report under folder "reports" under Web Content
            JasperReport template = (JasperReport) JRLoader.loadObject(fs);
            template.setWhenNoDataType(WhenNoDataTypeEnum.ALL_SECTIONS_NO_DETAIL);
            conn = getConnection();
            JasperPrint print = JasperFillManager.fillReport(template, param, conn);
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            JasperExportManager.exportReportToPdfStream(print, baos);
            out.write(baos.toByteArray());
            out.flush();
            out.close();
        } catch (JRException jre) {
            // TODO: Add catch code
            jre.printStackTrace();
        } catch (FileNotFoundException fnfe) {
            // TODO: Add catch code
            fnfe.printStackTrace();
        } catch (Exception e) {
            // TODO: Add catch code
            e.printStackTrace();
        } finally {
            close(conn);
        }
    }
    
    public void close(Connection con) {
        if (con != null) {
            try {
                con.close();
            } catch (Exception e) {
            }
        }
    }
    
    public Connection getDataSourceConnection(String dataSourceName) throws Exception {
        Context ctx = new InitialContext();
        DataSource ds = (DataSource) ctx.lookup(dataSourceName);
        return ds.getConnection();
    }
    
    private Connection getConnection() throws Exception {
        return getDataSourceConnection("pharmaDS"); // use datasourse in your application
    }
}
