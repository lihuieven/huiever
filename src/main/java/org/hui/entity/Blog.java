package org.hui.entity;

import lombok.Data;

import java.util.Date;

@Data
public class Blog {
    /*`blogid` varchar(16) NOT NULL COMMENT 'id',
            `title` varchar(255) NOT NULL COMMENT '标题',
            `content` varchar(255) NOT NULL COMMENT '内容',
            `bloginfo` varchar(255) NOT NULL COMMENT '博客标签',
            `kinds` varchar(16) DEFAULT NULL COMMENT '访问类别',
            `count` varchar(255) NOT NULL COMMENT '访问量',
            `createtime` date NOT NULL COMMENT '发布时间',
            `updatetime` date NOT NULL COMMENT '修改时间',*/
    private String blogid;
    private String title;
    private String content;
    private String bloginfo;
    private String kinds;
    private String count;
    private Date createtime;
    private Date updatetime;
    private String images;
}
