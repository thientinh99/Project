/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "billdetail")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Billdetail.findAll", query = "SELECT b FROM Billdetail b")
    , @NamedQuery(name = "Billdetail.findByStt", query = "SELECT b FROM Billdetail b WHERE b.stt = :stt")
    , @NamedQuery(name = "Billdetail.findByBookName", query = "SELECT b FROM Billdetail b WHERE b.bookName = :bookName")
    , @NamedQuery(name = "Billdetail.findByCategoryId", query = "SELECT b FROM Billdetail b WHERE b.categoryId = :categoryId")
    , @NamedQuery(name = "Billdetail.findByCategoryName", query = "SELECT b FROM Billdetail b WHERE b.categoryName = :categoryName")
    , @NamedQuery(name = "Billdetail.findByQuantity", query = "SELECT b FROM Billdetail b WHERE b.quantity = :quantity")
    , @NamedQuery(name = "Billdetail.findByPrice", query = "SELECT b FROM Billdetail b WHERE b.price = :price")})
public class Billdetail implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "stt")
    private Integer stt;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "book_name")
    private String bookName;
    @Basic(optional = false)
    @NotNull
    @Column(name = "category_id")
    private int categoryId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "category_name")
    private String categoryName;
    @Basic(optional = false)
    @NotNull
    @Column(name = "quantity")
    private int quantity;
    @Basic(optional = false)
    @NotNull
    @Column(name = "price")
    private float price;
    @JoinColumn(name = "bill_id", referencedColumnName = "bill_id")
    @ManyToOne(optional = false)
    private Bill billId;
    @JoinColumn(name = "book_id", referencedColumnName = "book_id")
    @ManyToOne(optional = false)
    private Book bookId;

    public Billdetail() {
    }

    public Billdetail(Integer stt) {
        this.stt = stt;
    }

    public Billdetail(Integer stt, String bookName, int categoryId, String categoryName, int quantity, float price) {
        this.stt = stt;
        this.bookName = bookName;
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.quantity = quantity;
        this.price = price;
    }

    public Integer getStt() {
        return stt;
    }

    public void setStt(Integer stt) {
        this.stt = stt;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public Bill getBillId() {
        return billId;
    }

    public void setBillId(Bill billId) {
        this.billId = billId;
    }

    public Book getBookId() {
        return bookId;
    }

    public void setBookId(Book bookId) {
        this.bookId = bookId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (stt != null ? stt.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Billdetail)) {
            return false;
        }
        Billdetail other = (Billdetail) object;
        if ((this.stt == null && other.stt != null) || (this.stt != null && !this.stt.equals(other.stt))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Billdetail[ stt=" + stt + " ]";
    }
    
}
