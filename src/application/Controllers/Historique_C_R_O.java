package application.Controllers;


import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.layout.StackPane;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;

import javax.swing.*;
import java.awt.*;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

import java.awt.*;

public class Historique_C_R_O extends Component implements Initializable {
    @FXML
    private Button btn_historique_centre;

    @FXML
    private Button btn_historique_responsable;
    @FXML
    private Button btn_historique_organisme;

    @FXML
    private TextField txt_recherche;

    @FXML
    private StackPane stackPrincipe;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
    @FXML
    void AfficherClicked(ActionEvent event) throws IOException {
        if(event.getSource()==btn_historique_centre){
            btn_historique_centre.setStyle("-fx-text-fill: white; -fx-background-color: #118AB2;");
            btn_historique_responsable.setStyle("-fx-border-color: black; -fx-background-color: Transparent;-fx-text-fill: #1f2e9c;");
            btn_historique_organisme.setStyle("-fx-border-color: black; -fx-background-color: Transparent;-fx-text-fill: #1f2e9c;");
            Parent fxml = FXMLLoader.load(getClass().getResource("/application/Views/historiue_centre_form.fxml"));
            stackPrincipe.getChildren().removeAll();
            stackPrincipe.getChildren().setAll(fxml);

        }
        else if (event.getSource()==btn_historique_responsable){
            btn_historique_responsable.setStyle("-fx-text-fill: white; -fx-background-color: #118AB2;");
            btn_historique_centre.setStyle("-fx-border-color: black; -fx-background-color: Transparent;-fx-text-fill: #1f2e9c;");
            btn_historique_organisme.setStyle("-fx-border-color: black; -fx-background-color: Transparent;-fx-text-fill: #1f2e9c;");
            Parent fxml = FXMLLoader.load(getClass().getResource("/application/Views/Historique_responsable.fxml"));
            stackPrincipe.getChildren().removeAll();
            stackPrincipe.getChildren().setAll(fxml);
        }

        else if (event.getSource()==btn_historique_organisme){
            btn_historique_organisme.setStyle("-fx-text-fill: white; -fx-background-color: #118AB2;");
            btn_historique_responsable.setStyle("-fx-border-color: black; -fx-background-color: Transparent;-fx-text-fill: #1f2e9c;");
            btn_historique_centre.setStyle("-fx-border-color: black; -fx-background-color: Transparent;-fx-text-fill: #1f2e9c;");
            Parent fxml = FXMLLoader.load(getClass().getResource("/application/Views/Historique_Organisme.fxml"));
            stackPrincipe.getChildren().removeAll();
            stackPrincipe.getChildren().setAll(fxml);
        }
    }
}
