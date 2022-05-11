package com.pc.beans;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
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
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")//页面写入数据库时格式化
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",locale = "zh",timezone ="GMT+8")//json 返回格式定义 中国的加8小时 格式严格大小写
    private Date ncreateDate;
    private String npicPath;
    private String ncontent;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date nmodifyDate;
    private String nsummary;
}
