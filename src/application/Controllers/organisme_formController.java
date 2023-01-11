package application.Controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ComboBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;

import javax.swing.*;
import java.awt.*;
import java.net.URL;
import java.util.ResourceBundle;

public class organisme_formController extends Component implements Initializable {

    @FXML
    private DatePicker dp_date_creation;

    @FXML
    private TextField txt_adresse_organisme;

    @FXML
    private TextField txt_code_inscription;

    @FXML
    private TextField txt_email_organisme;

    @FXML
    private TextField txt_nom_organisme;

    @FXML
    private TextField txt_nom_president;

    @FXML
    private ComboBox<String> txt_statut;

    @FXML
    private TextField txt_tele_organisme;

    @FXML
    private TextField txt_type_activite;



    public void AjouterOrganisme(ActionEvent actionEvent) {
        String getTxt_nom_orga=txt_nom_organisme.getText();
        String getTxt_code_inscr =txt_code_inscription.getText();
        String getTxt_adresse=txt_adresse_organisme.getText();
        String getTxt_email=txt_email_organisme.getText();
        String getTxt_tele=txt_tele_organisme.getText();
        String getTxt_nom_president=txt_nom_president.getText();
        String getTxtdp_date_creation=dp_date_creation.getValue().toString();
        String getTxt_statut=txt_statut.getSelectionModel().getSelectedItem();
        String getTxt_type_activite=txt_type_activite.getText();
        if (getTxt_nom_orga.isEmpty() || getTxt_code_inscr.isEmpty() || getTxt_adresse.isEmpty() || getTxt_email.isEmpty() || getTxt_tele.isEmpty() || getTxt_nom_president.isEmpty() || getTxtdp_date_creation.isEmpty() || getTxt_statut.isEmpty() || getTxt_type_activite.isEmpty())
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

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
}
