package view;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import java.sql.Connection;

import java.util.HashMap;

import java.util.Map;

import javax.faces.context.FacesContext;

import javax.naming.Context;

import javax.naming.InitialContext;

import javax.servlet.ServletContext;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.sql.DataSource;

import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.type.WhenNoDataTypeEnum;
import net.sf.jasperreports.engine.util.JRLoader;


public class JasperBean {
    private String reportPath;
    private String currentContext;

    public JasperBean() {
    }

    public String generate_action() {
        // Add event code here...
//        String repPath = "TargetVsAchievedRep.jasper";
//        Map param = new HashMap();
//        param.put("fromDateParam", "");
//        param.put("toDateParam", "");
//        param.put("repIds", "1,2,3");
//
//        try {
//            runReport(repPath, param);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
        System.out.println("redirecting to the report servlet...");

        try {
            String contextNameIn = FacesContext.getCurrentInstance()
                        .getExternalContext().getApplicationContextPath();
            Map<String, Object> map = FacesContext.getCurrentInstance()
                                                  .getExternalContext()
                                                  .getSessionMap();
            
            Map param = new HashMap();
//            param.put("fromDateParam", "");
//            param.put("toDateParam", "");
//            param.put("repIds", "1,2,3");
            
            map.put("reportPath", "Z:\\Reports\\CustPeriodicalDues_en.jasper");
            map.put("repParams", param);
            map.put("dataSource", "pharmaDS");
            
            System.out.println(contextNameIn);
            FacesContext.getCurrentInstance()
                        .getExternalContext()
                        .redirect(contextNameIn+"/jasperservlet?reportPath="+"Z:\\Reports\\CustPeriodicalDues_en.jasper&"+
                                  "dataSource=pharmaDS");
        } catch (IOException e) {
        }

        return null;
    }

//    public BindingContainer getBindings() {
//        return BindingContext.getCurrent().getCurrentBindingsEntry();
//    }

    public Connection getDataSourceConnection(String dataSourceName) throws Exception {
        Context ctx = new InitialContext();
        DataSource ds = (DataSource) ctx.lookup(dataSourceName);
        return ds.getConnection();
    }

    private Connection getConnection() throws Exception {
        return getDataSourceConnection("pharmaDS"); // use datasourse in your application
    }

    public ServletContext getContext() {
        return (ServletContext) getFacesContext().getExternalContext().getContext();
    }

    public HttpServletResponse getResponse() {
        return (HttpServletResponse) getFacesContext().getExternalContext().getResponse();
    }

    public static FacesContext getFacesContext() {
        return FacesContext.getCurrentInstance();
    }

    public void runReport(String repPath, java.util.Map param) throws Exception {
        Connection conn = null;
        try {
            HttpServletResponse response = getResponse();
            ServletOutputStream out = response.getOutputStream();
            response.setHeader("Cache-Control", "max-age=0");
            response.setContentType("application/pdf");
            ServletContext context = getContext();
            InputStream fs =
                context.getResourceAsStream("/reports/" +
                                            repPath); //we will put the report under folder "reports" under Web Content
            JasperReport template = (JasperReport) JRLoader.loadObject(fs);
            template.setWhenNoDataType(WhenNoDataTypeEnum.ALL_SECTIONS_NO_DETAIL);
            conn = getConnection();
            JasperPrint print = JasperFillManager.fillReport(template, param, conn);
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            JasperExportManager.exportReportToPdfStream(print, baos);
            out.write(baos.toByteArray());
            out.flush();
            out.close();
            FacesContext.getCurrentInstance().responseComplete();
        } catch (Exception jex) {
            jex.printStackTrace();
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

    public void setReportPath(String reportPath) {
        this.reportPath = reportPath;
    }

    public String getReportPath() {
        return reportPath;
    }

    public void setCurrentContext(String currentContext) {
        this.currentContext = currentContext;
    }

    public String getCurrentContext() {
//        FacesContext.getCurrentInstance().getExternalContext().
        return currentContext;
    }
}
