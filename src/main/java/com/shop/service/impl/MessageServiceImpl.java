package com.shop.service.impl;

import com.shop.dao.MessageDao;
import com.shop.entity.Message;
import com.shop.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Objects;

@Service
public class MessageServiceImpl extends BaseServiceImpl<Message> implements MessageService {


    @Autowired
    private MessageDao messageDao;

    @Override
    public Message setMessageRead(String userEmail, Long messageID) {

        Message message = messageDao.findById(messageID);
        if(Objects.equals(message.getUser().getEmail(), userEmail)){
            message.setRead(Boolean.TRUE);
        }
        messageDao.update(message);
        return message;
    }

    @Override
    public void deleteMessage(String userEmail, Long messageID) {
        Message message = messageDao.findById(messageID);
        if(Objects.equals(message.getUser().getEmail(), userEmail)){
            messageDao.delete(message);
        }
    }


}
