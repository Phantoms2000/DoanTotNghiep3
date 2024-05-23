package edu.HaUI.DoAnTotNghiep.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_saleorder_product")
public class SaleOrderProductEntity extends BaseEntity {

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "product_id")
	private ProductEntity product2;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "saleorder_id")
	private SaleOrderEntity sale_order;

	@Column(name = "quality", nullable = false)
	private Integer quality;

	public Integer getQuality() {
		return quality;
	}

	public void setQuality(Integer quality) {
		this.quality = quality;
	}

	public ProductEntity getProduct2() {
		return product2;
	}

	public void setProduct2(ProductEntity product2) {
		this.product2 = product2;
	}

	public SaleOrderEntity getSale_order() {
		return sale_order;
	}

	public void setSale_order(SaleOrderEntity sale_order) {
		this.sale_order = sale_order;
	}

}
