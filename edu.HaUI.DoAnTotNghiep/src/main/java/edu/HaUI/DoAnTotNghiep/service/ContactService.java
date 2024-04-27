package edu.HaUI.DoAnTotNghiep.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import edu.HaUI.DoAnTotNghiep.entity.ContactEntity;

@Service
public class ContactService extends BaseService<ContactEntity> {

	@Override
	protected Class<ContactEntity> clazz() {
		return ContactEntity.class;
	}

	@Transactional
	public ContactEntity save(ContactEntity contactEntity) {
		return super.saveOrUpdate(contactEntity);
	}

}
