package application.Controllers;

import application.Models.Responsable;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;

import javax.swing.*;
import java.awt.*;
import java.net.URL;
import java.sql.SQLException;
import java.time.ZoneId;
import java.util.Date;
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
    private TextField txt_password;

    @FXML
    private TextField txt_prenom_respo;

    @FXML
    private TextField txt_profession_respo;

    @FXML
    private TextField txt_recherche_respo;

    @FXML
    private TextField txt_tele_respo;

    @FXML
    private TextField txt_username;
    ZoneId defaultZoneId = ZoneId.systemDefault();

    @FXML
    void AjouterResponsable(ActionEvent event) throws SQLException {
        String getTxt_nom=txt_nom_respo.getText();
        String getTxt_prenom=txt_prenom_respo.getText();
        String getTxt_adresse=txt_adresse_respo.getText();
        String getTxt_profession=txt_profession_respo.getText();
        String getTxt_tele=txt_tele_respo.getText();
        String getTxt_email=txt_email_respo.getText();
        Date getTxtDp_dateNaiss=Date.from(dp_dateNaiss_respo.getValue().atStartOfDay(defaultZoneId).toInstant());
        String getTxtMotdepasse=txt_password.getText();
        String getTxt_username=txt_username.getText();


        //String gettxt_recherche=txt_recherche_respo.getText();
        if(getTxt_nom.isEmpty() || getTxt_prenom.isEmpty() || getTxt_adresse.isEmpty() || getTxt_email.isEmpty() || getTxt_tele.isEmpty() || getTxt_profession.isEmpty() ||getTxtMotdepasse.isEmpty()||getTxt_username.isEmpty())
        {
            JOptionPane.showMessageDialog(this,
                    "Veuillez remplir tous les champs",
                    "Attention",
                    JOptionPane.ERROR_MESSAGE);
        }
        else{
            //Date getTxtdp_date_creation=Date.from(dp_dateNaiss_respo.getValue().atStartOfDay(defaultZoneId).toInstant());
            Responsable responsable=new Responsable();
            responsable.setNom_Employe(getTxt_nom);
            responsable.setPrenom_Employe(getTxt_prenom);
            responsable.setAdresse(getTxt_adresse);
            responsable.setProfession_Employe(getTxt_profession);
            responsable.setDateNaissance_Employe(getTxtDp_dateNaiss);
            responsable.setEmail_utilisateur(getTxt_email);
            responsable.setTele_utilisateur(Integer.parseInt(getTxt_tele));
            responsable.setMotdepass_utilisateur(getTxtMotdepasse);
            responsable.setNom_utilisateur(getTxt_username);
            boolean t=responsable.AjouterResponsable();
            if(t){
                JOptionPane.showMessageDialog(this,
                        "Success",
                        "Information",
                        JOptionPane.INFORMATION_MESSAGE);
            }else{
                JOptionPane.showMessageDialog(this,
                        "Erreur lors de l'ajout",
                        "Echec",
                        JOptionPane.ERROR_MESSAGE);
            }



        }
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
}
