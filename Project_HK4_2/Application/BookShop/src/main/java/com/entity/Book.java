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
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
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
@Table(name = "book")
@XmlRootElement
@NamedQueries({ @NamedQuery(name = "Book.findAll", query = "SELECT b FROM Book b"),
		@NamedQuery(name = "Book.findByBookId", query = "SELECT b FROM Book b WHERE b.bookId = :bookId"),
		@NamedQuery(name = "Book.findByName", query = "SELECT b FROM Book b WHERE b.name = :name"),
		@NamedQuery(name = "Book.findByImage", query = "SELECT b FROM Book b WHERE b.image = :image"),
		@NamedQuery(name = "Book.findByPrice", query = "SELECT b FROM Book b WHERE b.price = :price"),
		@NamedQuery(name = "Book.findByNumber", query = "SELECT b FROM Book b WHERE b.number = :number"),
		@NamedQuery(name = "Book.findByStatus", query = "SELECT b FROM Book b WHERE b.status = :status"),
		@NamedQuery(name = "Book.findByPublishingYear", query = "SELECT b FROM Book b WHERE b.publishingYear = :publishingYear") })
public class Book implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "book_id")
	private Integer bookId;
	@Basic(optional = false)
	@NotNull
	@Size(min = 1, max = 100)
	@Column(name = "name")
	private String name;
	@Basic(optional = false)
	@NotNull
	@Size(min = 1, max = 100)
	@Column(name = "image")
	private String image;
	@Basic(optional = false)
	@NotNull
	@Column(name = "price")
	private float price;
	@Basic(optional = false)
	@NotNull
	@Column(name = "number")
	private int number;
	@Basic(optional = false)
	@NotNull
	@Column(name = "status")
	private boolean status;
	@Lob
	@Size(max = 65535)
	@Column(name = "description")
	private String description;
	@Basic(optional = false)
	@NotNull
	@Size(min = 1, max = 4)
	@Column(name = "publishing_year")
	private String publishingYear;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "bookId")
	private Collection<Billdetail> billdetailCollection;
	@JoinColumn(name = "author_id", referencedColumnName = "author_id")
	@ManyToOne(optional = false)
	private Author authorId;
	@JoinColumn(name = "category_id", referencedColumnName = "category_id")
	@ManyToOne(optional = false)
	private Category categoryId;
	@JoinColumn(name = "publishing_id", referencedColumnName = "publishing_id")
	@ManyToOne
	private PublishingCompany publishingId;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "bookId")
	private Collection<Comment> commentCollection;

	public Book() {
	}

	public Book(Integer bookId) {
		this.bookId = bookId;
	}

	public Book(Integer bookId, String name, String image, float price, int number, boolean status,
			String publishingYear) {
		this.bookId = bookId;
		this.name = name;
		this.image = image;
		this.price = price;
		this.number = number;
		this.status = status;
		this.publishingYear = publishingYear;
	}

	public Integer getBookId() {
		return bookId;
	}

	public void setBookId(Integer bookId) {
		this.bookId = bookId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPublishingYear() {
		return publishingYear;
	}

	public void setPublishingYear(String publishingYear) {
		this.publishingYear = publishingYear;
	}

	@XmlTransient
	public Collection<Billdetail> getBilldetailCollection() {
		return billdetailCollection;
	}

	public void setBilldetailCollection(Collection<Billdetail> billdetailCollection) {
		this.billdetailCollection = billdetailCollection;
	}

	public Author getAuthorId() {
		return authorId;
	}

	public void setAuthorId(Author authorId) {
		this.authorId = authorId;
	}

	public Category getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Category categoryId) {
		this.categoryId = categoryId;
	}

	public PublishingCompany getPublishingId() {
		return publishingId;
	}

	public void setPublishingId(PublishingCompany publishingId) {
		this.publishingId = publishingId;
	}

	@XmlTransient
	public Collection<Comment> getCommentCollection() {
		return commentCollection;
	}

	public void setCommentCollection(Collection<Comment> commentCollection) {
		this.commentCollection = commentCollection;
	}

	@Override
	public int hashCode() {
		int hash = 0;
		hash += (bookId != null ? bookId.hashCode() : 0);
		return hash;
	}

	@Override
	public boolean equals(Object object) {
		// TODO: Warning - this method won't work in the case the id fields are not set
		if (!(object instanceof Book)) {
			return false;
		}
		Book other = (Book) object;
		if ((this.bookId == null && other.bookId != null)
				|| (this.bookId != null && !this.bookId.equals(other.bookId))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "enitti.Book[ bookId=" + bookId + " ]";
	}

}