package application.Controllers;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

import java.awt.event.ActionEvent;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class login_formController implements Initializable {
    @FXML
    private Button btn_connexion;

    @FXML
    private CheckBox check_remembre;

    @FXML
    private PasswordField txt_password;

    @FXML
    private TextField txt_username;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }


    @FXML
    public void btnLogin(javafx.event.ActionEvent event) throws IOException {
        btn_connexion.getScene().getWindow().hide();

        Stage stgeLogn = new Stage();
        Parent root = FXMLLoader.load(getClass().getResource("Views/dashboard_form.fxml"));
        Scene sceneLogn = new Scene(root);
        stgeLogn.setScene(sceneLogn);
        stgeLogn.show();
        stgeLogn.setResizable(false);
    }
}
