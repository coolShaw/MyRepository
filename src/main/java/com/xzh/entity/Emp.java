package com.xzh.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @author xzh
 * @create 2021−04-26
 */
public class Emp {
    private Integer id;
    private String name;
    private Double salary;
    private Double bonus;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date hiredate;

    private Integer deptno;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    public Double getBonus() {
        return bonus;
    }

    public void setBonus(Double bonus) {
        this.bonus = bonus;
    }

    public Date getHiredate() {
        return hiredate;
    }

    public void setHiredate(Date hiredate) {
        this.hiredate = hiredate;
    }

    public Integer getDeptno() {
        return deptno;
    }

    public void setDeptno(Integer deptno) {
        this.deptno = deptno;
    }
}
