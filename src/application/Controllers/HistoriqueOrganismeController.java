package application.Controllers;

import application.Models.Organisme;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;

import java.awt.*;
import java.net.URL;
import java.util.ResourceBundle;

public class HistoriqueOrganismeController extends Component implements Initializable {

    @FXML
    private javafx.scene.control.Button btn_recherche;
    @FXML
    private javafx.scene.control.Button btn_restaurer;

    @FXML
    private TableColumn<Organisme, Integer> cln_code_organisme;

    @FXML
    private TableColumn<Organisme, String> cln_datecreation;

    @FXML
    private TableColumn<Organisme, String> cln_email;

    @FXML
    private TableColumn<Organisme, String> cln_nom_organisme;

    @FXML
    private TableColumn<Organisme, String> cln_president_organisme;

    @FXML
    private TableColumn<Organisme, String> cln_statut_organisme;

    @FXML
    private TableColumn<Organisme, String> cln_telephone;

    @FXML
    private TableColumn<Organisme, String> cln_type_organisme;

    @FXML
    private TextField id_historique_organisme_rech;

    @FXML
    private TableView<Organisme> tbl_history_organisme;
    int id_organisme;
    public void showHistoryOrganismes(){
        ObservableList<Organisme> list =Organisme.getorganismeHistory();

        cln_code_organisme.setCellValueFactory(new PropertyValueFactory<Organisme,Integer>("code_organisme"));
        cln_nom_organisme.setCellValueFactory(new PropertyValueFactory<Organisme,String>("nom_organisme"));
        cln_datecreation.setCellValueFactory(new PropertyValueFactory<Organisme,String>("date_decreation"));
        cln_email.setCellValueFactory(new PropertyValueFactory<Organisme,String>("email"));
        cln_type_organisme.setCellValueFactory(new PropertyValueFactory<Organisme,String>("type_organisme"));
        cln_statut_organisme.setCellValueFactory(new PropertyValueFactory<Organisme,String>("status_organisme"));
        cln_president_organisme.setCellValueFactory(new PropertyValueFactory<Organisme,String>("president_organisme"));
        cln_telephone.setCellValueFactory(new PropertyValueFactory<Organisme,String>("telephone"));
        tbl_history_organisme.setItems(list);

    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        showHistoryOrganismes();
    }
    @FXML
    void Restaurer(ActionEvent event) {
        try {
            Organisme organisme=Organisme.findoragnismebyidforhistory(id_organisme);
            organisme.Restore();
            showHistoryOrganismes();
        }catch (Exception e){
            System.out.println("ERROR"+e.getMessage());
        }
    }

    @FXML
    void getSelectedItem(MouseEvent event) {
        Organisme organisme=tbl_history_organisme.getSelectionModel().getSelectedItem();
        id_organisme=organisme.getId_organisme();

    }
}