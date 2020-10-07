package com.kgc.service.impl;

import com.github.pagehelper.PageHelper;
import com.kgc.mapper.PersonMapper;
import com.kgc.pojo.Person;
import com.kgc.service.PersonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {
    @Resource
    PersonMapper personMapper;

    @Override
    public List<Person> selectAll() {
        PageHelper.orderBy("id desc");
        List<Person> people = personMapper.selectByExample(null);
        return people;
    }

    @Override
    public int add(Person person) {
        int insert = personMapper.insert(person);
        return insert;
    }

    @Override
    public int delByid(Integer id) {
        int i = personMapper.deleteByPrimaryKey(id);
        return i;
    }
}
