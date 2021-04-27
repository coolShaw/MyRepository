package com.xzh.controller;

import com.xzh.dao.EmpMapper;
import com.xzh.entity.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author xzh
 * @create 2021−04-26
 */

    @Controller
    @RequestMapping("/emp")
    public class EmpController {
        @Autowired
        private EmpMapper empMapper;

        @RequestMapping("/list")
        public String selectAll(Model model) {

            List<Emp> emps = empMapper.selectAll();

            model.addAttribute("emps", emps);

//		/WEB-INF/emp/emp_list.jsp

            return "emp/emp_list";

        }

        @RequestMapping("/toAdd")
        public String toAdd() {

            return "emp/emp_add";

        }

        @RequestMapping("/add")
        public String add(Emp emp) {
            empMapper.insert(emp);

            return "redirect:/emp/list";

        }

        @RequestMapping("/toUpdate")
        public String toUpdate(int id, ModelMap modelMap) {
            Emp emp = empMapper.selectByPrimarykey(id);

            modelMap.addAttribute("emp", emp);
            return "emp/emp_update";

        }

        @RequestMapping("/update")
        public String update(Emp emp) {

            empMapper.update(emp);
            return "redirect:/emp/list";

        }

        @RequestMapping("/delete")
        public String delete(int id) {
            empMapper.delete(id);

            return "redirect:/emp/list";

        }
    }
