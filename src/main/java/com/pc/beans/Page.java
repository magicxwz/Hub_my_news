package com.pc.beans;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Page {
    private int pagey;//页
    private int count;//总行数
    private int totalCount;//总页数
}
