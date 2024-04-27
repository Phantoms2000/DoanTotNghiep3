package edu.HaUI.DoAnTotNghiep.entity;

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
@Table(name = "tbl_category")
public class CategoryEntity extends BaseEntity {

	@Column(name = "name", length = 100, nullable = false)
	private String name;

	@Column(name = "description", length = 1000, nullable = false)
	private String description;

	@Column(name = "seo", length = 1000, nullable = true)
	private String seo;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "parent")
	private Set<CategoryEntity> listCategories = new HashSet<CategoryEntity>();

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "parent_id")
	private CategoryEntity parent;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "category")
	private Set<ProductEntity> listProducts = new HashSet<ProductEntity>();

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public Set<CategoryEntity> getListCategories() {
		return listCategories;
	}

	public void setListCategories(Set<CategoryEntity> listCategories) {
		this.listCategories = listCategories;
	}

	public CategoryEntity getParent() {
		return parent;
	}

	public void setParent(CategoryEntity parent) {
		this.parent = parent;
	}

	public Set<ProductEntity> getListProducts() {
		return listProducts;
	}

	public void setListProducts(Set<ProductEntity> listProducts) {
		this.listProducts = listProducts;
	}

	public void addCategory(CategoryEntity category) {
		listCategories.add(category);
		category.setParent(this);
	}

	public void deleteCategory(CategoryEntity category) {
		listCategories.remove(category);
		category.setParent(null);
	}

	public void addProduct(ProductEntity product) {
		listProducts.add(product);
		product.setCategory(this);
	}

	public void deleteProduct(ProductEntity product) {
		listProducts.remove(product);
		product.setCategory(null);
	}

}
