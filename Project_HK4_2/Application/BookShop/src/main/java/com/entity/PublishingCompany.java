/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "publishing_company")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PublishingCompany.findAll", query = "SELECT p FROM PublishingCompany p")
    , @NamedQuery(name = "PublishingCompany.findBypublishingId", query = "SELECT p FROM PublishingCompany p WHERE p.publishingId = :publishingId")})
public class PublishingCompany implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "publishing_id")
    private Integer publishingId;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "publishing_name")
    private String publishingName;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "address")
    private String address;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "description")
    private String description;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "publishingId")
    private Collection<Book> bookCollection;

    public PublishingCompany() {
    }

    public PublishingCompany(Integer publishingId) {
        this.publishingId = publishingId;
    }

    public PublishingCompany(Integer publishingId, String publishingName, String address, String description) {
        this.publishingId = publishingId;
        this.publishingName = publishingName;
        this.address = address;
        this.description = description;
    }

    public Integer getPublishingId() {
        return publishingId;
    }

    public void setpublishingId(Integer publishingId) {
        this.publishingId = publishingId;
    }

    public String getPublishingName() {
        return publishingName;
    }

    public void setPublishingName(String publishingName) {
        this.publishingName = publishingName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @XmlTransient
    public Collection<Book> getBookCollection() {
        return bookCollection;
    }

    public void setBookCollection(Collection<Book> bookCollection) {
        this.bookCollection = bookCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (publishingId != null ? publishingId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PublishingCompany)) {
            return false;
        }
        PublishingCompany other = (PublishingCompany) object;
        if ((this.publishingId == null && other.publishingId != null) || (this.publishingId != null && !this.publishingId.equals(other.publishingId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.PublishingCompany[ publishingId=" + publishingId + " ]";
    }
    
    
}
