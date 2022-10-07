package PosgresqlSwimmingorg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;


/**
 *
 * @author Damilola Abioye
 */
public class App{

    //private final String dbName = "politics";
    private final String user = "postgres";
    private final String password = "postgres";

    private final String url = "jdbc:postgresql://127.0.0.1/swimmingorg";

    /**
     * Connect to the PostgreSQL database
     *
     * @return a Connection object
     */
    public Connection connect() {
        Connection conn = null;
        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection(url, user, password);
            System.out.println("Java JDBC PostgreSQL swimmingorg" + '\n' + "Connected to PostgreSQL database!" + '\n' +
                    "Reading car records...");


            Scanner sc = new Scanner(System.in);

            int user_choice;

            do {

                System.out.println("\nPlease enter your choice: " + '\n' +
                        "1. Names and phones of all swimmers currently in level (of id) 3: \n" +
                        "2. Name(s) of caretakers who are the primary (main) caretakers of at least two \n" +
                        "swimmers: \n" +
                        "3. Names of all caretakers who have volunteered for the task 'Recording' but not the \n" +
                        "task 'Officiating': \n" +
                        "4. quit ");


                user_choice = sc.nextInt();


                if (user_choice > 0 && user_choice <= 4) {

                    if (user_choice == 1) {
                        String sql = "SELECT DISTINCT Fname, Lname, Phone FROM Swimmer WHERE CurrentLevelId = 3";

                        Statement statement = conn.createStatement();

                        ResultSet result = statement.executeQuery(sql);

                        System.out.println("Your result (The following is the sample format)");

                        System.out.println("Names and phones of all swimmers currently in level (of id) 3:");

                        String fname = "fname", lname = "lname", phone = "phone";

                        System.out.printf("%15s   |   %15s  |   %15s\n", fname, lname, phone);

                        while (result.next()) {
                            fname = String.valueOf(result.getString("fname"));
                            fname = result.getString("fname");
                            lname = result.getString("lname");
                            phone = result.getString("phone");

                            System.out.printf("%15s   |   %15s  |   %15s\n", fname, lname, phone);
                        }
                    }

                    else if (user_choice == 2) {
                        String sql = "SELECT DISTINCT c.Fname, c.Lname FROM Caretaker c, Swimmer s1, Swimmer s2 " +
                                "WHERE c.CT_Id = s1.Main_CT_Id AND c.CT_Id = s2.Main_CT_Id " +
                                "AND s1.SwimmerId <> s2.SwimmerId";

                        Statement statement = conn.createStatement();

                        ResultSet result = statement.executeQuery(sql);

                        System.out.println("Your result (The following is the sample format)");

                        System.out.println("Name(s) of caretakers who are the primary (main) caretakers of " +
                                "at least two swimmers:");

                        String fname = "fname", lname = "lname";

                        System.out.printf("%15s   |   %5s\n", fname, lname);

                        while (result.next()) {
                            fname = String.valueOf(result.getString("fname"));
                            fname = result.getString("fname");
                            lname = result.getString("lname");

                            System.out.printf("%15s   |   %5s\n", fname, lname);
                        }
                    }

                    else if (user_choice == 3) {
                         String sql = "SELECT DISTINCT c.FName, c.LName " +
                                 "FROM Caretaker c where c.CT_Id " +
                                 "IN (select distinct c.CT_Id from V_Task v join Commitment c " +
                                 "ON (v.VT_Id = c.VT_Id) where v.Name ='Recording') " +
                                 "AND c.CT_Id not in (select distinct c.CT_Id " +
                                 "FROM V_Task v join Commitment c " +
                                 "ON (v.VT_Id = c.VT_Id) " +
                                 "WHERE v.Name ='Officiating')";

                        Statement statement = conn.createStatement();

                        ResultSet result = statement.executeQuery(sql);

                        System.out.println("Your result (The following is the sample format)");

                        System.out.println("Names of all caretakers who have volunteered for the task 'Recording' " +
                                "but not the task 'Officiating':");

                        String fname = "fname", lname = "lname";

                        System.out.printf("%15s   |   %5s\n", fname, lname);

                        while (result.next()) {
                            fname = String.valueOf(result.getString("fname"));
                            fname = result.getString("fname");
                            lname = result.getString("lname");

                            System.out.printf("%15s   |   %5s\n", fname, lname);
                        }
                    }

                    else {
                        System.out.println("Your result (The following is the sample format)" + '\n' + "Exit");
                        System.exit(0);
                    }

                }

            }
            while (user_choice > 0 && user_choice <= 4);


            conn.close();

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }

        return conn;
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        App app = new App();
        app.connect();
    }
}