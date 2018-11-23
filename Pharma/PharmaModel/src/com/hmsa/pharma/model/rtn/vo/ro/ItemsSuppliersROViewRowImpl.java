package com.hmsa.pharma.model.rtn.vo.ro;

import com.hmsa.checkpoint.basic.classes.CheckpointViewRowImpl;

import oracle.jbo.Key;
import oracle.jbo.Row;
import oracle.jbo.ViewObject;
import oracle.jbo.domain.Number;
import oracle.jbo.server.ViewObjectImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Nov 16 21:39:24 AST 2018
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class ItemsSuppliersROViewRowImpl extends CheckpointViewRowImpl {
    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    protected enum AttributesEnum {
        RowNumber,
        ItemId,
        ItemName,
        SupplierId,
        SupplierName,
        Exist,
        LkbItemsView;
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        protected int index() {
            return ItemsSuppliersROViewRowImpl.AttributesEnum.firstIndex() + ordinal();
        }

        protected static final int firstIndex() {
            return firstIndex;
        }

        protected static int count() {
            return ItemsSuppliersROViewRowImpl.AttributesEnum.firstIndex() + ItemsSuppliersROViewRowImpl.AttributesEnum
                                                                                                        .staticValues().length;
        }

        protected static final AttributesEnum[] staticValues() {
            if (vals == null) {
                vals = ItemsSuppliersROViewRowImpl.AttributesEnum.values();
            }
            return vals;
        }
    }

    public static final int ROWNUMBER = AttributesEnum.RowNumber.index();
    public static final int ITEMID = AttributesEnum.ItemId.index();
    public static final int ITEMNAME = AttributesEnum.ItemName.index();
    public static final int SUPPLIERID = AttributesEnum.SupplierId.index();
    public static final int SUPPLIERNAME = AttributesEnum.SupplierName.index();
    public static final int EXIST = AttributesEnum.Exist.index();
    public static final int LKBITEMSVIEW = AttributesEnum.LkbItemsView.index();

    /**
     * This is the default constructor (do not remove).
     */
    public ItemsSuppliersROViewRowImpl() {
    }

    /**
     * Gets the attribute value for the calculated attribute RowNumber.
     * @return the RowNumber
     */
    public Number getRowNumber() {
        return (Number) getAttributeInternal(ROWNUMBER);
    }

    /**
     * Gets the attribute value for the calculated attribute ItemId.
     * @return the ItemId
     */
    public Number getItemId() {
        return (Number) getAttributeInternal(ITEMID);
    }

    /**
     * Gets the attribute value for the calculated attribute ItemName.
     * @return the ItemName
     */
    public String getItemName() {
        return (String) getAttributeInternal(ITEMNAME);
    }

    /**
     * Gets the attribute value for the calculated attribute SupplierId.
     * @return the SupplierId
     */
    public Number getSupplierId() {
        return (Number) getAttributeInternal(SUPPLIERID);
    }

    /**
     * Gets the attribute value for the calculated attribute SupplierName.
     * @return the SupplierName
     */
    public String getSupplierName() {
        return (String) getAttributeInternal(SUPPLIERNAME);
    }

    /**
     * Gets the attribute value for the calculated attribute Exist.
     * @return the Exist
     */
    public Boolean getExist() {
        return (Boolean) getAttributeInternal(EXIST);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Exist.
     * @param value value to set the  Exist
     */
    public void setExist(Boolean value) {
        setAttributeInternal(EXIST, value);
        ViewObject vo = this.getApplicationModule().findViewObject("RtnItemsSuppliersView");
        if(value != null && value){
            Row row = vo.createRow();
            row.setAttribute("ItemId", getItemId());
            row.setAttribute("SupplierId", getSupplierId());
            vo.insertRow(row);
        }else{
            Key key = new Key(new Object[] { getItemId(), getSupplierId() });
            Row row = vo.findByKey(key, 1)[0];
            row.remove();
        }
        
    }

    /**
     * Gets the associated <code>CheckpointViewRowImpl</code> using master-detail link LkbItemsView.
     */
    public CheckpointViewRowImpl getLkbItemsView() {
        return (CheckpointViewRowImpl) getAttributeInternal(LKBITEMSVIEW);
    }

    /**
     * Sets the master-detail link LkbItemsView between this object and <code>value</code>.
     */
    public void setLkbItemsView(CheckpointViewRowImpl value) {
        setAttributeInternal(LKBITEMSVIEW, value);
    }
}

