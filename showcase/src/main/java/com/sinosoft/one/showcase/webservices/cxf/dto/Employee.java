package com.sinosoft.one.showcase.webservices.cxf.dto;

import javax.xml.bind.annotation.XmlRootElement;
import java.math.BigDecimal;

/**
 * Created with IntelliJ IDEA.
 * User: bin
 * Date: 13-11-25
 * Time: 上午10:50
 * To change this template use File | Settings | File Templates.
 */
public class Employee {

    /*
    年龄
     */
    private int age;
    /*
    名字
     */
    private String name;
    /*
    性别
     */
    private char sex;
    /*
    附件
     */
    private byte[] attachment;
    /*
    薪水
     */
    private double salary;

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public char getSex() {
        return sex;
    }

    public void setSex(char sex) {
        this.sex = sex;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public byte[] getAttachment() {
        return attachment;
    }

    public void setAttachment(byte[] attachment) {
        this.attachment = attachment;
    }

    public Employee(int age, String name, char sex, byte[] attachment, double salary) {
        this.age = age;
        this.name = name;
        this.sex = sex;
        this.attachment = attachment;
        this.salary = salary;
    }
}
