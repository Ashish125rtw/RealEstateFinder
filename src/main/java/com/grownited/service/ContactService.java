package com.grownited.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.grownited.entity.ContactEntity;
import com.grownited.repository.ContactRepository;

@Service
public class ContactService {

    @Autowired
    private ContactRepository contactRepository;

    public void saveMessage(ContactEntity contactEntity) {
        contactRepository.save(contactEntity);
    }
}
