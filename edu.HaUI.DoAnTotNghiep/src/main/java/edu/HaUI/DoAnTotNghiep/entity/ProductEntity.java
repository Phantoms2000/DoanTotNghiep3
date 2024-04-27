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
	@Column(name = "detail_description", columnDefinition = "LONGTEXT", nullable = false)
	private String detailDescription;

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

	public String getDetailDescription() {
		return detailDescription;
	}

	public void setDetailDescription(String detailDescription) {
		this.detailDescription = detailDescription;
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
