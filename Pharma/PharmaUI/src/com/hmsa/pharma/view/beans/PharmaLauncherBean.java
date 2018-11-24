package com.hmsa.pharma.view.beans;

import com.hmsa.checkpoint.view.utils.JSFUtils;
import com.hmsa.checkpoint.view.utils.UserInfo;

import java.io.IOException;

import java.util.HashMap;
import java.util.Map;

import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import oracle.adf.view.rich.component.rich.nav.RichLink;

import oracle.jbo.domain.Number;

import oracle.ui.pattern.dynamicShell.TabContext;
import oracle.ui.pattern.dynamicShell.TabContext.TabOverflowException;

public class PharmaLauncherBean {
    public PharmaLauncherBean() {
    }

    public String setUserInfoTestData() {
        UserInfo userInfo = (UserInfo) JSFUtils.resolveExpression("#{userInfo}");
        String username = "هناء سليمان الخلفTEST";
        userInfo.setUserName(username);
        //userInfo.setName("admin");
        userInfo.setUserId(new Number(971));
        //userInfo.setUploadPath("C:");
        // userInfo.setThemeName("mod1skin");
        userInfo.setOrgId(1);
        userInfo.setDeptNo(new Number(5));
        userInfo.setLanguage("AR");
        userInfo.changeLocal();
        userInfo.setSessionId("999999999999");
        //userInfo.setDownloadPath("M://");
        JSFUtils.setExpressionValue("#{sessionScope.userId}", "971");
        //JSFUtils.setExpressionValue("#{sessionScope.deptNo}", "9");
        JSFUtils.setExpressionValue("#{sessionScope.appSessionId}", "999999999999");
        return null;
    }

    public void selectOrCreateNewTab(ActionEvent actionEvent) {
        try {
            RichLink link = (RichLink) actionEvent.getComponent();
            Map map = new HashMap();
            String flowName = link.getAttributes()
                                  .get("flowName")
                                  .toString();
            String flowLoc = link.getAttributes()
                                 .get("flowLoc")
                                 .toString();
            String functionId = ""; // "1177";
            if (link.getAttributes().get("funcId") != null) {
                functionId = link.getAttributes()
                                 .get("funcId")
                                 .toString();
                map.put("funcId", functionId);
            }
            String id = "";
            if (link.getAttributes().get("corDocDetailId") != null) {
                id = link.getAttributes()
                         .get("corDocDetailId")
                         .toString();
                map.put("corDocDetailId", id);
            }
            String masterId = "";
            if (link.getAttributes().get("corDocMasterId") != null) {
                masterId = link.getAttributes()
                               .get("corDocMasterId")
                               .toString();
                map.put("corDocMasterId", masterId);
            }
            TabContext context = TabContext.getCurrentInstance();
            context.addOrSelectTab(flowName, flowLoc, map);
        } catch (TabOverflowException toe) {
            toe.handleDefault();
        }


    }

    public String setFilesPathAction() {
        return null;
    }

    public void openPeriodicaDuesReport(ActionEvent actionEvent) {
        System.out.println("redirecting to the report servlet...");

        try {
            String contextNameIn = FacesContext.getCurrentInstance()
                        .getExternalContext().getApplicationContextPath();
            Map<String, Object> map = FacesContext.getCurrentInstance()
                                                  .getExternalContext()
                                                  .getSessionMap();
            
//            Map param = new HashMap();
//        //            param.put("fromDateParam", "");
//        //            param.put("toDateParam", "");
//        //            param.put("repIds", "1,2,3");
//            
//            map.put("reportPath", "Z:\\Reports\\CustPeriodicalDues_en.jasper");
//            map.put("repParams", param);
//            map.put("dataSource", "pharmaDS");
            
            System.out.println(contextNameIn);
            FacesContext.getCurrentInstance()
                        .getExternalContext()
                        .redirect("http://127.0.0.1:7101/reportviewer/jasperservlet?reportPath=Z:\\Reports\\CustPeriodicalDues_en.jasper&dataSource=pharmaDS");
        } catch (IOException e) {
        }

    }
}
