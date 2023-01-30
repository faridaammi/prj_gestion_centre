package application.Controllers;

import application.Models.Organisme;
import application.Models.Responsable;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;

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
    private TableView<Responsable> tbl_responsable;

    @FXML
    private TableColumn<Responsable, String> cln_adresse;

    @FXML
    private TableColumn<Responsable, Date> cln_datecreation;

    @FXML
    private TableColumn<Responsable, Date> cln_dns;

    @FXML
    private TableColumn<Responsable, String> cln_email;

    @FXML
    private TableColumn<Responsable, Integer> cln_id;

    @FXML
    private TableColumn<Responsable, String> cln_motdepasse;

    @FXML
    private TableColumn<Responsable, String> cln_nom;

    @FXML
    private TableColumn<Responsable, String> cln_prenom;

    @FXML
    private TableColumn<Responsable, String> cln_profession;

    @FXML
    private TableColumn<Responsable, Integer> cln_tele;

    ZoneId defaultZoneId = ZoneId.systemDefault();
    int id_responsable;

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


        //String gettxt_recherche=txt_recherche_respo.getText();
        if(getTxt_nom.isEmpty() || getTxt_prenom.isEmpty() || getTxt_adresse.isEmpty() || getTxt_email.isEmpty() || getTxt_tele.isEmpty() || getTxt_profession.isEmpty() ||getTxtMotdepasse.isEmpty() ||dp_dateNaiss_respo.getValue()==null)
        {
            JOptionPane.showMessageDialog(this,
                    "Veuillez remplir tous les champs",
                    "Attention",
                    JOptionPane.ERROR_MESSAGE);
        }
        else{
            Responsable responsable=new Responsable();
            responsable.setNom_Employe(getTxt_nom);
            responsable.setPrenom_Employe(getTxt_prenom);
            responsable.setAdresse(getTxt_adresse);
            responsable.setProfession_Employe(getTxt_profession);
            responsable.setDateNaissance_Employe(getTxtDp_dateNaiss);
            responsable.setEmail_utilisateur(getTxt_email);
            responsable.setTele_utilisateur(Integer.parseInt(getTxt_tele));
            responsable.setMotdepass_utilisateur(getTxtMotdepasse);
            boolean t=responsable.AjouterResponsable();
            if(t){
                JOptionPane.showMessageDialog(this,
                        "Success",
                        "Information",
                        JOptionPane.INFORMATION_MESSAGE);
                Vider();
            }else{
                JOptionPane.showMessageDialog(this,
                        "Erreur lors de l'ajout",
                        "Echec",
                        JOptionPane.ERROR_MESSAGE);
            }
            AfficherResponsables();

        }
    }

    public void AfficherResponsables() throws SQLException {
        ObservableList<Responsable> list =Responsable.ListeResponsable();

        cln_id.setCellValueFactory(new PropertyValueFactory<Responsable,Integer>("id_responsable"));
        cln_nom.setCellValueFactory(new PropertyValueFactory<Responsable,String>("nom_Employe"));
        cln_prenom.setCellValueFactory(new PropertyValueFactory<Responsable,String>("prenom_Employe"));
        cln_profession.setCellValueFactory(new PropertyValueFactory<Responsable,String>("profession_Employe"));
        cln_dns.setCellValueFactory(new PropertyValueFactory<Responsable,Date>("dateNaissance_Employe"));
        cln_adresse.setCellValueFactory(new PropertyValueFactory<Responsable,String>("adresse"));
        cln_email.setCellValueFactory(new PropertyValueFactory<Responsable,String>("email_utilisateur"));
        cln_tele.setCellValueFactory(new PropertyValueFactory<Responsable,Integer>("tele_utilisateur"));
        cln_datecreation.setCellValueFactory(new PropertyValueFactory<Responsable,Date>("date_de_creation"));
        cln_motdepasse.setCellValueFactory(new PropertyValueFactory<Responsable,String>("motdepass_utilisateur"));

        tbl_responsable.setItems(list);

    }
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        try {
            AfficherResponsables();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void Vider(){
        txt_adresse_respo.clear();
        txt_email_respo.clear();
        txt_nom_respo.clear();
        txt_prenom_respo.clear();
        txt_password.clear();
        txt_profession_respo.clear();
        txt_tele_respo.clear();
        dp_dateNaiss_respo.setValue(null);
    }
    @FXML
    void getSelectedItem(MouseEvent event) {
        Responsable responsable=tbl_responsable.getSelectionModel().getSelectedItem();
        id_responsable=responsable.getId_responsable();
        txt_nom_respo.setText(responsable.getNom_Employe());
        txt_prenom_respo.setText(responsable.getPrenom_Employe());
        txt_profession_respo.setText(responsable.getProfession_Employe());
        txt_adresse_respo.setText(responsable.getAdresse());
        dp_dateNaiss_respo.setValue(new java.sql.Date(responsable.getDateNaissance_Employe().getTime()).toLocalDate());
        txt_email_respo.setText(responsable.getEmail_utilisateur());
        txt_tele_respo.setText(String.valueOf(responsable.getTele_utilisateur()));
        txt_password.setText(responsable.getMotdepass_utilisateur());
    }


    public void Modifier_responsable(ActionEvent actionEvent) throws SQLException {
        String getTxt_nom=txt_nom_respo.getText();
        String getTxt_prenom=txt_prenom_respo.getText();
        String getTxt_adresse=txt_adresse_respo.getText();
        String getTxt_profession=txt_profession_respo.getText();
        String getTxt_tele=txt_tele_respo.getText();
        String getTxt_email=txt_email_respo.getText();
        Date getTxtDp_dateNaiss=Date.from(dp_dateNaiss_respo.getValue().atStartOfDay(defaultZoneId).toInstant());
        String getTxtMotdepasse=txt_password.getText();
        if(getTxt_nom.isEmpty() || getTxt_prenom.isEmpty() || getTxt_adresse.isEmpty() || getTxt_email.isEmpty() || getTxt_tele.isEmpty() || getTxt_profession.isEmpty() ||getTxtMotdepasse.isEmpty() || dp_dateNaiss_respo.getValue()==null)
        {
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Champs requis");
            alert.setContentText(" Veuillez remplir tous les champs pour soumettre le formulaire.");
            alert.show();
        }
        else {
            Responsable responsable=Responsable.findresponsablebyid(id_responsable);
            responsable.setNom_Employe(getTxt_nom);
            responsable.setPrenom_Employe(getTxt_prenom);
            responsable.setAdresse(getTxt_adresse);
            responsable.setProfession_Employe(getTxt_profession);
            responsable.setTele_utilisateur(Integer.parseInt(getTxt_tele.toString()));
            responsable.setEmail_utilisateur(getTxt_email);
            responsable.setDateNaissance_Employe(getTxtDp_dateNaiss);
            responsable.setMotdepass_utilisateur(getTxtMotdepasse);
            responsable.ModifierResponsable();
            AfficherResponsables();
            Vider();
        }
    }

    public void Supprimer_responsable(ActionEvent actionEvent) throws SQLException {
        Responsable responsable=Responsable.findresponsablebyid(id_responsable);
        responsable.SupprimerResponsable();
        AfficherResponsables();
        Vider();
    }
}
