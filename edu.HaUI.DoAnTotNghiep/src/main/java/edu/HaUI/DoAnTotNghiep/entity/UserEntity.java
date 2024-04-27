package edu.HaUI.DoAnTotNghiep.entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_user")
public class UserEntity extends BaseEntity {

	@Column(name = "username", length = 45, nullable = false)
	private String username;

	@Column(name = "password", length = 100, nullable = false)
	private String password;

	@Column(name = "email", length = 45, nullable = false)
	private String email;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "user")
	private Set<SaleOrderEnitity> listSaleOrder = new HashSet<SaleOrderEnitity>();

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "users")
	private List<RoleEntity> roles = new ArrayList<RoleEntity>();

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Set<SaleOrderEnitity> getListSaleOrder() {
		return listSaleOrder;
	}

	public void setListSaleOrder(Set<SaleOrderEnitity> listSaleOrder) {
		this.listSaleOrder = listSaleOrder;
	}

	public List<RoleEntity> getRoles() {
		return roles;
	}

	public void setRoles(List<RoleEntity> roles) {
		this.roles = roles;
	}

	public void addSaleOrder(SaleOrderEnitity saleOrder) {
		listSaleOrder.add(saleOrder);
		saleOrder.setUser(this);
	}

	public void deleteSaleOrderProducts(SaleOrderEnitity saleOrder) {
		listSaleOrder.remove(saleOrder);
		saleOrder.setUser(null);
	}

	public void addRole(RoleEntity role) {
		role.getUsers().add(this);
		roles.add(role);
	}

	public void deleteRole(RoleEntity role) {
		role.getUsers().remove(this);
		roles.remove(role);
	}

}
