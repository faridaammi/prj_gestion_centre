package application.Controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;

import javax.swing.*;
import java.awt.*;

public class centre_gestionnaire_formController extends Component {

    @FXML
    private Button btn_afficher_respo;

    @FXML
    private ComboBox<?> cb_responsable_centre;

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
    void AjouterCentre(ActionEvent event) {
        String txt_nom=txt_nom_centre.getText();
        String txt_capacite=String.valueOf(txt_capacite_centre.getText());
        String txt_description=txt_description_centre.getText();
        //String cb_responsable=cb_responsable_centre.getSelectionModel().getSelectedItem().toString();
        if( txt_nom.isEmpty() || txt_capacite.isEmpty() || txt_description.isEmpty())
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

}
