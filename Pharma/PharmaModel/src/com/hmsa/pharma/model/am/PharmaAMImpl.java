package com.hmsa.pharma.model.am;

import com.hmsa.checkpoint.basic.classes.CheckpointApplicationModuleImpl;
import com.hmsa.checkpoint.basic.classes.CheckpointViewObjectImpl;

import com.hmsa.pharma.model.am.common.PharmaAM;

import com.hmsa.pharma.model.cfg.vo.up.CfgDuesAgingViewRowImpl;

import oracle.jbo.Row;
import oracle.jbo.ViewObject;
import oracle.jbo.server.ViewLinkImpl;
import oracle.jbo.server.ViewObjectImpl;
import oracle.jbo.domain.Number;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Thu Nov 15 23:48:06 AST 2018
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class PharmaAMImpl extends CheckpointApplicationModuleImpl implements PharmaAM {
    /**
     * This is the default constructor (do not remove).
     */
    public PharmaAMImpl() {
    }

    /**
     * Container's getter for LkbCustSectionsView.
     * @return LkbCustSectionsView
     */
    public CheckpointViewObjectImpl getLkbCustSectionsView() {
        return (CheckpointViewObjectImpl) findViewObject("LkbCustSectionsView");
    }

    /**
     * Container's getter for LkbCustomersView.
     * @return LkbCustomersView
     */
    public CheckpointViewObjectImpl getLkbCustomersView() {
        return (CheckpointViewObjectImpl) findViewObject("LkbCustomersView");
    }

    /**
     * Container's getter for LkbItemsView.
     * @return LkbItemsView
     */
    public CheckpointViewObjectImpl getLkbItemsView() {
        return (CheckpointViewObjectImpl) findViewObject("LkbItemsView");
    }

    /**
     * Container's getter for LkbJobTitlesView.
     * @return LkbJobTitlesView
     */
    public CheckpointViewObjectImpl getLkbJobTitlesView() {
        return (CheckpointViewObjectImpl) findViewObject("LkbJobTitlesView");
    }

    /**
     * Container's getter for LkbRepsView1.
     * @return LkbRepsView1
     */
    public CheckpointViewObjectImpl getLkbRepsView1() {
        return (CheckpointViewObjectImpl) findViewObject("LkbRepsView1");
    }

    /**
     * Container's getter for LkbManufacturersView.
     * @return LkbManufacturersView
     */
    public CheckpointViewObjectImpl getLkbManufacturersView() {
        return (CheckpointViewObjectImpl) findViewObject("LkbManufacturersView");
    }

    /**
     * Container's getter for LkbItemsView1.
     * @return LkbItemsView1
     */
    public CheckpointViewObjectImpl getLkbItemsView1() {
        return (CheckpointViewObjectImpl) findViewObject("LkbItemsView1");
    }

    /**
     * Container's getter for LkbSuppliersView1.
     * @return LkbSuppliersView1
     */
    public CheckpointViewObjectImpl getLkbSuppliersView1() {
        return (CheckpointViewObjectImpl) findViewObject("LkbSuppliersView1");
    }

    /**
     * Container's getter for LkbRepsView.
     * @return LkbRepsView
     */
    public CheckpointViewObjectImpl getLkbRepsView() {
        return (CheckpointViewObjectImpl) findViewObject("LkbRepsView");
    }

    /**
     * Container's getter for LkbUnitsView.
     * @return LkbUnitsView
     */
    public CheckpointViewObjectImpl getLkbUnitsView() {
        return (CheckpointViewObjectImpl) findViewObject("LkbUnitsView");
    }

    /**
     * Container's getter for LkbSuppliersView.
     * @return LkbSuppliersView
     */
    public CheckpointViewObjectImpl getLkbSuppliersView() {
        return (CheckpointViewObjectImpl) findViewObject("LkbSuppliersView");
    }

    /**
     * Container's getter for CfgDuesAgingView.
     * @return CfgDuesAgingView
     */
    public ViewObject getCfgDuesAgingView() {
        return (ViewObject) findViewObject("CfgDuesAgingView");
    }

    /**
     * Container's getter for CfgItemUnitsMinView.
     * @return CfgItemUnitsMinView
     */
    public ViewObjectImpl getCfgItemUnitsMinView() {
        return (ViewObjectImpl) findViewObject("CfgItemUnitsMinView");
    }

    /**
     * Container's getter for CfgTargetCustomersView.
     * @return CfgTargetCustomersView
     */
    public CheckpointViewObjectImpl getCfgTargetCustomersView() {
        return (CheckpointViewObjectImpl) findViewObject("CfgTargetCustomersView");
    }

    /**
     * Container's getter for CfgTargetSectionsView.
     * @return CfgTargetSectionsView
     */
    public CheckpointViewObjectImpl getCfgTargetSectionsView() {
        return (CheckpointViewObjectImpl) findViewObject("CfgTargetSectionsView");
    }

    /**
     * Container's getter for CfgTargetView.
     * @return CfgTargetView
     */
    public CheckpointViewObjectImpl getCfgTargetView() {
        return (CheckpointViewObjectImpl) findViewObject("CfgTargetView");
    }

    /**
     * Container's getter for CfgTargetSectionsView1.
     * @return CfgTargetSectionsView1
     */
    public CheckpointViewObjectImpl getCfgTargetSectionsView1() {
        return (CheckpointViewObjectImpl) findViewObject("CfgTargetSectionsView1");
    }

    /**
     * Container's getter for CfgTargetCustomersView2.
     * @return CfgTargetCustomersView2
     */
    public CheckpointViewObjectImpl getCfgTargetCustomersView2() {
        return (CheckpointViewObjectImpl) findViewObject("CfgTargetCustomersView2");
    }

    /**
     * Container's getter for LkbRepsR01Link1.
     * @return LkbRepsR01Link1
     */
    public ViewLinkImpl getLkbRepsR01Link1() {
        return (ViewLinkImpl) findViewLink("LkbRepsR01Link1");
    }

    /**
     * Container's getter for LkbItemsR01Link1.
     * @return LkbItemsR01Link1
     */
    public ViewLinkImpl getLkbItemsR01Link1() {
        return (ViewLinkImpl) findViewLink("LkbItemsR01Link1");
    }

    /**
     * Container's getter for LkbSuppliersR01Link1.
     * @return LkbSuppliersR01Link1
     */
    public ViewLinkImpl getLkbSuppliersR01Link1() {
        return (ViewLinkImpl) findViewLink("LkbSuppliersR01Link1");
    }

    /**
     * Container's getter for CfgTargetSectionsR02Link1.
     * @return CfgTargetSectionsR02Link1
     */
    public ViewLinkImpl getCfgTargetSectionsR02Link1() {
        return (ViewLinkImpl) findViewLink("CfgTargetSectionsR02Link1");
    }

    /**
     * Container's getter for CfgTargetCustomersR01Link1.
     * @return CfgTargetCustomersR01Link1
     */
    public ViewLinkImpl getCfgTargetCustomersR01Link1() {
        return (ViewLinkImpl) findViewLink("CfgTargetCustomersR01Link1");
    }
    /**
     * validateDuesAgingIntersection
     * @return Boolean
     */
    public Boolean validateDuesAgingIntersection(){
        Boolean res = true;
        Number previousNo = new Number(0);
        Number currentNo = new Number(0);
        ViewObject cfgDuesAgingView = getCfgDuesAgingView();
        if (cfgDuesAgingView != null && cfgDuesAgingView.getEstimatedRowCount() > 0) {
            cfgDuesAgingView.setQueryMode(ViewObject.QUERY_MODE_SCAN_VIEW_ROWS);
            cfgDuesAgingView.setSortBy("FromDaysNo asc");
            cfgDuesAgingView.executeQuery();
            CfgDuesAgingViewRowImpl first = (CfgDuesAgingViewRowImpl) cfgDuesAgingView.first();
            previousNo = first.getToDaysNo();
            while (cfgDuesAgingView.hasNext()) {
                CfgDuesAgingViewRowImpl current = (CfgDuesAgingViewRowImpl) cfgDuesAgingView.next();
                currentNo = current.getFromDaysNo();
                if (previousNo.compareTo(currentNo) > 0) {
                    return false;
                }
                previousNo = current.getToDaysNo();
            }
        }
        return res;
    }

    /**
     * Container's getter for CfgTargetMasterView.
     * @return CfgTargetMasterView
     */
    public CheckpointViewObjectImpl getCfgTargetMasterView() {
        return (CheckpointViewObjectImpl) findViewObject("CfgTargetMasterView");
    }

    /**
     * Container's getter for ItemsSuppliersROView1.
     * @return ItemsSuppliersROView1
     */
    public CheckpointViewObjectImpl getItemsSuppliersROView1() {
        return (CheckpointViewObjectImpl) findViewObject("ItemsSuppliersROView1");
    }

    /**
     * Container's getter for CfgTargetR04Link1.
     * @return CfgTargetR04Link1
     */
    public ViewLinkImpl getCfgTargetR04Link1() {
        return (ViewLinkImpl) findViewLink("CfgTargetR04Link1");
    }

    /**
     * Container's getter for LkbItemsItemsSuppliersViewLink1.
     * @return LkbItemsItemsSuppliersViewLink1
     */
    public ViewLinkImpl getLkbItemsItemsSuppliersViewLink1() {
        return (ViewLinkImpl) findViewLink("LkbItemsItemsSuppliersViewLink1");
    }

    /**
     * Container's getter for RtnItemsSuppliersView1.
     * @return RtnItemsSuppliersView1
     */
    public CheckpointViewObjectImpl getRtnItemsSuppliersView() {
        return (CheckpointViewObjectImpl) findViewObject("RtnItemsSuppliersView");
    }

    /**
     * Container's getter for RtnRepsCustomersView1.
     * @return RtnRepsCustomersView1
     */
    public CheckpointViewObjectImpl getRtnRepsCustomersView() {
        return (CheckpointViewObjectImpl) findViewObject("RtnRepsCustomersView");
    }

    /**
     * Container's getter for RtnRepsItemsView1.
     * @return RtnRepsItemsView1
     */
    public CheckpointViewObjectImpl getRtnRepsItemsView() {
        return (CheckpointViewObjectImpl) findViewObject("RtnRepsItemsView");
    }
    /**
     * selectAll
     * @param instanceName
     */
    public String selectAll(String instanceName){
        return selectOrRemove(instanceName, true);
    }
    /**
     * removeAll
     * @param instanceName
     * @return
     */
    public String removeAll(String instanceName){
        return selectOrRemove(instanceName, false);
    }
    
    public String selectOrRemove(String instanceName,Boolean selectOrRemove){
        ViewObject vo = this.findViewObject(instanceName);
        if(vo != null && vo.getEstimatedRowCount() > 0){
            Row first = vo.first();
            if (!first.getAttribute("Exist").equals(selectOrRemove)) {
                first.setAttribute("Exist", selectOrRemove);
            }
            while(vo.hasNext()){
                Row next = vo.next();
                if (!next.getAttribute("Exist").equals(selectOrRemove)) {
                    next.setAttribute("Exist", selectOrRemove);
                }
            }
        }
        return null;
    }

    /**
     * Container's getter for RepsCustomersROView1.
     * @return RepsCustomersROView1
     */
    public CheckpointViewObjectImpl getRepsCustomersROView1() {
        return (CheckpointViewObjectImpl) findViewObject("RepsCustomersROView1");
    }

    /**
     * Container's getter for LkbRepsCustCustomersViewLink1.
     * @return LkbRepsCustCustomersViewLink1
     */
    public ViewLinkImpl getLkbRepsCustCustomersViewLink1() {
        return (ViewLinkImpl) findViewLink("LkbRepsCustCustomersViewLink1");
    }

    /**
     * Container's getter for RepsItemsROView1.
     * @return RepsItemsROView1
     */
    public CheckpointViewObjectImpl getRepsItemsROView1() {
        return (CheckpointViewObjectImpl) findViewObject("RepsItemsROView1");
    }

    /**
     * Container's getter for LkbRepsItemsItemsViewLink1.
     * @return LkbRepsItemsItemsViewLink1
     */
    public ViewLinkImpl getLkbRepsItemsItemsViewLink1() {
        return (ViewLinkImpl) findViewLink("LkbRepsItemsItemsViewLink1");
    }

    /**
     * Container's getter for TrxCustPaymentsView1.
     * @return TrxCustPaymentsView1
     */
    public CheckpointViewObjectImpl getTrxCustPaymentsView() {
        return (CheckpointViewObjectImpl) findViewObject("TrxCustPaymentsView");
    }

    /**
     * Container's getter for TrxDailySalesView1.
     * @return TrxDailySalesView1
     */
    public CheckpointViewObjectImpl getTrxDailySalesView() {
        return (CheckpointViewObjectImpl) findViewObject("TrxDailySalesView");
    }

    /**
     * Container's getter for TrxInventoriesView1.
     * @return TrxInventoriesView1
     */
    public CheckpointViewObjectImpl getTrxInventoriesView() {
        return (CheckpointViewObjectImpl) findViewObject("TrxInventoriesView");
    }

    /**
     * Container's getter for RptCustPeriodicalDuesView1.
     * @return RptCustPeriodicalDuesView1
     */
    public CheckpointViewObjectImpl getRptCustPeriodicalDuesAbove90View() {
        return (CheckpointViewObjectImpl) findViewObject("RptCustPeriodicalDuesAbove90View");
    }

    /**
     * Container's getter for RptItemsAlarmView1.
     * @return RptItemsAlarmView1
     */
    public CheckpointViewObjectImpl getRptItemsAlarmView() {
        return (CheckpointViewObjectImpl) findViewObject("RptItemsAlarmView");
    }
}

