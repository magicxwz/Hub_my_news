package com.pc.beans;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Comments {
    private int cid;
    private int cnid;
    private String ccontent;
    private Date cdate;
    private String cip;
    private String cauthor;
}
