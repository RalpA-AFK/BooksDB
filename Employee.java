import java.sql.*;

public class Employee {
  public static void main(String[] args){

    // SQLite database connection
    String url = "jdbc:sqlite:employeesdb.db";
    String selectQuery = "SELECT * FROM employees";

    try (
      Connection connection = DriverManager.getConnection(url);
      Statement statement = connection.createStatement();
      ResultSet resultSet = statement.executeQuery(selectQuery)
    ) {
      // Print header
      System.out.println("=== Employee Database ===");
      System.out.printf("%-12s %-15s %-15s %-15s %-25s %-12s%n",
        "SSN", "First Name", "Last Name", "Birthday", "Employee Type", "Department");
      System.out.println("-".repeat(95));

      // Loop through results
      while (resultSet.next()) {
        String ssn = resultSet.getString("socialSecurityNumber");
        String firstName = resultSet.getString("firstName");
        String lastName = resultSet.getString("lastName");
        String birthday = resultSet.getString("birthday");
        String employeeType = resultSet.getString("employeeType");
        String department = resultSet.getString("departmentName");

        System.out.printf("%-12s %-15s %-15s %-15s %-25s %-12s%n",
          ssn, firstName, lastName, birthday, employeeType, department);
      }
    } catch (SQLException e) {
      System.out.println("Database Error: " + e.getMessage());
      e.printStackTrace();
    }
  }
}
