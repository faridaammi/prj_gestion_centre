package application.Controllers;

import application.Models.HistoriqueResponsable;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

import java.awt.*;
import java.net.URL;
import java.sql.SQLException;
import java.util.Date;
import java.util.ResourceBundle;

public class HistoriqueController extends Component implements Initializable {
    @FXML
    private Button btn_recherche_respo;

    @FXML
    private TableView<HistoriqueResponsable> tbl_historique_responsable;
    @FXML
    private TableColumn<HistoriqueResponsable, String> cln_adresse_copy;

    @FXML
    private TableColumn<HistoriqueResponsable, Date> cln_datecreation_copy;

    @FXML
    private TableColumn<HistoriqueResponsable, Date> cln_dns_copy;

    @FXML
    private TableColumn<HistoriqueResponsable, String> cln_email_copy;

    @FXML
    private TableColumn<HistoriqueResponsable, Integer> cln_id_copy;

    @FXML
    private TableColumn<HistoriqueResponsable, String> cln_nom_copy;

    @FXML
    private TableColumn<HistoriqueResponsable, String> cln_prenom_copy;

    @FXML
    private TableColumn<HistoriqueResponsable, String> cln_profession_copy;

    @FXML
    private TableColumn<HistoriqueResponsable, Integer> cln_tele_copy;

    @FXML
    private TextField id_historique_responsable_rech;
    public void AfficherHistoriqueResponsables() throws SQLException {
        ObservableList<HistoriqueResponsable> list =HistoriqueResponsable.ListeHistoriqueResponsable();

        cln_id_copy.setCellValueFactory(new PropertyValueFactory<HistoriqueResponsable,Integer>("id_responsable"));
        cln_nom_copy.setCellValueFactory(new PropertyValueFactory<HistoriqueResponsable,String>("nom_Employe"));
        cln_prenom_copy.setCellValueFactory(new PropertyValueFactory<HistoriqueResponsable,String>("prenom_Employe"));
        cln_profession_copy.setCellValueFactory(new PropertyValueFactory<HistoriqueResponsable,String>("profession_Employe"));
        cln_dns_copy.setCellValueFactory(new PropertyValueFactory<HistoriqueResponsable, Date>("dateNaissance_Employe"));
        cln_adresse_copy.setCellValueFactory(new PropertyValueFactory<HistoriqueResponsable,String>("adresse"));
        cln_email_copy.setCellValueFactory(new PropertyValueFactory<HistoriqueResponsable,String>("email_utilisateur"));
        cln_tele_copy.setCellValueFactory(new PropertyValueFactory<HistoriqueResponsable,Integer>("tele_utilisateur"));
        cln_datecreation_copy.setCellValueFactory(new PropertyValueFactory<HistoriqueResponsable,Date>("date_de_creation"));

        tbl_historique_responsable.setItems(list);

    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        try {
            AfficherHistoriqueResponsables();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
