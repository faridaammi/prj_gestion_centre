package application.Controllers;

import javafx.fxml.Initializable;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;

public class contactrespo implements Initializable {
    @FXML
    private ImageView btn_brouillon;

    @FXML
    private Button btn_envoyer;

    @FXML
    private ImageView btn_joidre;

    @FXML
    private TextField txt_email;

    @FXML
    private TextField txt_objet;

    @FXML
    private ComboBox<?> txt_selectionner_email;

    @FXML
    private TextArea txt_zon_message;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
}
