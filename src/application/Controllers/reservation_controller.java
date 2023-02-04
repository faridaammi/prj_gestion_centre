package application.Controllers;

import application.Models.Reservationn;
import application.Models.Responsable;
import javafx.collections.FXCollections;
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

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
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
    @FXML
    private TableColumn<Reservationn, String> col_action;

    @FXML
    private TableColumn<Reservationn, String> col_description;

    @FXML
    private TableColumn<Reservationn, Date> col_dtDebut;

    @FXML
    private TableColumn<Reservationn, Date> col_dtFin;

    @FXML
    private TableColumn<Reservationn, Date> col_dtReservation;

    @FXML
    private TableColumn<Reservationn, String> col_etats;

    @FXML
    private TableColumn<Reservationn, Integer> col_id;

    @FXML
    private TableColumn<Reservationn, String> col_organisme;

    @FXML
    private TableColumn<Reservationn, String> col_type;
    @FXML
    private TableView<Reservationn> table_reservation;
    private Stage stageDtl;
    private Scene sceneDtl;
    private ObservableList<Reservationn> data;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

        try {
            remplir_TableView();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    @FXML
    private void goToDetaitls(ActionEvent event)   {

    }
    public void remplir_TableView() throws SQLException
    {
        ObservableList<Reservationn> listResrvation =Reservationn.afficheReservation();

        col_description.setCellValueFactory(new PropertyValueFactory<Reservationn,String>("Description"));
        col_organisme.setCellValueFactory(new PropertyValueFactory<Reservationn,String>("Organisme"));
        col_etats.setCellValueFactory(new PropertyValueFactory<Reservationn,String>("Etats"));
        col_dtReservation.setCellValueFactory(new PropertyValueFactory<Reservationn,Date>("Date Reservation"));
        col_dtDebut.setCellValueFactory(new PropertyValueFactory<Reservationn,Date>("Date Debut"));
        col_dtFin.setCellValueFactory(new PropertyValueFactory<Reservationn,Date>("Date Fin"));
        col_id.setCellValueFactory(new PropertyValueFactory<Reservationn,Integer>("ID"));
        col_type.setCellValueFactory(new PropertyValueFactory<Reservationn,String>("Type"));

        table_reservation.setItems(listResrvation);

    }

//    public void remplirTable()
//    {
//        Connection cx = Connexion.getConnection();
//
//        String query = "SELECT 'id_Reservation','dateDebut_Reservation','dateFin_Reservation','date_Reservation'," +
//                "'type_Reservation','etats_Reservation','personne_Invitee','description_Reservation','id_Organisme','idCentre' FROM reservation";
//        try (PreparedStatement preparedStatement = cx.prepareStatement(query)){
//            ResultSet resultSet = preparedStatement.executeQuery();
//            while (resultSet.next())
//            {
//                data.add(new Reservationn(
//                        resultSet.getInt("id_Reservation"),
//                        resultSet.getDate("dateDebut_Reservation"),
//                        resultSet.getDate("dateFin_Reservation"),
//                        resultSet.getDate("date_Reservation"),
//                        resultSet.getString("type_Reservation"),
//                        resultSet.getString("etats_Reservation"),
//                        resultSet.getString("personne_Invitee"),
//                        resultSet.getString("description_Reservation"),
//                        resultSet.getInt("id_Organisme"),
//                        resultSet.getInt("idCentre")
//                ));
//            }
//        }
//        catch (SQLException ex){
//            ex.printStackTrace();
//        }
//        finally {
//            try {
//                cx.close();
//            }
//            catch (SQLException ex){
//                ex.printStackTrace();
//            }
//        }
//        table_reservation.setItems(data);
//    }
    public void btnAction(ActionEvent eventAction) throws IOException
    {
        if(eventAction.getSource() == btn_accepter)
        {

        }
        else if(eventAction.getSource() == btn_refuser)
        {

        }
    }
    public void btnImprimer(ActionEvent eventImprimer) throws IOException
    {
        Parent rootDtl = FXMLLoader.load(getClass().getResource("/application/Views/reservation_details.fxml"));
        Stage stage =(Stage) btn_accepter.getScene().getWindow();
        stage.setScene(new Scene(rootDtl));
        stage.show();
    }
}
