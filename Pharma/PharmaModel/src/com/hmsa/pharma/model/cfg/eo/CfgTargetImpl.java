package com.hmsa.pharma.model.cfg.eo;

import com.hmsa.checkpoint.basic.classes.CheckpointEntityImpl;

import oracle.jbo.Key;
import oracle.jbo.Row;
import oracle.jbo.RowIterator;
import oracle.jbo.domain.DBSequence;
import oracle.jbo.domain.Date;
import oracle.jbo.domain.Number;
import oracle.jbo.server.EntityDefImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Nov 16 00:43:12 AST 2018
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class CfgTargetImpl extends CheckpointEntityImpl {
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
        CfgTargetSections,
        CfgTargetMaster;
        private static AttributesEnum[] vals = null;
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
    public static final int CFGTARGETSECTIONS = AttributesEnum.CfgTargetSections.index();
    public static final int CFGTARGETMASTER = AttributesEnum.CfgTargetMaster.index();

    /**
     * This is the default constructor (do not remove).
     */
    public CfgTargetImpl() {
    }

    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        return EntityDefImpl.findDefObject("com.hmsa.pharma.model.cfg.eo.CfgTarget");
    }


    /**
     * Gets the attribute value for TrxId, using the alias name TrxId.
     * @return the value of TrxId
     */
    public DBSequence getTrxId() {
        return (DBSequence) getAttributeInternal(TRXID);
    }

    /**
     * Sets <code>value</code> as the attribute value for TrxId.
     * @param value value to set the TrxId
     */
    public void setTrxId(DBSequence value) {
        setAttributeInternal(TRXID, value);
    }


    /**
     * Gets the attribute value for ItemId, using the alias name ItemId.
     * @return the value of ItemId
     */
    public Number getItemId() {
        return (Number) getAttributeInternal(ITEMID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ItemId.
     * @param value value to set the ItemId
     */
    public void setItemId(Number value) {
        setAttributeInternal(ITEMID, value);
    }

    /**
     * Gets the attribute value for UnitId, using the alias name UnitId.
     * @return the value of UnitId
     */
    public Number getUnitId() {
        return (Number) getAttributeInternal(UNITID);
    }

    /**
     * Sets <code>value</code> as the attribute value for UnitId.
     * @param value value to set the UnitId
     */
    public void setUnitId(Number value) {
        setAttributeInternal(UNITID, value);
    }

    /**
     * Gets the attribute value for RepId, using the alias name RepId.
     * @return the value of RepId
     */
    public Number getRepId() {
        return (Number) getAttributeInternal(REPID);
    }

    /**
     * Sets <code>value</code> as the attribute value for RepId.
     * @param value value to set the RepId
     */
    public void setRepId(Number value) {
        setAttributeInternal(REPID, value);
    }

    /**
     * Gets the attribute value for TrgQuantity, using the alias name TrgQuantity.
     * @return the value of TrgQuantity
     */
    public Number getTrgQuantity() {
        return (Number) getAttributeInternal(TRGQUANTITY);
    }

    /**
     * Sets <code>value</code> as the attribute value for TrgQuantity.
     * @param value value to set the TrgQuantity
     */
    public void setTrgQuantity(Number value) {
        setAttributeInternal(TRGQUANTITY, value);
    }

    /**
     * Gets the attribute value for TrgAmount, using the alias name TrgAmount.
     * @return the value of TrgAmount
     */
    public Number getTrgAmount() {
        return (Number) getAttributeInternal(TRGAMOUNT);
    }

    /**
     * Sets <code>value</code> as the attribute value for TrgAmount.
     * @param value value to set the TrgAmount
     */
    public void setTrgAmount(Number value) {
        setAttributeInternal(TRGAMOUNT, value);
    }

    /**
     * Gets the attribute value for CreateDate, using the alias name CreateDate.
     * @return the value of CreateDate
     */
    public Date getCreateDate() {
        return (Date) getAttributeInternal(CREATEDATE);
    }

    /**
     * Sets <code>value</code> as the attribute value for CreateDate.
     * @param value value to set the CreateDate
     */
    public void setCreateDate(Date value) {
        setAttributeInternal(CREATEDATE, value);
    }

    /**
     * Gets the attribute value for CreatedBy, using the alias name CreatedBy.
     * @return the value of CreatedBy
     */
    public String getCreatedBy() {
        return (String) getAttributeInternal(CREATEDBY);
    }

    /**
     * Sets <code>value</code> as the attribute value for CreatedBy.
     * @param value value to set the CreatedBy
     */
    public void setCreatedBy(String value) {
        setAttributeInternal(CREATEDBY, value);
    }

    /**
     * Gets the attribute value for ModifyDate, using the alias name ModifyDate.
     * @return the value of ModifyDate
     */
    public Date getModifyDate() {
        return (Date) getAttributeInternal(MODIFYDATE);
    }

    /**
     * Sets <code>value</code> as the attribute value for ModifyDate.
     * @param value value to set the ModifyDate
     */
    public void setModifyDate(Date value) {
        setAttributeInternal(MODIFYDATE, value);
    }

    /**
     * Gets the attribute value for ModifiedBy, using the alias name ModifiedBy.
     * @return the value of ModifiedBy
     */
    public String getModifiedBy() {
        return (String) getAttributeInternal(MODIFIEDBY);
    }

    /**
     * Sets <code>value</code> as the attribute value for ModifiedBy.
     * @param value value to set the ModifiedBy
     */
    public void setModifiedBy(String value) {
        setAttributeInternal(MODIFIEDBY, value);
    }

    /**
     * Gets the attribute value for TrgId, using the alias name TrgId.
     * @return the value of TrgId
     */
    public Number getTrgId() {
        return (Number) getAttributeInternal(TRGID);
    }

    /**
     * Sets <code>value</code> as the attribute value for TrgId.
     * @param value value to set the TrgId
     */
    public void setTrgId(Number value) {
        setAttributeInternal(TRGID, value);
    }

    /**
     * Gets the attribute value for UnitPrice, using the alias name UnitPrice.
     * @return the value of UnitPrice
     */
    public Number getUnitPrice() {
        return (Number) getAttributeInternal(UNITPRICE);
    }

    /**
     * Sets <code>value</code> as the attribute value for UnitPrice.
     * @param value value to set the UnitPrice
     */
    public void setUnitPrice(Number value) {
        setAttributeInternal(UNITPRICE, value);
    }

    /**
     * Gets the attribute value for TargetSectionsTotal, using the alias name TargetSectionsTotal.
     * @return the value of TargetSectionsTotal
     */
    public Number getTargetSectionsTotal() {
        return (Number) getAttributeInternal(TARGETSECTIONSTOTAL);
    }

    /**
     * Sets <code>value</code> as the attribute value for TargetSectionsTotal.
     * @param value value to set the TargetSectionsTotal
     */
    public void setTargetSectionsTotal(Number value) {
        setAttributeInternal(TARGETSECTIONSTOTAL, value);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getCfgTargetSections() {
        return (RowIterator) getAttributeInternal(CFGTARGETSECTIONS);
    }

    /**
     * @return the associated entity com.hmsa.checkpoint.basic.classes.CheckpointEntityImpl.
     */
    public CheckpointEntityImpl getCfgTargetMaster() {
        return (CheckpointEntityImpl) getAttributeInternal(CFGTARGETMASTER);
    }

    /**
     * Sets <code>value</code> as the associated entity com.hmsa.checkpoint.basic.classes.CheckpointEntityImpl.
     */
    public void setCfgTargetMaster(CheckpointEntityImpl value) {
        setAttributeInternal(CFGTARGETMASTER, value);
    }

    /**
     * @param trxId key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(DBSequence trxId) {
        return new Key(new Object[] { trxId });
    }


}

