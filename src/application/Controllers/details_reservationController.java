package application.Controllers;

import application.Models.Details_reservation;
import application.Models.Reservationn;
import application.Models.Responsable;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.collections.ObservableListBase;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;

import java.net.URL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.ResourceBundle;

public class details_reservationController implements Initializable {
    @FXML
    private Button btn_imprimer1;

    @FXML
    private Label lbl_centre;

    @FXML
    private Label lbl_codeOrganisme;

    @FXML
    private Label lbl_codeReservation;

    @FXML
    private Label lbl_dateDebut;

    @FXML
    private Label lbl_dateFin;

    @FXML
    private Label lbl_dateReservation;

    @FXML
    private Label lbl_etat;

    @FXML
    private Label lbl_numTele;

    @FXML
    private Label lbl_organism;

    @FXML
    private Label lbl_president;

    @FXML
    private Label lbl_type;

    @FXML
    private Button btn_exit;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        try {
            afficheData();
        }
        catch (Exception ex)
        {
            System.out.println("ERROR :"+ex.getMessage());
        }
    }
    int id = reservation_controller.id_item;

    public void afficheData(){

        ObservableList<Details_reservation> list =Details_reservation.getlistDetails(id);

        lbl_codeReservation.setText(String.valueOf(list.get(0).getCode_reservation()));
        lbl_dateDebut.setText(String.valueOf(list.get(0).getDate_debut()));
        lbl_dateFin.setText(String.valueOf(list.get(0).getDate_fin()));
        lbl_type.setText(String.valueOf(list.get(0).getType()));
        lbl_etat.setText(String.valueOf(list.get(0).getEtats()));
        lbl_centre.setText(String.valueOf(list.get(0).getCentre()));
        lbl_codeOrganisme.setText(String.valueOf(list.get(0).getCode_organisme()));
        lbl_organism.setText(String.valueOf(list.get(0).getOrganisme()));
        lbl_dateReservation.setText(String.valueOf(list.get(0).getDate_reservation()));
        lbl_president.setText(String.valueOf(list.get(0).getPresident()));
    }
    public void exite()
    {
        Stage stg = (Stage) btn_exit.getScene().getWindow();
        stg.close();
    }

}
