/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

import java.io.Serializable;

import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "comment")
@XmlRootElement
@NamedQueries({ @NamedQuery(name = "Comment.findAll", query = "SELECT c FROM Comment c"),
		@NamedQuery(name = "Comment.findByCmtId", query = "SELECT c FROM Comment c WHERE c.cmtId = :cmtId"),
		@NamedQuery(name = "Comment.findByCheckIn", query = "SELECT c FROM Comment c WHERE c.checkIn = :checkIn") })
public class Comment implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "cmt_id")
	private Integer cmtId;
	@Lob
	@Size(max = 65535)
	@Column(name = "content")
	private String content;
	@Column(name = "check_in")
	@Temporal(TemporalType.TIMESTAMP)
	private Date checkIn;
	@JoinColumn(name = "book_id", referencedColumnName = "book_id")
	@ManyToOne(optional = false)
	private Book bookId;
	@JoinColumn(name = "user_id", referencedColumnName = "user_id")
	@ManyToOne(optional = false)
	private User userId;

	public Comment() {
	}

	public Comment(Integer cmtId) {
		this.cmtId = cmtId;
	}

	public Integer getCmtId() {
		return cmtId;
	}

	public void setCmtId(Integer cmtId) {
		this.cmtId = cmtId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	
	public Date getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(Date checkIn) {
		this.checkIn = checkIn;
	}

	public Book getBookId() {
		return bookId;
	}

	public void setBookId(Book bookId) {
		this.bookId = bookId;
	}

	public User getUserId() {
		return userId;
	}

	public void setUserId(User userId) {
		this.userId = userId;
	}

	@Override
	public int hashCode() {
		int hash = 0;
		hash += (cmtId != null ? cmtId.hashCode() : 0);
		return hash;
	}

	@Override
	public boolean equals(Object object) {
		// TODO: Warning - this method won't work in the case the id fields are not set
		if (!(object instanceof Comment)) {
			return false;
		}
		Comment other = (Comment) object;
		if ((this.cmtId == null && other.cmtId != null) || (this.cmtId != null && !this.cmtId.equals(other.cmtId))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "enitti.Comment[ cmtId=" + cmtId + " ]";
	}

}