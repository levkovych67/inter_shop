package com.shop.service;

import com.shop.entity.Message;

public interface MessageService extends BaseService<Message>  {


    Message setMessageRead (String userEmail, Long messageID);

    void deleteMessage (String userEmail, Long messageID);
}
