module projet.getion.centre.grp3 {
    requires javafx.fxml;
    requires javafx.controls;
    requires javafx.graphics;
    requires java.desktop;
    requires java.sql;


    opens application;
    opens application.Models;
    opens application.Controllers;
}