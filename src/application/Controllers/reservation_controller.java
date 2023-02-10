package application.Controllers;

import application.Models.Centre;
import application.Models.Organisme;
import application.Models.Reservationn;
import application.Models.Responsable;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;

import javax.swing.text.html.parser.Entity;
import java.awt.event.MouseEvent;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
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
    @FXML
    private TableColumn<Reservationn, String> centre;

    @FXML
    private TableColumn<Reservationn, Integer> code_organism;

    @FXML
    private TableColumn<Reservationn, Integer> codereservation;

    @FXML
    private TableColumn<Reservationn, Date> date_debut;

    @FXML
    private TableColumn<Reservationn, Date> date_fin;

    @FXML
    private TableColumn<Reservationn, String> etats;

    @FXML
    private TableColumn<Reservationn, String> organism;

    @FXML
    private TableColumn<Reservationn, String> type;

    @FXML
    private TableView<Reservationn> table_reservation;
    public int index,id_item;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        afficheData();
    }
    @FXML
    private void goToDetaitls(ActionEvent event) throws IOException {
//        Parent rootDtl = FXMLLoader.load(getClass().getResource("/application/Views/reservation_details.fxml"));
//        Stage stage =(Stage) btn_accepter.getScene().getWindow();
//        stage.setScene(new Scene(rootDtl));
//        stage.show();
    }
    private void afficheData()
    {

        ObservableList<Reservationn> list =Reservationn.getReservationList();

        codereservation.setCellValueFactory(new PropertyValueFactory<Reservationn,Integer>("Id_Reservation"));
        date_debut.setCellValueFactory(new PropertyValueFactory<Reservationn,Date>("dateDebut_Reservation"));
        date_fin.setCellValueFactory(new PropertyValueFactory<Reservationn,Date>("dateFin_Reservation"));
        type.setCellValueFactory(new PropertyValueFactory<Reservationn,String>("type_reservation"));
        etats.setCellValueFactory(new PropertyValueFactory<Reservationn,String>("etats_Reservation"));
        centre.setCellValueFactory(new PropertyValueFactory<Reservationn,String>("centre_reserver"));
        organism.setCellValueFactory(new PropertyValueFactory<Reservationn,String>("organisme_reserver"));

        table_reservation.setItems(list);

    }
    @FXML
    void action_accepterRefuser(ActionEvent event) throws SQLException {
        Connection con = Connexion.getConnection();
        Statement cmd;
        if(event.getSource() == btn_accepter)
        {
            String query = "UPDATE reservation set etats_Reservation = 'Accepter' where id_Reservation = "+id_item+"";
            cmd = con.createStatement();
            cmd.executeUpdate(query);
            afficheData();
        }
        else if(event.getSource() == btn_refuser)
        {
            String query = "UPDATE reservation set etats_Reservation = 'Refuser' where id_Reservation = "+id_item+"";
            cmd = con.createStatement();
            cmd.executeUpdate(query);
            afficheData();
        }
    }


    @FXML
    void getItem() {
        index = table_reservation.getSelectionModel().getSelectedIndex();
        if(index <= -1)
        {
            return;
        }
        id_item = codereservation.getCellData(index);
    }
}
