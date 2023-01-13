package application.Controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class reservation_controller implements Initializable {
    @FXML
    private Button btn_accepter;

    @FXML
    private Button btn_enregistrer;

    @FXML
    private Button btn_imprimer;

    @FXML
    private Button btn_refuser;

    private Stage stageDtl;
    private Scene sceneDtl;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
    @FXML
    private void goToDetaitls(ActionEvent event) throws IOException {
        Parent rootDtl = FXMLLoader.load(getClass().getResource("/application/Views/reservation_details.fxml"));
        Stage stage =(Stage) btn_accepter.getScene().getWindow();
        stage.setScene(new Scene(rootDtl));
        stage.show();
    }
}
