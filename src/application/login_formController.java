package application;
import application.Controllers.Connexion;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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

    @FXML
    Stage stg ;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }

    @FXML
    public void closeButton(javafx.event.ActionEvent eventclose)
    {
        stg = (Stage)((Button)eventclose.getSource()).getScene().getWindow();
        stg.close();
    }

    @FXML
    public void miniButton(javafx.event.ActionEvent eventMini)
    {
        stg = (Stage)((Button)eventMini.getSource()).getScene().getWindow();
        stg.setIconified(true);
    }
    @FXML
    public void btnLogin(javafx.event.ActionEvent event) throws IOException {
        try {
            Connection con = (Connection) Connexion.getConnection();
            if (con!=null){
                PreparedStatement statement =con.prepareStatement("SELECT * FROM `utilisateur` WHERE email_utilisateur  =? and mot_de_passe= ?");
                statement.setString(1, txt_username.getText().toString());
                statement.setString(2, txt_password.getText().toString());
                ResultSet rs = statement.executeQuery();
                if (rs.next()==false){
                    Alert alert = new Alert(Alert.AlertType.ERROR);
                    alert.setTitle("Eurreur de Connexion");
                    alert.setHeaderText("Login ou mot de passe incorrect");
                    alert.setContentText("Veuillez entrer votre identifiant et mot de passe corrects pour continuer.");
                    alert.show();
                }
                else {

                    Parent root = FXMLLoader.load(getClass().getResource("Views/dashboard_form.fxml"));
                    Stage window =(Stage) btn_connexion.getScene().getWindow();
                    window.setScene(new Scene(root,1203,645));
                    window.centerOnScreen();

                }
            }

        }catch (Exception ex ) {
            System.out.println("ERROR =" + ex.getMessage());

        }
    }

}
