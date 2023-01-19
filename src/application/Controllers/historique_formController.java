package application.Controllers;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.control.Button;
import javafx.scene.layout.StackPane;

import java.awt.*;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class historique_formController extends Component implements Initializable {
    @FXML
    private Button btn_equipement;

    @FXML
    private Button btn_salle;

    @FXML
    private StackPane stackPrincipe;

    @FXML
    void AfficherClicked(ActionEvent event) throws IOException {
        if(event.getSource()==btn_equipement){
            btn_salle.setStyle("-fx-text-fill: white; -fx-background-color: #118AB2;");
            btn_equipement.setStyle("-fx-border-color: black; -fx-background-color: Transparent;-fx-text-fill: #1f2e9c;");
            Parent fxml = FXMLLoader.load(getClass().getResource("/application/Views/historique_respo_equi.fxml"));
            stackPrincipe.getChildren().removeAll();
            stackPrincipe.getChildren().setAll(fxml);
        }
        else if (event.getSource()==btn_salle){
            btn_equipement.setStyle("-fx-text-fill: white; -fx-background-color: #118AB2;");
            btn_salle.setStyle("-fx-border-color: black; -fx-background-color: Transparent;-fx-text-fill: #1f2e9c;");
            Parent fxml = FXMLLoader.load(getClass().getResource("/application/Views/historiques_salles_respo.fxml"));
            stackPrincipe.getChildren().removeAll();
            stackPrincipe.getChildren().setAll(fxml);
        }
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
}
