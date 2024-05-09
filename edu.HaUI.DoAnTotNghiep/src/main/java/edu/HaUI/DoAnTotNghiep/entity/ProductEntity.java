package edu.HaUI.DoAnTotNghiep.entity;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_product")
public class ProductEntity extends BaseEntity {

	@Column(name = "title", length = 100, nullable = false)
	private String title;

	@Column(name = "price", precision = 13, scale = 2, nullable = false)
	private BigDecimal price;

	@Column(name = "price_sale", precision = 13, scale = 2, nullable = true)
	private BigDecimal priceSale;

	@Column(name = "short_description", length = 3000, nullable = false)
	private String shortDescription;

	@Lob
	@Column(name = "dacdiem", columnDefinition = "LONGTEXT", nullable = false)
	private String dacdiem;

	@Lob
	@Column(name = "ynghia", columnDefinition = "LONGTEXT", nullable = false)
	private String ynghia;

	@Lob
	@Column(name = "tacdung", columnDefinition = "LONGTEXT", nullable = false)
	private String tacdung;

	@Lob
	@Column(name = "cachtrong", columnDefinition = "LONGTEXT", nullable = false)
	private String cachtrong;

	@Lob
	@Column(name = "cachchamsoc", columnDefinition = "LONGTEXT", nullable = false)
	private String cachchamsoc;

	@Column(name = "avatar", length = 200, nullable = true)
	private String avatar;

	@Column(name = "seo", length = 1000, nullable = true)
	private String seo;

	@Column(name = "is_hot", nullable = true)
	private Boolean isHot;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id")
	private CategoryEntity category;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "product")
	private Set<ProductImageEntity> listProductImages = new HashSet<ProductImageEntity>();

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "product2")
	private Set<SaleOrderProductEntity> listSaleOrderProduct = new HashSet<SaleOrderProductEntity>();

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getPriceSale() {
		return priceSale;
	}

	public void setPriceSale(BigDecimal priceSale) {
		this.priceSale = priceSale;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getDacdiem() {
		return dacdiem;
	}

	public void setDacdiem(String dacdiem) {
		this.dacdiem = dacdiem;
	}

	public String getYnghia() {
		return ynghia;
	}

	public void setYnghia(String ynghia) {
		this.ynghia = ynghia;
	}

	public String getTacdung() {
		return tacdung;
	}

	public void setTacdung(String tacdung) {
		this.tacdung = tacdung;
	}

	public String getCachtrong() {
		return cachtrong;
	}

	public void setCachtrong(String cachtrong) {
		this.cachtrong = cachtrong;
	}

	public String getCachchamsoc() {
		return cachchamsoc;
	}

	public void setCachchamsoc(String cachchamsoc) {
		this.cachchamsoc = cachchamsoc;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public Boolean getIsHot() {
		return isHot;
	}

	public void setIsHot(Boolean isHot) {
		this.isHot = isHot;
	}

	public CategoryEntity getCategory() {
		return category;
	}

	public void setCategory(CategoryEntity category) {
		this.category = category;
	}

	public Set<ProductImageEntity> getListProductImages() {
		return listProductImages;
	}

	public void setListProductImages(Set<ProductImageEntity> listProductImages) {
		this.listProductImages = listProductImages;
	}

	public Set<SaleOrderProductEntity> getListSaleOrderProduct() {
		return listSaleOrderProduct;
	}

	public void setListSaleOrderProduct(Set<SaleOrderProductEntity> listSaleOrderProduct) {
		this.listSaleOrderProduct = listSaleOrderProduct;
	}

	public void addProductImages(ProductImageEntity productImage) {
		listProductImages.add(productImage);
		productImage.setProduct(this);
	}

	public void deleteProductImages(ProductImageEntity productImage) {
		listProductImages.remove(productImage);
		productImage.setProduct(null);
	}

	public void addSaleOrderProduct(SaleOrderProductEntity saleorderproduct) {
		listSaleOrderProduct.add(saleorderproduct);
		saleorderproduct.setProduct2(this);
	}

	public void deleteSaleOrderProduct(SaleOrderProductEntity saleorderproduct) {
		listSaleOrderProduct.remove(saleorderproduct);
		saleorderproduct.setProduct2(this);
	}

}
