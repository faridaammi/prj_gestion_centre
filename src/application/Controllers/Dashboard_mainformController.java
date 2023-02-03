package application.Controllers;

import application.Models.Dashbord_statistique;
import application.Models.Organisme;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;

import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.ResourceBundle;

public class Dashboard_mainformController implements Initializable {

    @FXML
    private TableView<Dashbord_statistique> tbl_recentlyreservation;
    @FXML
    private TableColumn<Dashbord_statistique, String> cln_centrename;

    @FXML
    private TableColumn<Dashbord_statistique, Date> cln_datedebut;

    @FXML
    private TableColumn<Dashbord_statistique, Date> cln_datefin;

    @FXML
    private TableColumn<Dashbord_statistique, Integer> cln_numsalle;

    @FXML
    private TableColumn<Dashbord_statistique, String> cln_organismename;
    @FXML
    private TableColumn<Dashbord_statistique, Date> cln_datereservation;

    @FXML
    private Label label_totlalcentres;

    @FXML
    private Label label_totlalorganismes;

    @FXML
    private Label label_totlalreseraccepeter;

    @FXML
    private Label label_totlalreserannuler;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        ArrayList<String> Totals_info = Dashbord_statistique.GetTolalinfo();
        label_totlalcentres.setText(Totals_info.get(0));
        label_totlalorganismes.setText(Totals_info.get(1));
        label_totlalreseraccepeter.setText(Totals_info.get(2));
        label_totlalreserannuler.setText(Totals_info.get(3));
        showrecentreservation();


    }
    public void showrecentreservation(){
        ObservableList<Dashbord_statistique> list = Dashbord_statistique.getreservationlist();
        cln_centrename.setCellValueFactory(new PropertyValueFactory<Dashbord_statistique,String>("centre_nom"));
        cln_organismename.setCellValueFactory(new PropertyValueFactory<Dashbord_statistique,String>("organisme_nom"));
        cln_numsalle.setCellValueFactory(new PropertyValueFactory<Dashbord_statistique,Integer>("num_salle"));
        cln_datedebut.setCellValueFactory(new PropertyValueFactory<Dashbord_statistique,Date>("date_debut"));
        cln_datefin.setCellValueFactory(new PropertyValueFactory<Dashbord_statistique,Date>("date_fin"));
        cln_datereservation.setCellValueFactory(new PropertyValueFactory<Dashbord_statistique,Date>("date_reservation"));
        tbl_recentlyreservation.setItems(list);


    }
}
