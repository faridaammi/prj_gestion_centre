package application.Controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.geometry.Insets;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.Background;
import javafx.scene.layout.BackgroundFill;
import javafx.scene.layout.CornerRadii;
import javafx.scene.layout.StackPane;
import javafx.scene.paint.Color;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.util.Objects;
import java.util.ResourceBundle;

public class dashbord_controller implements Initializable {
    @FXML
    private Button btn_associations;
    private Stage stageLogin ;
    private Scene sceneLogin;
    private Parent rootLogin;

    @FXML
    private Button btn_centres;

    @FXML
    private Button btn_contact;

    @FXML
    private Button btn_dashboard;

    @FXML
    private Button btn_deconnexion;

    @FXML
    private Button btn_historique;

    @FXML
    private Button btn_paramettres;

    @FXML
    private Button btn_reservations;

    @FXML
    private Label txt_nomprenom;

    @FXML
    private Label txt_titre;
    @FXML
    private StackPane stackPrincipe;
    @FXML
    private Button btn_exit,btn_reduire;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {


//        try {
//           Parent fxml = FXMLLoader.load(getClass().getResource("Views/dashboard_principale_form.fxml"));
//            stackPrincipe.getChildren().removeAll();
//            stackPrincipe.getChildren().setAll(fxml);
//        }
//        catch (IOException e) {
//            throw new RuntimeException(e);
//        }
    }
    @FXML
    public void switchToLogin(ActionEvent eventLogin) throws IOException {
        btn_deconnexion.getScene().getWindow().hide();
        Parent rootLogin = FXMLLoader.load(getClass().getResource("/application/Views/login_form.fxml"));
        stageLogin = (Stage) ((Node)eventLogin.getSource()).getScene().getWindow();
        sceneLogin = new Scene(rootLogin);
        stageLogin.setScene(sceneLogin);
        stageLogin.show();
        System.out.print("Deconnexion");
    }
    @FXML
    private void btnChangeTitle(ActionEvent eventChange) throws IOException {
        if(eventChange.getSource() == btn_dashboard)
        {
            txt_titre.setText("Dashboard");
            Parent fxml = FXMLLoader.load(Objects.requireNonNull(getClass().getResource("/application/Views/dashboard_form.fxml")));
            stackPrincipe.getChildren().removeAll();
            stackPrincipe.getChildren().setAll(fxml);
        }
        else if(eventChange.getSource() == btn_centres)
        {
            txt_titre.setText("Centres");
            Parent fxml = FXMLLoader.load(getClass().getResource("/application/Views/centre_gestionnaire_form.fxml"));
            stackPrincipe.getChildren().removeAll();
            stackPrincipe.getChildren().setAll(fxml);
        }
        else if(eventChange.getSource() == btn_associations)
        {
            txt_titre.setText("Organismes");
            Parent fxml = FXMLLoader.load(getClass().getResource("/application/Views/organisme_form.fxml"));
            stackPrincipe.getChildren().removeAll();
            stackPrincipe.getChildren().setAll(fxml);
        }
        else if(eventChange.getSource() == btn_contact)
        {
            txt_titre.setText("Contacts");
            Parent fxml = FXMLLoader.load(getClass().getResource("/application/Views/Contact.fxml"));
            stackPrincipe.getChildren().removeAll();
            stackPrincipe.getChildren().setAll(fxml);
        }
        else if(eventChange.getSource() == btn_historique)
        {
            txt_titre.setText("Historiques");
            Parent fxml = FXMLLoader.load(getClass().getResource("/application/Views/Historique.fxml"));
            stackPrincipe.getChildren().removeAll();
            stackPrincipe.getChildren().setAll(fxml);
        }
        else if(eventChange.getSource() == btn_reservations)
        {
            txt_titre.setText("Reservations");
            Parent fxml = FXMLLoader.load(getClass().getResource("/application/Views/reservation.fxml"));
            stackPrincipe.getChildren().removeAll();
            stackPrincipe.getChildren().setAll(fxml);
        }
        else if(eventChange.getSource() == btn_paramettres)
        {
            txt_titre.setText("Paramettres");
            Parent fxml = FXMLLoader.load(getClass().getResource("/application/Views/centre_gestionnaire_form.fxml"));
            stackPrincipe.getChildren().removeAll();
            stackPrincipe.getChildren().setAll(fxml);
        }
        else if(eventChange.getSource() == btn_deconnexion)
        {
            btn_deconnexion.getScene().getWindow().hide();
            Stage login = new Stage();
            Parent rootLogin = FXMLLoader.load(getClass().getResource("/application/Views/Login_form.fxml"));
            Scene scene = new Scene(rootLogin);
            login.setScene(scene);
            login.show();
            login.setResizable(false);
            System.out.print("Deconnexion");
        }

    }
    public void dashboard(ActionEvent eventDashboard) throws IOException {
        Parent fxml = FXMLLoader.load(getClass().getResource("/application/Views/dashboard_principale_form.fxml"));
        stackPrincipe.getChildren().removeAll();
        stackPrincipe.getChildren().setAll(fxml);
    }
    public void association(ActionEvent eventDashboard) throws IOException {
        Parent fxml = FXMLLoader.load(getClass().getResource("/application/Views/Contact.fxml"));
        stackPrincipe.getChildren().removeAll();
        stackPrincipe.getChildren().setAll(fxml);
    }
    public void exite()
    {
        btn_exit.getScene().getWindow().hide();
    }
    public void reduire()
    {
        Stage stage = (Stage) btn_reduire.getScene().getWindow(); stage.setIconified(true);
    }
}
