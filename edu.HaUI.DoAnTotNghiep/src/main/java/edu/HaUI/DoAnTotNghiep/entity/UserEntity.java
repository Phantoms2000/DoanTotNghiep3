package edu.HaUI.DoAnTotNghiep.entity;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@Entity
@Table(name = "tbl_user")
public class UserEntity extends BaseEntity implements UserDetails {
	private static final long serialVersionUID = 1708887661431239762L;

	@Column(name = "username", length = 45, nullable = false)
	private String username;

	@Column(name = "password", length = 100, nullable = false)
	private String password;

	@Column(name = "email", length = 45, nullable = true)
	private String email;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "user")
	private Set<SaleOrderEntity> listSaleOrder = new HashSet<SaleOrderEntity>();

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "users")
	private Set<RoleEntity> roles = new HashSet<RoleEntity>();

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

	public Set<SaleOrderEntity> getListSaleOrder() {
		return listSaleOrder;
	}

	public void setListSaleOrder(Set<SaleOrderEntity> listSaleOrder) {
		this.listSaleOrder = listSaleOrder;
	}

	public Set<RoleEntity> getRoles() {
		return roles;
	}

	public void setRoles(Set<RoleEntity> roles) {
		this.roles = roles;
	}

	public void addSaleOrder(SaleOrderEntity saleOrder) {
		listSaleOrder.add(saleOrder);
		saleOrder.setUser(this);
	}

	public void deleteSaleOrderProducts(SaleOrderEntity saleOrder) {
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

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return roles;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

}
