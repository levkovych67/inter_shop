package com.shop.dto;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.common.util.impl.LoggerFactory;

@Getter
@Setter

public class CommentDto {

    private String userName;

    private String content;

    public CommentDto() {
    }

    public CommentDto(String userName, String content) {
        this.userName = userName;
        this.content = content;
    }

}
