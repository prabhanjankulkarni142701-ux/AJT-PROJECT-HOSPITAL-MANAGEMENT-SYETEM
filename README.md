[README.md](https://github.com/user-attachments/files/35230457/README.md)
# Hospital Management System

A **Java-based Hospital Management System** developed using **Java Swing, JDBC, and MySQL**. This desktop application provides a graphical interface for managing patient records and accessing important hospital information through a reception dashboard.

## Project Overview

The Hospital Management System is designed to make basic hospital reception tasks easier to manage. Users can log in to the application and open different modules from the main reception screen.

**Application type:** Desktop application  
**Programming language:** Java  
**User interface:** Java Swing  
**Database:** MySQL  
**Database connectivity:** JDBC

## Main Features

- **Login:** Sign in using the user ID and password stored in the database.
- **Reception Dashboard:** Main screen for opening the different modules.
- **Add New Patient:** Enter and save new patient details.
- **Patient Information:** View the available patient records.
- **Update Patient Details:** Update existing patient information.
- **Patient Discharge:** Process a patient's discharge and update the related room information.
- **Room Information:** View room details.
- **Search Room:** Search for rooms based on their availability.
- **Department Information:** View department details.
- **Employee Information:** View employee records.
- **Ambulance Information:** View ambulance details.
- **Logout:** Return to the login screen.

## Technologies Used

| Technology | Purpose |
|---|---|
| Java | Application programming |
| Java Swing and AWT | Desktop graphical user interface |
| JDBC | Connect Java with the database |
| MySQL | Store application information |
| IntelliJ IDEA | Project development environment |

The source code also imports `net.proteanit.sql.DbUtils` in table-view screens. Add the corresponding **rs2xml** library to the project if it is not already available in your development environment.

## Project Structure

```text
Hospital management system/
├── src/
│   ├── hospital/
│   │   └── management/
│   │       └── system/
│   │           ├── Login.java
│   │           ├── conn.java
│   │           ├── Reception.java
│   │           ├── NEW_PATIENT.java
│   │           ├── ALL_Patient_Info.java
│   │           ├── update_patient_details.java
│   │           ├── patient_discharge.java
│   │           ├── Room.java
│   │           ├── SearchRoom.java
│   │           ├── Department.java
│   │           ├── Employee_info.java
│   │           └── Ambulance.java
│   └── icon/
│       └── (application image resources)
├── out/
│   └── (compiled class files)
├── .idea/
│   └── (IntelliJ IDEA project settings)
└── Hospital management system.iml
```

## Requirements

Before running the application, make sure you have:

1. **JDK:** Install a JDK and configure it in your IDE. The project SDK may need to be adjusted to match the JDK installed on your computer.
2. **MySQL Server:** Install and start MySQL. XAMPP can also be used to run MySQL locally.
3. **MySQL Connector/J:** Add the MySQL JDBC driver to the project.
4. **rs2xml library:** Add the library that provides `net.proteanit.sql.DbUtils`.
5. **IDE:** IntelliJ IDEA is suitable for opening and running this project.

## Database Setup

The database connection is configured in:

```text
src/hospital/management/system/conn.java
```

The application uses this database name and local connection address:

```text
Database name: hospital_management_system
JDBC URL: jdbc:mysql://localhost:3306/hospital_management_system
```

### Setup steps

1. Open MySQL using XAMPP or your MySQL installation.
2. Start the MySQL service.
3. Open phpMyAdmin or a MySQL client.
4. Create a database named `hospital_management_system`.
5. Create the tables and columns required by the SQL queries in the Java source files.
6. Open `conn.java` and update the database username and password to match your own MySQL configuration.
7. Run the application after confirming that the database connection works.

### Tables referenced in the Java source

The source code contains queries that reference the following table names:

- `login`
- `Patient_Info`
- `Patient`
- `Room` / `room`
- `department`
- `EMP_INFO`
- `Ambulance`

**Important:** The supplied ZIP does not contain a database `.sql` export or a complete database creation script. You must create/import a compatible database schema before all modules can work. Check the SQL statements in the Java files for the exact column names and data types expected by each screen. MySQL table-name case sensitivity can also vary by operating system and server configuration.

## How to Run the Project

1. Download and extract the project ZIP file.
2. Open IntelliJ IDEA.
3. Select **File → Open** and choose the extracted project folder.
4. Configure the Project SDK with an installed JDK.
5. Add MySQL Connector/J to the project libraries.
6. Add the rs2xml library if required by the table-view classes.
7. Start MySQL and create the `hospital_management_system` database.
8. Create the required tables and add a login record.
9. Update the database username and password in `conn.java`.
10. Open `Login.java`.
11. Run the `main()` method.
12. Enter valid login credentials to open the Reception Dashboard.

## Database Connection and Security

The current project stores database connection details directly inside `conn.java`. Replace the original credentials with your own local MySQL credentials before running the application.

**Do not publish database passwords or other private credentials on GitHub.** For a public repository, use environment variables or a separate local configuration file that is excluded from version control. If any real password has already been committed publicly, change it.

## Troubleshooting

| Problem | Possible solution |
|---|---|
| MySQL connection error | Check that MySQL is running and the JDBC URL, username, and password are correct. |
| Unknown database | Create the `hospital_management_system` database. |
| Table does not exist | Create the required tables and verify their names. |
| JDBC driver not found | Add MySQL Connector/J to the project dependencies. |
| `DbUtils` class not found | Add the rs2xml library to the project dependencies. |
| Images are not displayed | Check that the `icon` resource folder is included in the runtime classpath. |
| Login is unsuccessful | Verify that a matching user ID and password record exists in the `login` table. |

## Future Enhancements

- Provide a database setup script with table definitions and sample records.
- Improve input validation and error handling.
- Use `PreparedStatement` for parameterized database operations.
- Store database credentials securely outside the source code.
- Add role-based access for different hospital staff.
- Add reporting, billing, and backup features.

## Project Note

This project is a **Java Swing desktop application**. It is not a web application and does not open directly in a browser. A MySQL server must be accessible to the computer running the application.

## License

No license file was included in the supplied project. Add a license if you plan to publish or distribute this project and want to define how others may use it.
