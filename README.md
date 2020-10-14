# mars-exercise

This is a Maven Project aims to provide a good leaning exercise for Spring Boot with Web UI.

Technology Used:
Java 8, Spring Framework, Spring Boot, MicroService,RestService, Hibernate, JPA, JUnit, Maven Build, SqlLocalDB, JSP, JQuery, BootStrap,  

Tools Required: 
Spring Tool Suite 4, Microsoft SqlSever Management Studio,  Soap UI  (Soap UI Optional for Testing)


Steps to Run Project:
1. Import mars-exercise project as existing maven project to your STS (Spring IDE Tool) workspace
2. Change the Database URL and Credentials in application.properties from resources folder
3. Wait for all Maven dependencies to download and build the project
4. Connect to  SQL LocalDB and Create the DB tables by running the scripts provided in /db_script/create_db_table.sql file
4. Run the Java Class com.mars.exercise.App ( This class responsible for start the Spring Boot Application - Contain Main Method)
5. After console message as "SUCCESSFULLY STARTED: MARS SPRING BOOT"
5. In your Web Browser (Chrome) open the URL :  http://localhost:8081/mars/index
6. Click on Add Person Details to start adding Person to DB
7. Click on Fetch Person List to perform other operations on Persons and their addresses
8. Execute the JUnit Test Cases from com.mars.contoller.test.PersonServiceTest Class.
9. Screen Shot Provided for each functional flow.
10. Thank You!
