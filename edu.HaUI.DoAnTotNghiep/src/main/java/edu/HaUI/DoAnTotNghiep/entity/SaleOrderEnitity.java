package edu.HaUI.DoAnTotNghiep.entity;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_saleorder")
public class SaleOrderEnitity extends BaseEntity {

	@Column(name = "code", length = 45, nullable = false)
	private String code;

	@Column(name = "total", precision = 13, scale = 2, nullable = true)
	private BigDecimal total;

	@Column(name = "customer_name", length = 100, nullable = true)
	private String customerName;

	@Column(name = "customer_address", length = 100, nullable = true)
	private String customerAddress;

	@Column(name = "seo", length = 200, nullable = true)
	private String seo;

	@Column(name = "customer_phone", length = 100, nullable = true)
	private String customerPhone;

	@Column(name = "customer_email", length = 45, nullable = true)
	private String customerEmail;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "sale_order")
	private Set<SaleOrderProductEntity> listSaleOrderProduct = new HashSet<SaleOrderProductEntity>();

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "user_id")
	private UserEntity user;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public Set<SaleOrderProductEntity> getListSaleOrderProduct() {
		return listSaleOrderProduct;
	}

	public void setListSaleOrderProduct(Set<SaleOrderProductEntity> listSaleOrderProduct) {
		this.listSaleOrderProduct = listSaleOrderProduct;
	}

	public UserEntity getUser() {
		return user;
	}

	public void setUser(UserEntity user) {
		this.user = user;
	}

	public void addSaleOrderProducts(SaleOrderProductEntity saleOrderProduct) {
		listSaleOrderProduct.add(saleOrderProduct);
		saleOrderProduct.setSale_order(this);
	}

	public void deleteSaleOrderProducts(SaleOrderProductEntity saleOrderProduct) {
		listSaleOrderProduct.remove(saleOrderProduct);
		saleOrderProduct.setSale_order(null);
	}

}
