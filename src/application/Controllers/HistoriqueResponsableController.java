package application.Controllers;

import application.Models.Responsable;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;

import java.awt.*;
import java.net.URL;
import java.sql.SQLException;
import java.util.Date;
import java.util.ResourceBundle;

public class HistoriqueResponsableController extends Component implements Initializable {
    @FXML
    private Button btn_recherche_respo;
    @FXML
    private Button btn_restaurer;
    @FXML
    private TableView<Responsable> tbl_historique_responsable;
    @FXML
    private TableColumn<Responsable, String> cln_adresse_copy;

    @FXML
    private TableColumn<Responsable, Date> cln_datecreation_copy;

    @FXML
    private TableColumn<Responsable, Date> cln_dns_copy;

    @FXML
    private TableColumn<Responsable, String> cln_email_copy;

    @FXML
    private TableColumn<Responsable, Integer> cln_id_copy;

    @FXML
    private TableColumn<Responsable, String> cln_nom_copy;

    @FXML
    private TableColumn<Responsable, String> cln_prenom_copy;

    @FXML
    private TableColumn<Responsable, String> cln_profession_copy;

    @FXML
    private TableColumn<Responsable, Integer> cln_tele_copy;

    @FXML
    private TextField id_historique_responsable_rech;
    int id_responsable;

    public void AfficherHistoriqueResponsables() throws SQLException {
        ObservableList<Responsable> list =Responsable.ListeHistoriqueResponsable();

        cln_id_copy.setCellValueFactory(new PropertyValueFactory<Responsable,Integer>("id_responsable"));
        cln_nom_copy.setCellValueFactory(new PropertyValueFactory<Responsable,String>("nom_Employe"));
        cln_prenom_copy.setCellValueFactory(new PropertyValueFactory<Responsable,String>("prenom_Employe"));
        cln_profession_copy.setCellValueFactory(new PropertyValueFactory<Responsable,String>("profession_Employe"));
        cln_dns_copy.setCellValueFactory(new PropertyValueFactory<Responsable, Date>("dateNaissance_Employe"));
        cln_adresse_copy.setCellValueFactory(new PropertyValueFactory<Responsable,String>("adresse"));
        cln_email_copy.setCellValueFactory(new PropertyValueFactory<Responsable,String>("email_utilisateur"));
        cln_tele_copy.setCellValueFactory(new PropertyValueFactory<Responsable,Integer>("tele_utilisateur"));
        cln_datecreation_copy.setCellValueFactory(new PropertyValueFactory<Responsable,Date>("date_de_creation"));

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

    public void Restaurer(ActionEvent actionEvent) {
        try {
            Restaure_Responsable();
            AfficherHistoriqueResponsables();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    private void Restaure_Responsable() {
        try {
            Responsable responsable=Responsable.findresponsablebyidforhistory(id_responsable);
            responsable.Restaurer_Responsable();
            AfficherHistoriqueResponsables();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public void getSelectedItem(MouseEvent mouseEvent) {
        Responsable responsable=tbl_historique_responsable.getSelectionModel().getSelectedItem();
        id_responsable=responsable.getId_responsable();

    }
}
