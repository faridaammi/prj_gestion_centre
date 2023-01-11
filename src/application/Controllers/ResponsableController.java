package application.Controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;

import javax.swing.*;
import java.awt.*;
import java.net.URL;
import java.util.ResourceBundle;

public class ResponsableController extends Component implements Initializable {

    @FXML
    private DatePicker dp_dateNaiss_respo;

    @FXML
    private TextField txt_adresse_respo;

    @FXML
    private TextField txt_email_respo;

    @FXML
    private TextField txt_nom_respo;

    @FXML
    private TextField txt_prenom_respo;

    @FXML
    private TextField txt_profession_respo;

    @FXML
    private TextField txt_recherche_respo;

    @FXML
    private TextField txt_tele_respo;


    @FXML
    void Ajouter(ActionEvent event) {
        String getTxt_nom=txt_nom_respo.getText();
        String getTxt_prenom=txt_prenom_respo.getText();
        String getTxt_adresse=txt_adresse_respo.getText();
        String getTxt_profession=txt_profession_respo.getText();
        String getTxt_tele=txt_tele_respo.getText();
        String getTxt_email=txt_email_respo.getText();
        String getDp_dateNaiss=dp_dateNaiss_respo.getValue().toString();
        String gettxt_recherche=txt_recherche_respo.getText();
        if(getTxt_nom.isEmpty() || getTxt_prenom.isEmpty() || getTxt_adresse.isEmpty() || getTxt_email.isEmpty() || getTxt_tele.isEmpty() || getTxt_profession.isEmpty() || getDp_dateNaiss.isEmpty())
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
