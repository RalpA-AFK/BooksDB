import java.sql.*;

public class Employee {
  public static void main(String[] args){

    String url = "jdbc:mysql://localhost:3306/employeesdb";
    String selectQuery = "select * from employees";



    try{ 
      Connection connection = DriverManager.getConnection(url, "root", "password");
      Statement statement = connection.createStatement()


    }catch(SQLException e){
      throw new RuntimeException(e);
    }


    
  }
}
