package com.quiz.pojo;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Quiz {

@Id
 private int Srno;
 private String ques;
 private String opt1;
 private String opt2;
 private String opt3;
 private String opt4;
 private String correctopt;
public int getSrno() {
return Srno;
}
public void setSrno(int srno) {
Srno = srno;
}
public String getQues() {
return ques;
}
public void setQues(String ques) {
this.ques = ques;
}
public String getOpt1() {
return opt1;
}
public void setOpt1(String opt1) {
this.opt1 = opt1;
}
public String getOpt2() {
return opt2;
}
public void setOpt2(String opt2) {
this.opt2 = opt2;
}
public String getOpt3() {
return opt3;
}
public void setOpt3(String opt3) {
this.opt3 = opt3;
}
public String getOpt4() {
return opt4;
}
public void setOpt4(String opt4) {
this.opt4 = opt4;
}
public String getCorrectopt() {
return correctopt;
}
public void setCorrectopt(String correctopt) {
this.correctopt = correctopt;
}
}