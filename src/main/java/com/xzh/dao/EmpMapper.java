package com.xzh.dao;

import com.xzh.entity.Emp;

import java.util.List;

/**
 * @author xzh
 * @create 2021−04-26
 */
public interface EmpMapper {
    List<Emp> selectAll();

    Emp selectByPrimarykey(int id);

    void insert(Emp emp);

    void update(Emp emp);

    void delete(int id);
}
