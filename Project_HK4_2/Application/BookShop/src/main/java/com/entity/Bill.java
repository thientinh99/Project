/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "bill")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Bill.findAll", query = "SELECT b FROM Bill b")
    , @NamedQuery(name = "Bill.findByBillId", query = "SELECT b FROM Bill b WHERE b.billId = :billId")
    , @NamedQuery(name = "Bill.findBySale", query = "SELECT b FROM Bill b WHERE b.sale = :sale")
    , @NamedQuery(name = "Bill.findByCheckIn", query = "SELECT b FROM Bill b WHERE b.checkIn = :checkIn")})
public class Bill implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "bill_id")
    private Integer billId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "sale")
    private float sale;
    @Basic(optional = false)
    @NotNull
    @Column(name = "check_in")
    @Temporal(TemporalType.DATE)
    private Date checkIn;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "billId")
    private Collection<Billdetail> billdetailCollection;
    @JoinColumn(name = "discount_id", referencedColumnName = "discount_id")
    @ManyToOne(optional = false)
    private Discount discountId;
    @JoinColumn(name = "customer_id", referencedColumnName = "user_id")
    @ManyToOne(optional = false)
    private User customerId;
    @JoinColumn(name = "employee_id", referencedColumnName = "user_id")
    @ManyToOne(optional = false)
    private User employeeId;

    public Bill() {
    }

    public Bill(Integer billId) {
        this.billId = billId;
    }

    public Bill(Integer billId, float sale, Date checkIn) {
        this.billId = billId;
        this.sale = sale;
        this.checkIn = checkIn;
    }

    public Integer getBillId() {
        return billId;
    }

    public void setBillId(Integer billId) {
        this.billId = billId;
    }

    public float getSale() {
        return sale;
    }

    public void setSale(float sale) {
        this.sale = sale;
    }

    public Date getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(Date checkIn) {
        this.checkIn = checkIn;
    }

    @XmlTransient
    public Collection<Billdetail> getBilldetailCollection() {
        return billdetailCollection;
    }

    public void setBilldetailCollection(Collection<Billdetail> billdetailCollection) {
        this.billdetailCollection = billdetailCollection;
    }

    public Discount getDiscountId() {
        return discountId;
    }

    public void setDiscountId(Discount discountId) {
        this.discountId = discountId;
    }

    public User getCustomerId() {
        return customerId;
    }

    public void setCustomerId(User customerId) {
        this.customerId = customerId;
    }

    public User getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(User employeeId) {
        this.employeeId = employeeId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (billId != null ? billId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Bill)) {
            return false;
        }
        Bill other = (Bill) object;
        if ((this.billId == null && other.billId != null) || (this.billId != null && !this.billId.equals(other.billId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Bill[ billId=" + billId + " ]";
    }
    
}
