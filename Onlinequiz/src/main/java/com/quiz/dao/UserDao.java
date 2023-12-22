package com.quiz.dao;
import com.quiz.pojo.*;
import java.util.*;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import com.db.util.*;
public class UserDao {
public int addUser(User user) {
int value;
Dbutil dbconn = new Dbutil();
Session session = dbconn.dbConn();
Transaction trans = session.beginTransaction();
String ses = (String) session.save(user);
if (ses != null) {
value = 1;
} else {
value = 0;
}
trans.commit();
session.close();
return value;
}
public String valid(String username, String pass) {
String name = null;
Dbutil dbconn = new Dbutil();
Session session = dbconn.dbConn();
Transaction trans = session.beginTransaction();
System.out.print(username);
String hql = "FROM User U WHERE U.username = :userEmail";
Query query = session.createQuery(hql);
query.setParameter("userEmail", username);
List<User> results = query.list();
for (User use : results) {
if (username.equals(use.getUsername()) && pass.equals(use.getPassword()))
{
name = use.getName();
}
}
trans.commit();
session.close();
return name;
}
public String adminvalid(String username, String pass) {
String name = null;
Dbutil dbconn = new Dbutil();
Session session = dbconn.dbConn();
Transaction trans = session.beginTransaction();
String hql = "FROM Admin a WHERE a.useremail = :userEmail";
Query query = session.createQuery(hql);
query.setParameter("userEmail", username);
List<Admin> results = query.list();
for (Admin admin : results) {
if (username.equals(admin.getUseremail()) &&
pass.equals(admin.getUserpass())) {
String s = admin.getUseremail();
name = s.substring(0, 5);
}
}
trans.commit();
session.close();
return name;
}
/*Add Quiz*/
public int addquiz(String DbName,Quiz quiz) {
int value = 0;
Dbutil dbconn = new Dbutil();
Session session = dbconn.dbConn();
Transaction trans = session.beginTransaction();
session.createSQLQuery("use "+DbName).executeUpdate();
int ses = (Integer) session.save(quiz);
if (ses != 0) {
value = 1;
} else {
value = 0;
}
trans.commit();
session.close();
return value;
}
//Fetch question for the user
public List<Quiz> fetchQues(String DbName) {
// ArrayList<Quiz> list=new ArrayList<Quiz>();
Dbutil dbconn = new Dbutil();
Session session = dbconn.dbConn();
Transaction trans = session.beginTransaction();
session.createSQLQuery("use "+DbName).executeUpdate();
String hql = "FROM Quiz";
Query query = session.createQuery(hql);
List<Quiz> questionList = query.list();
return questionList;
}
 /*Add score table*/
public int addScore(TestScore Ts) {
int value=0;
Dbutil dbconn = new Dbutil();
Session session = dbconn.dbConn();
Transaction trans = session.beginTransaction();
int ses = (Integer) session.save(Ts);
if (ses > 0) {
value = 1;
}
trans.commit();
session.close();
return value;
}
 // Show Database
public List<String> display(){
Dbutil dbconn = new Dbutil();
Session session = dbconn.dbConn();
Transaction trans = session.beginTransaction();
//HQL
String sql="show databases LIKE '%bank'";
List<String> databases= session.createSQLQuery(sql).list();
for(String database:databases) {
String dbName=database;
}
trans.commit();
session.close();
return databases;
}
//display quiz admin
public List<Quiz> displayadmin(String dbname){
Dbutil dbconn = new Dbutil();
Session session = dbconn.dbConn();
Transaction trans = session.beginTransaction();
session.createSQLQuery("use "+dbname).executeUpdate();
String hql ="From Quiz";
Query query =session.createQuery(hql);
List<Quiz> qlist=query.list();
trans.commit();
session.close();
return qlist;
}
 //edit quiz
public List<Quiz> editQuiz(String dbname,int id){
Dbutil dbconn = new Dbutil();
Session session = dbconn.dbConn();
Transaction trans = session.beginTransaction();
session.createSQLQuery("use "+dbname).executeUpdate();
String hql ="From Quiz where Srno ="+id;
Query query =session.createQuery(hql);
List<Quiz> qlist=query.list();
trans.commit();
session.close();
return qlist;
}
//Update Quiz
public int UpdateQuiz(String DbName,int id,Quiz updatedQuiz) {
int value = 0;
System.out.print(id);
Dbutil dbconn = new Dbutil();
Session session = dbconn.dbConn();
Transaction trans = session.beginTransaction();
session.createSQLQuery("use "+DbName).executeUpdate();
String hql = "update Quiz set ques = :ques, opt1 = :opt1, opt2 = :opt2, opt3 =
:opt3, opt4 = :opt4, correctopt = :correctopt where srno = :id";
 Query query = session.createQuery(hql);

 query.setParameter("ques", updatedQuiz.getQues());
 query.setParameter("opt1", updatedQuiz.getOpt1());
 query.setParameter("opt2", updatedQuiz.getOpt2());
 query.setParameter("opt3", updatedQuiz.getOpt3());
 query.setParameter("opt4", updatedQuiz.getOpt4());
 query.setParameter("correctopt", updatedQuiz.getCorrectopt());
 query.setParameter("id", id);
 int rowsAffected = query.executeUpdate();

 if (rowsAffected > 0) {
 value = 1; // Update successful
 } else {
 value = 0; // Update failed
 }
trans.commit();
session.close();
return value;
}
// Delete question
public int delete(String dbname,Quiz quiz) {
Dbutil dbconn = new Dbutil();
Session session = dbconn.dbConn();
Transaction trans = session.beginTransaction();
session.createSQLQuery("use "+dbname).executeUpdate();
session.delete(quiz);
trans.commit();
session.close();
return 0;
}
 //display Score
public List<TestScore> showScore(){
Dbutil dbconn = new Dbutil();
Session session = dbconn.dbConn();
Transaction trans = session.beginTransaction();
String hql ="From TestScore";
Query query =session.createQuery(hql);
List<TestScore> tlist=query.list();
trans.commit();
session.close();
return tlist;
}
public int deleteDb(String dbname) {
Dbutil dbconn = new Dbutil();
Session session = dbconn.dbConn();
Transaction trans = session.beginTransaction();
String sql = "DROP SCHEMA IF EXISTS " + dbname;
session.createNativeQuery(sql).executeUpdate();
trans.commit();
session.close();
return 0;
}
public int editDb(String oldDbname,String newDbName) {
Dbutil dbconn = new Dbutil();
Session session = dbconn.dbConn();
Transaction trans = session.beginTransaction();
// String sql = "ALTER DATABASE " + oldDbname + " RENAME TO " +
newDbName;
String sql ="ALTER DATABASE "+ oldDbname +"MODIFY
NAME="+newDbName;
session.createNativeQuery(sql).executeUpdate();
return 0;
}
}