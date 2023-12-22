package com.quiz.pojo;
import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Admin {

@Id
private String useremail;
private String userpass;
public String getUseremail() {
return useremail;
}
public String getUserpass() {
return userpass;}}