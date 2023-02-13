package application.Controllers;

import application.Models.Centre;
import application.Models.Responsable;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.Initializable ;
import javafx.fxml.FXML;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;

import javax.swing.*;
import java.awt.*;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.ResourceBundle;

public class centreController extends Component implements Initializable {

    @FXML
    private ComboBox<String> cb_respo_centre;

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
    private TableColumn<Centre, String> cb_Adress;

    @FXML
    private TableColumn<Centre, Integer> cb_Capacite;

    @FXML
    private TableColumn<Centre, String> cb_Description;

    @FXML
    private TableColumn<Centre, String> cb_Respo;

    @FXML
    private TableColumn<Centre, String> cb_nomCentre;


    @FXML
    void AjouterCentre(ActionEvent event) {
        String txt_nom=txt_nom_centre.getText();
        String txt_capacite=String.valueOf(txt_capacite_centre.getText());
        String txt_description=txt_description_centre.getText();
        String txt_adresse=txt_adresse_centre.getText();
        String  respo_nom = cb_respo_centre.getSelectionModel().getSelectedItem();
        System.out.println(respo_nom+"fffff");
        String cb_responsable=cb_respo_centre.getSelectionModel().getSelectedItem().toString();
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
    public void showcomboitems(){
        ArrayList<Responsable> items = Centre.Charger_combo();
        ArrayList<String> nom_respo = new ArrayList<>();
        for (Responsable respo :items){
            System.out.println(respo.getNom_Employe());
            nom_respo.add(respo.getNom_Employe());
        }
        cb_respo_centre.getItems().addAll(nom_respo);

    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        showcomboitems();
    }
}