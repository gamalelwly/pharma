package com.hmsa.pharma.view.beans;

import com.hmsa.checkpoint.view.utils.CheckpointUtils;

import com.hmsa.pharma.model.cfg.vo.up.CfgDuesAgingViewRowImpl;

import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCIteratorBinding;

import oracle.jbo.Row;
import oracle.jbo.ViewObject;

public class DuesAgingBean {
    public DuesAgingBean() {
    }

    public String validateIntersection() {
        try {
            Boolean duesAgingValidated = (Boolean) CheckpointUtils.executeOperation("validateDuesAgingIntersection");
            if (duesAgingValidated) {
                CheckpointUtils.commit(true);
            }else{
                DCBindingContainer contOfcurrentPage = (DCBindingContainer) CheckpointUtils.getBindingsContOfOtherPage("com_hmsa_pharma_view_cfgDuesAgingPageDef");
                DCIteratorBinding cfgDuesAgingViewIterator = contOfcurrentPage.findIteratorBinding("CfgDuesAgingViewIterator");
                if(cfgDuesAgingViewIterator != null){
                    ViewObject vo = cfgDuesAgingViewIterator.getViewObject();
                    if(vo != null){
                        CfgDuesAgingViewRowImpl cfgDuesAgingViewRowImpl = (CfgDuesAgingViewRowImpl) vo.getCurrentRow();
                        CheckpointUtils.showErrorMessageText("Intersection found in record : "+cfgDuesAgingViewRowImpl.getFromDaysNo()+" And "+cfgDuesAgingViewRowImpl.getToDaysNo());
                        return null;
                    }
                }
            }
        } catch (Exception e) {
            CheckpointUtils.showErrorMessageText(e.getMessage());
        }
        return null;
    }
}
