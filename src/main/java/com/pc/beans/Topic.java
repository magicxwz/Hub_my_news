package com.pc.beans;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 标题主题实体类
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Topic {
    private int tid;
    private String tname;
}
