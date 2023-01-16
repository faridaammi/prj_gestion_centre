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

public class centre_gestionnaire_formController extends Component implements Initializable {

    @FXML
    private Button btn_afficher_respo;

    @FXML
    private Button btn_afficher_centre;
    @FXML
    private ComboBox<String> cb_responsable_centre;

    @FXML
    private TextField txt_adresse_centre;

    @FXML
    private TextField txt_capacite_centre;

    @FXML
    private TextArea txt_description_centre;

    @FXML
    private TextField txt_nom_centre;

    @FXML
    private TextField txt_recherche;

    @FXML
    private StackPane stackPrincipe;
    @FXML
    void AjouterCentre(ActionEvent event) {
        String txt_nom=txt_nom_centre.getText();
        String txt_capacite=String.valueOf(txt_capacite_centre.getText());
        String txt_description=txt_description_centre.getText();
        String txt_adresse=txt_adresse_centre.getText();
        String cb_responsable=cb_responsable_centre.getSelectionModel().getSelectedItem().toString();
        if( txt_nom.isEmpty() || txt_capacite.isEmpty() || txt_description.isEmpty() || txt_adresse.isEmpty())
        {
            JOptionPane.showMessageDialog(this,
                    "Veuillez remplir tous les champs",
                    "Attention",
                    JOptionPane.ERROR_MESSAGE);
        }
        else{
            JOptionPane.showMessageDialog(this,
                    "Success",
                    "Information",
                    JOptionPane.INFORMATION_MESSAGE);
        }
    }
    @FXML
    void AfficherClicked(ActionEvent event) throws IOException {
       if(event.getSource()==btn_afficher_centre){
           btn_afficher_centre.setStyle("-fx-text-fill: white; -fx-background-color: #118AB2;");
           btn_afficher_respo.setStyle("-fx-border-color: black; -fx-background-color: Transparent;-fx-text-fill: #1f2e9c;");
           Parent fxml = FXMLLoader.load(getClass().getResource("/application/Views/centre_form.fxml"));
           stackPrincipe.getChildren().removeAll();
           stackPrincipe.getChildren().setAll(fxml);
       }
       else if (event.getSource()==btn_afficher_respo){
           btn_afficher_respo.setStyle("-fx-text-fill: white; -fx-background-color: #118AB2;");
           btn_afficher_centre.setStyle("-fx-border-color: black; -fx-background-color: Transparent;-fx-text-fill: #1f2e9c;");
           Parent fxml = FXMLLoader.load(getClass().getResource("/application/Views/responsable_form.fxml"));
           stackPrincipe.getChildren().removeAll();
           stackPrincipe.getChildren().setAll(fxml);
       }
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        String [] items={"xxxxxxx","yyyyy","aaaaa"};
        //cb_responsable_centre.getItems().addAll(items);
    }
}
