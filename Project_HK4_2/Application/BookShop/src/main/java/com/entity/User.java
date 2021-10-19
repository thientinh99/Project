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
@Table(name = "user")
@XmlRootElement
@NamedQueries({ @NamedQuery(name = "User.findAll", query = "SELECT u FROM User u"),
		@NamedQuery(name = "User.findByUserId", query = "SELECT u FROM User u WHERE u.userId = :userId"),
		@NamedQuery(name = "User.findByUsername", query = "SELECT u FROM User u WHERE u.username = :username"),
		@NamedQuery(name = "User.findByPassword", query = "SELECT u FROM User u WHERE u.password = :password"),
		@NamedQuery(name = "User.findByName", query = "SELECT u FROM User u WHERE u.name = :name"),
		@NamedQuery(name = "User.findByAge", query = "SELECT u FROM User u WHERE u.age = :age"),
		@NamedQuery(name = "User.findByAddress", query = "SELECT u FROM User u WHERE u.address = :address"),
		@NamedQuery(name = "User.findByGender", query = "SELECT u FROM User u WHERE u.gender = :gender"),
		@NamedQuery(name = "User.findByStatus", query = "SELECT u FROM User u WHERE u.status = :status") })
public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "user_id")
	private Integer userId;
	@Basic(optional = false)
	@NotNull
	@Size(min = 1, max = 50)
	@Column(name = "username")
	private String username;
	@Basic(optional = false)
	@NotNull
	@Size(min = 1, max = 50)
	@Column(name = "password")
	private String password;
	@Basic(optional = false)
	@NotNull
	@Size(min = 1, max = 50)
	@Column(name = "name")
	private String name;
	@Basic(optional = false)
	@NotNull
	@Column(name = "age")
	private int age;
	@Basic(optional = false)
	@NotNull
	@Size(min = 1, max = 100)
	@Column(name = "address")
	private String address;
	@Basic(optional = false)
	@NotNull
	@Column(name = "gender")
	private boolean gender;
	@Basic(optional = false)
	@NotNull
	@Column(name = "status")
	private boolean status;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "customerId")
	private Collection<Bill> billCollection;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "employeeId")
	private Collection<Bill> billCollection1;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "userId")
	private Collection<Comment> commentCollection;
	@JoinColumn(name = "role_id", referencedColumnName = "role_id")
	@ManyToOne(optional = false)
	private Role roleId;

	public User() {
	}

	public User(Integer userId) {
		this.userId = userId;
	}

	public User(Integer userId, String username, String password, String name, int age, String address, boolean gender,
			boolean status) {
		this.userId = userId;
		this.username = username;
		this.password = password;
		this.name = name;
		this.age = age;
		this.address = address;
		this.gender = gender;
		this.status = status;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public boolean getGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@XmlTransient
	public Collection<Bill> getBillCollection() {
		return billCollection;
	}

	public void setBillCollection(Collection<Bill> billCollection) {
		this.billCollection = billCollection;
	}

	@XmlTransient
	public Collection<Bill> getBillCollection1() {
		return billCollection1;
	}

	public void setBillCollection1(Collection<Bill> billCollection1) {
		this.billCollection1 = billCollection1;
	}

	@XmlTransient
	public Collection<Comment> getCommentCollection() {
		return commentCollection;
	}

	public void setCommentCollection(Collection<Comment> commentCollection) {
		this.commentCollection = commentCollection;
	}

	public Role getRoleId() {
		return roleId;
	}

	public void setRoleId(Role roleId) {
		this.roleId = roleId;
	}

	@Override
	public int hashCode() {
		int hash = 0;
		hash += (userId != null ? userId.hashCode() : 0);
		return hash;
	}

	@Override
	public boolean equals(Object object) {
		// TODO: Warning - this method won't work in the case the id fields are not set
		if (!(object instanceof User)) {
			return false;
		}
		User other = (User) object;
		if ((this.userId == null && other.userId != null)
				|| (this.userId != null && !this.userId.equals(other.userId))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "enitti.User[ userId=" + userId + " ]";
	}

}
