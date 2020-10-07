package com.kgc.service;

import com.kgc.pojo.Person;

import java.util.List;

public interface PersonService {
    List<Person> selectAll();

    int add(Person person);

    int delByid(Integer id);
}
