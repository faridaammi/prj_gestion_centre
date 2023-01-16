package application.Controllers;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;

public class historique_respo_equi implements Initializable {
    @FXML
    private Button btn_equipement;

    @FXML
    private Button btn_salle;

    @FXML
    private TableColumn<?, ?> col_nom_equip;

    @FXML
    private TableColumn<?, ?> col_numero_equip;

    @FXML
    private TableView<?> tableview_historique_equip;

    @FXML
    private TextField txt_recherche;

    @FXML
    private ComboBox<?> txt_recherche_comvo;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
}
