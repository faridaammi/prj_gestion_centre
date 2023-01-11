package application.Controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
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

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
    @FXML
    public void switchToLogin(ActionEvent eventLogin) throws IOException {
        this.btn_deconnexion.getScene().getWindow().hide();

        Stage stgeLogn = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("Views/login_form.fxml"));
        Scene sceneLogn = new Scene(root);
        stgeLogn.setScene(sceneLogn);
        stgeLogn.show();

//        Parent rootLogin = FXMLLoader.load(getClass().getResource("Views/login_form.fxml"));
//        stageLogin = (Stage) ((Node)eventLogin.getSource()).getScene().getWindow();
//        sceneLogin = new Scene(rootLogin);
//        stageLogin.setScene(sceneLogin);
//        stageLogin.show();
    }
    @FXML
    private void btnChangeTitle(ActionEvent eventChange) throws IOException {
        if(eventChange.getSource() == btn_dashboard)
        {
            txt_titre.setText("Dashboard");
        }
        else if(eventChange.getSource() == btn_centres)
        {
            txt_titre.setText("Centres");
        }
        else if(eventChange.getSource() == btn_associations)
        {
            txt_titre.setText("Associations");
        }
        else if(eventChange.getSource() == btn_contact)
        {
            txt_titre.setText("Contacts");
        }
        else if(eventChange.getSource() == btn_historique)
        {
            txt_titre.setText("Historiques");
        }
        else if(eventChange.getSource() == btn_reservations)
        {
            txt_titre.setText("Reservations");
        }
        else if(eventChange.getSource() == btn_paramettres)
        {
            txt_titre.setText("Paramettres");
        }
        else if(eventChange.getSource() == btn_deconnexion)
        {
            btn_deconnexion.getScene().getWindow().hide();
        }

    }
}
