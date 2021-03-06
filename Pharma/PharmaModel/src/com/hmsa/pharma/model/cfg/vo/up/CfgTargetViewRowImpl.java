package com.hmsa.pharma.model.cfg.vo.up;

import com.hmsa.checkpoint.basic.classes.CheckpointViewRowImpl;
import com.hmsa.pharma.model.cfg.eo.CfgTargetImpl;

import oracle.jbo.RowIterator;
import oracle.jbo.RowSet;
import oracle.jbo.domain.DBSequence;
import oracle.jbo.domain.Date;
import oracle.jbo.domain.Number;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Nov 16 17:37:27 AST 2018
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class CfgTargetViewRowImpl extends CheckpointViewRowImpl {


    public static final int ENTITY_CFGTARGET = 0;

    private void processAmunt() {
        Number value = (Number) getAttributeInternal(TRGQUANTITY);
        if(value != null && getUnitPrice() != null){
            setTrgAmount(value.multiply(getUnitPrice()));
        }
    }

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    protected enum AttributesEnum {
        TrxId,
        ItemId,
        UnitId,
        RepId,
        TrgQuantity,
        TrgAmount,
        CreateDate,
        CreatedBy,
        ModifyDate,
        ModifiedBy,
        TrgId,
        UnitPrice,
        TargetSectionsTotal,
        CfgTargetSectionsView,
        CfgTargetMasterView,
        LkbItemsROView1,
        LkbRepsROView1,
        UnitsOfItemsROView1,
        MonthsNamesROView1;
        private static AttributesEnum[] vals = null;
        ;
        private static final int firstIndex = 0;

        protected int index() {
            return AttributesEnum.firstIndex() + ordinal();
        }

        protected static final int firstIndex() {
            return firstIndex;
        }

        protected static int count() {
            return AttributesEnum.firstIndex() + AttributesEnum.staticValues().length;
        }

        protected static final AttributesEnum[] staticValues() {
            if (vals == null) {
                vals = AttributesEnum.values();
            }
            return vals;
        }
    }


    public static final int TRXID = AttributesEnum.TrxId.index();
    public static final int ITEMID = AttributesEnum.ItemId.index();
    public static final int UNITID = AttributesEnum.UnitId.index();
    public static final int REPID = AttributesEnum.RepId.index();
    public static final int TRGQUANTITY = AttributesEnum.TrgQuantity.index();
    public static final int TRGAMOUNT = AttributesEnum.TrgAmount.index();
    public static final int CREATEDATE = AttributesEnum.CreateDate.index();
    public static final int CREATEDBY = AttributesEnum.CreatedBy.index();
    public static final int MODIFYDATE = AttributesEnum.ModifyDate.index();
    public static final int MODIFIEDBY = AttributesEnum.ModifiedBy.index();
    public static final int TRGID = AttributesEnum.TrgId.index();
    public static final int UNITPRICE = AttributesEnum.UnitPrice.index();
    public static final int TARGETSECTIONSTOTAL = AttributesEnum.TargetSectionsTotal.index();
    public static final int CFGTARGETSECTIONSVIEW = AttributesEnum.CfgTargetSectionsView.index();
    public static final int CFGTARGETMASTERVIEW = AttributesEnum.CfgTargetMasterView.index();
    public static final int LKBITEMSROVIEW1 = AttributesEnum.LkbItemsROView1.index();
    public static final int LKBREPSROVIEW1 = AttributesEnum.LkbRepsROView1.index();
    public static final int UNITSOFITEMSROVIEW1 = AttributesEnum.UnitsOfItemsROView1.index();
    public static final int MONTHSNAMESROVIEW1 = AttributesEnum.MonthsNamesROView1.index();

    /**
     * This is the default constructor (do not remove).
     */
    public CfgTargetViewRowImpl() {
    }

    /**
     * Gets CfgTarget entity object.
     * @return the CfgTarget
     */
    public CfgTargetImpl getCfgTarget() {
        return (CfgTargetImpl) getEntity(ENTITY_CFGTARGET);
    }

    /**
     * Gets the attribute value for TRX_ID using the alias name TrxId.
     * @return the TRX_ID
     */
    public DBSequence getTrxId() {
        return (DBSequence) getAttributeInternal(TRXID);
    }

    /**
     * Sets <code>value</code> as attribute value for TRX_ID using the alias name TrxId.
     * @param value value to set the TRX_ID
     */
    public void setTrxId(DBSequence value) {
        setAttributeInternal(TRXID, value);
    }

    /**
     * Gets the attribute value for ITEM_ID using the alias name ItemId.
     * @return the ITEM_ID
     */
    public Number getItemId() {
        return (Number) getAttributeInternal(ITEMID);
    }

    /**
     * Sets <code>value</code> as attribute value for ITEM_ID using the alias name ItemId.
     * @param value value to set the ITEM_ID
     */
    public void setItemId(Number value) {
        setAttributeInternal(ITEMID, value);
    }

    /**
     * Gets the attribute value for UNIT_ID using the alias name UnitId.
     * @return the UNIT_ID
     */
    public Number getUnitId() {
        return (Number) getAttributeInternal(UNITID);
    }

    /**
     * Sets <code>value</code> as attribute value for UNIT_ID using the alias name UnitId.
     * @param value value to set the UNIT_ID
     */
    public void setUnitId(Number value) {
        setAttributeInternal(UNITID, value);
    }

    /**
     * Gets the attribute value for REP_ID using the alias name RepId.
     * @return the REP_ID
     */
    public Number getRepId() {
        return (Number) getAttributeInternal(REPID);
    }

    /**
     * Sets <code>value</code> as attribute value for REP_ID using the alias name RepId.
     * @param value value to set the REP_ID
     */
    public void setRepId(Number value) {
        setAttributeInternal(REPID, value);
    }

    /**
     * Gets the attribute value for TRG_QUANTITY using the alias name TrgQuantity.
     * @return the TRG_QUANTITY
     */
    public Number getTrgQuantity() {
        return (Number) getAttributeInternal(TRGQUANTITY);
    }

    /**
     * Sets <code>value</code> as attribute value for TRG_QUANTITY using the alias name TrgQuantity.
     * @param value value to set the TRG_QUANTITY
     */
    public void setTrgQuantity(Number value) {
        setAttributeInternal(TRGQUANTITY, value);
        processAmunt();
    }

    /**
     * Gets the attribute value for TRG_AMOUNT using the alias name TrgAmount.
     * @return the TRG_AMOUNT
     */
    public Number getTrgAmount() {
        return (Number) getAttributeInternal(TRGAMOUNT);
    }

    /**
     * Sets <code>value</code> as attribute value for TRG_AMOUNT using the alias name TrgAmount.
     * @param value value to set the TRG_AMOUNT
     */
    public void setTrgAmount(Number value) {
        setAttributeInternal(TRGAMOUNT, value);
    }

    /**
     * Gets the attribute value for CREATE_DATE using the alias name CreateDate.
     * @return the CREATE_DATE
     */
    public Date getCreateDate() {
        return (Date) getAttributeInternal(CREATEDATE);
    }

    /**
     * Sets <code>value</code> as attribute value for CREATE_DATE using the alias name CreateDate.
     * @param value value to set the CREATE_DATE
     */
    public void setCreateDate(Date value) {
        setAttributeInternal(CREATEDATE, value);
    }

    /**
     * Gets the attribute value for CREATED_BY using the alias name CreatedBy.
     * @return the CREATED_BY
     */
    public String getCreatedBy() {
        return (String) getAttributeInternal(CREATEDBY);
    }

    /**
     * Sets <code>value</code> as attribute value for CREATED_BY using the alias name CreatedBy.
     * @param value value to set the CREATED_BY
     */
    public void setCreatedBy(String value) {
        setAttributeInternal(CREATEDBY, value);
    }

    /**
     * Gets the attribute value for MODIFY_DATE using the alias name ModifyDate.
     * @return the MODIFY_DATE
     */
    public Date getModifyDate() {
        return (Date) getAttributeInternal(MODIFYDATE);
    }

    /**
     * Sets <code>value</code> as attribute value for MODIFY_DATE using the alias name ModifyDate.
     * @param value value to set the MODIFY_DATE
     */
    public void setModifyDate(Date value) {
        setAttributeInternal(MODIFYDATE, value);
    }

    /**
     * Gets the attribute value for MODIFIED_BY using the alias name ModifiedBy.
     * @return the MODIFIED_BY
     */
    public String getModifiedBy() {
        return (String) getAttributeInternal(MODIFIEDBY);
    }

    /**
     * Sets <code>value</code> as attribute value for MODIFIED_BY using the alias name ModifiedBy.
     * @param value value to set the MODIFIED_BY
     */
    public void setModifiedBy(String value) {
        setAttributeInternal(MODIFIEDBY, value);
    }

    /**
     * Gets the attribute value for TRG_ID using the alias name TrgId.
     * @return the TRG_ID
     */
    public Number getTrgId() {
        return (Number) getAttributeInternal(TRGID);
    }

    /**
     * Sets <code>value</code> as attribute value for TRG_ID using the alias name TrgId.
     * @param value value to set the TRG_ID
     */
    public void setTrgId(Number value) {
        setAttributeInternal(TRGID, value);
    }

    /**
     * Gets the attribute value for UNIT_PRICE using the alias name UnitPrice.
     * @return the UNIT_PRICE
     */
    public Number getUnitPrice() {
        return (Number) getAttributeInternal(UNITPRICE);
    }

    /**
     * Sets <code>value</code> as attribute value for UNIT_PRICE using the alias name UnitPrice.
     * @param value value to set the UNIT_PRICE
     */
    public void setUnitPrice(Number value) {
        setAttributeInternal(UNITPRICE, value);
    }

    /**
     * Gets the attribute value for TARGET_SECTIONS_TOTAL using the alias name TargetSectionsTotal.
     * @return the TARGET_SECTIONS_TOTAL
     */
    public Number getTargetSectionsTotal() {
        return (Number) getAttributeInternal(TARGETSECTIONSTOTAL);
    }

    /**
     * Sets <code>value</code> as attribute value for TARGET_SECTIONS_TOTAL using the alias name TargetSectionsTotal.
     * @param value value to set the TARGET_SECTIONS_TOTAL
     */
    public void setTargetSectionsTotal(Number value) {
        setAttributeInternal(TARGETSECTIONSTOTAL, value);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link CfgTargetSectionsView.
     */
    public RowIterator getCfgTargetSectionsView() {
        return (RowIterator) getAttributeInternal(CFGTARGETSECTIONSVIEW);
    }

    /**
     * Gets the associated <code>CheckpointViewRowImpl</code> using master-detail link CfgTargetMasterView.
     */
    public CheckpointViewRowImpl getCfgTargetMasterView() {
        return (CheckpointViewRowImpl) getAttributeInternal(CFGTARGETMASTERVIEW);
    }

    /**
     * Sets the master-detail link CfgTargetMasterView between this object and <code>value</code>.
     */
    public void setCfgTargetMasterView(CheckpointViewRowImpl value) {
        setAttributeInternal(CFGTARGETMASTERVIEW, value);
    }

    /**
     * Gets the view accessor <code>RowSet</code> LkbItemsROView1.
     */
    public RowSet getLkbItemsROView1() {
        return (RowSet) getAttributeInternal(LKBITEMSROVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> LkbRepsROView1.
     */
    public RowSet getLkbRepsROView1() {
        return (RowSet) getAttributeInternal(LKBREPSROVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> UnitsOfItemsROView1.
     */
    public RowSet getUnitsOfItemsROView1() {
        return (RowSet) getAttributeInternal(UNITSOFITEMSROVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> MonthsNamesROView1.
     */
    public RowSet getMonthsNamesROView1() {
        return (RowSet) getAttributeInternal(MONTHSNAMESROVIEW1);
    }
}

