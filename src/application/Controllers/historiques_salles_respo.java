package application.Controllers;

import javafx.fxml.Initializable;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TextField;


public class historiques_salles_respo implements Initializable {
    @FXML
    private Button btn_equipement;

    @FXML
    private Button btn_salle;

    @FXML
    private TableColumn<?, ?> col_adress;

    @FXML
    private TableColumn<?, ?> col_code;

    @FXML
    private TableColumn<?, ?> col_date_creation;

    @FXML
    private TableColumn<?, ?> col_email;

    @FXML
    private TableColumn<?, ?> col_nom_association;

    @FXML
    private TableColumn<?, ?> col_president;

    @FXML
    private TableColumn<?, ?> col_statut;

    @FXML
    private TableColumn<?, ?> col_telephone;

    @FXML
    private TableColumn<?, ?> col_type;

    @FXML
    private TextField tnx_recherch;

    @FXML
    private ComboBox<?> tnx_rechrche_combo;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
}
