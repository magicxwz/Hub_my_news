package com.pc.beans;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

/**
 * 新闻实体类
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class News {
    private Topic topics;
    private List<Comments> comments;
    private int nid;
    private int ntid;
    private String ntitle;
    private String nauthor;
    private Date ncreateDate;
    private String npicPath;
    private String ncontent;
    private Date nmodifyDate;
    private String nsummary;
}
