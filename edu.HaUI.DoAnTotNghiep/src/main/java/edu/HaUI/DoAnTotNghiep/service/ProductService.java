package edu.HaUI.DoAnTotNghiep.service;

import java.io.File;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import edu.HaUI.DoAnTotNghiep.dto.Constants;
import edu.HaUI.DoAnTotNghiep.dto.Search;
import edu.HaUI.DoAnTotNghiep.entity.ProductEntity;
import edu.HaUI.DoAnTotNghiep.entity.ProductImageEntity;

@Service
public class ProductService extends BaseService<ProductEntity> implements Constants {
	@Override
	protected Class<ProductEntity> clazz() {
		return ProductEntity.class;
	}

	private boolean isEmptyUploadFile(MultipartFile[] images) {
		if (images == null || images.length <= 0)
			return true;

		if (images.length == 1 && images[0].getOriginalFilename().isEmpty())
			return true;

		return false;
	}

	private boolean isEmptyUploadFile(MultipartFile image) {
		return image == null || image.getOriginalFilename().isEmpty();
	}

	@Transactional
	public ProductEntity save(ProductEntity productEntity, MultipartFile productAvatar, MultipartFile[] productPictures)
			throws Exception {

		if (!isEmptyUploadFile(productAvatar)) {
			String pathToFile = UPLOAD_FOLDER_ROOT + "product/avatar/" + productAvatar.getOriginalFilename();
			productAvatar.transferTo(new File(pathToFile));
			productEntity.setAvatar("product/avatar/" + productAvatar.getOriginalFilename());
		}

		if (!isEmptyUploadFile(productPictures)) {
			for (MultipartFile pic : productPictures) {
				pic.transferTo(new File(UPLOAD_FOLDER_ROOT + "product/picture/" + pic.getOriginalFilename()));
				ProductImageEntity pi = new ProductImageEntity();
				pi.setPath("product/picture/" + pic.getOriginalFilename());
				pi.setTitle(pic.getOriginalFilename());
				productEntity.addProductImages(pi);
			}
		}

		return super.saveOrUpdate(productEntity);
	}

	@Transactional
	public ProductEntity edit(ProductEntity productEntity, MultipartFile productAvatar, MultipartFile[] productPictures)
			throws Exception {

		ProductEntity productOnDB = super.getById(productEntity.getId());
		if (!isEmptyUploadFile(productAvatar)) {
			new File(UPLOAD_FOLDER_ROOT + productOnDB.getAvatar()).delete();
			productAvatar
					.transferTo(new File(UPLOAD_FOLDER_ROOT + "product/avatar/" + productAvatar.getOriginalFilename()));
			productEntity.setAvatar("product/avatar/" + productAvatar.getOriginalFilename());
		} else {
			productEntity.setAvatar(productOnDB.getAvatar());
		}

		if (!isEmptyUploadFile(productPictures)) {
			for (MultipartFile pic : productPictures) {
				pic.transferTo(new File(UPLOAD_FOLDER_ROOT + "product/picture/" + pic.getOriginalFilename()));
				ProductImageEntity pi = new ProductImageEntity();
				pi.setPath("product/picture/" + pic.getOriginalFilename());
				pi.setTitle(pic.getOriginalFilename());
				productEntity.addProductImages(pi);
			}
		}

		return super.saveOrUpdate(productEntity);
	}

	public List<ProductEntity> search(Search search) {
		String sql = "SELECT * FROM tbl_product p WHERE 1=1";
		if (!StringUtils.isEmpty(search.getKeyword())) {
			sql += " and (p.title like '%" + search.getKeyword() + "%')";
		}
		return executeNativeSql(sql, search.getPage());
	}
	
}
