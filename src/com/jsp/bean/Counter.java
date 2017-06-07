package com.jsp.bean;

/**
 * Created by ki264 on 2017/6/7.
 */
public class Counter {
    private int count;

    public int getCount() {
        return ++count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
