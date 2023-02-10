package application.Models;

import application.Controllers.Connexion;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.Alert;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class Reservationn {



        private static int Id_Reservation ;
        private Date dateDebut_Reservation;
        private Date dateFin_Reservation;
        private Date date_Reservation;
        private String etats_Reservation;
        private String type_reservation;
        private int personne_invite;
        private String Description_reservation;
        private String centre_reserver;
        private String organisme_reserver;

        public static int getId_Reservation() {
            return Id_Reservation;
        }

        public static void setId_Reservation(int id_Reservation) {
            Id_Reservation = id_Reservation;
        }

    public Date getDateDebut_Reservation() {
        return dateDebut_Reservation;
    }


    public Reservationn(int id_Reservation,Date dateDebut_Reservation, Date dateFin_Reservation, String etats_Reservation,String type_reservation,String centre_reserver,String organisme_reserver) {
            this.Id_Reservation = id_Reservation;
            this.dateDebut_Reservation = dateDebut_Reservation;
            this.dateFin_Reservation = dateFin_Reservation;
            this.etats_Reservation = etats_Reservation;
            this.type_reservation = type_reservation;
            this.centre_reserver = centre_reserver;
            this.organisme_reserver = organisme_reserver;
    }

    public Date getDateFin_Reservation() {
        return dateFin_Reservation;
    }

    public void setDateDebut_Reservation(Date dateDebut_Reservation) {
        this.dateDebut_Reservation = dateDebut_Reservation;
    }

    public String getCentre_reserver() {
        return centre_reserver;
    }

    public void setCentre_reserver(String centre_reserver) {
        this.centre_reserver = centre_reserver;
    }

    public String getOrganisme_reserver() {
        return organisme_reserver;
    }

    public void setOrganisme_reserver(String organisme_reserver) {
        this.organisme_reserver = organisme_reserver;
    }

    public void setDateFin_Reservation(Date dateFin_Reservation) {
        this.dateFin_Reservation = dateFin_Reservation;
    }

    public void setDate_Reservation(Date date_Reservation) {
        this.date_Reservation = date_Reservation;
    }

    public void setEtats_Reservation(String etats_Reservation) {
        this.etats_Reservation = etats_Reservation;
    }

    public void setType_reservation(String type_reservation) {
        this.type_reservation = type_reservation;
    }

    public void setPersonne_invite(int personne_invite) {
        this.personne_invite = personne_invite;
    }

    public void setDescription_reservation(String description_reservation) {
        Description_reservation = description_reservation;
    }

    public Date getDate_Reservation() {
        return date_Reservation;
    }

    public String getEtats_Reservation() {
        return etats_Reservation;
    }

    public String getType_reservation() {
        return type_reservation;
    }

    public int getPersonne_invite() {
        return personne_invite;
    }

    public String getDescription_reservation() {
        return Description_reservation;
    }

     static ArrayList<Reservationn> lst_reservation;
    public static ObservableList<Reservationn> getReservationList()
    {
        lst_reservation = new ArrayList<>();
        Connection con = Connexion.getConnection();
        Reservationn reservationn;
        try{
            ResultSet resultSet = con.createStatement().executeQuery("SELECT reservation.id_Reservation,reservation.dateDebut_Reservation,reservation.dateFin_Reservation,reservation.type_Reservation,reservation.etats_Reservation,centre.nomCentre as 'centre_reserver',organisme.nom_Organisme as 'organisme_reserver' FROM `reservation` join centre on reservation.idCentre = centre.idCentre join organisme on organisme.id_Organisme = reservation.id_Organisme;");
            while (resultSet.next()){
                reservationn = new Reservationn(
                        resultSet.getInt("Id_Reservation"),
                        resultSet.getDate("dateDebut_Reservation"),
                        resultSet.getDate("dateFin_Reservation"),
                        resultSet.getString("etats_Reservation"),
                        resultSet.getString("type_reservation"),
                        resultSet.getString("centre_reserver"),
                        resultSet.getString("organisme_reserver")
                        );
                lst_reservation.add(reservationn);
            }
            con.close();
        }catch (Exception ex){
            System.out.println("ERROR :"+ex.getMessage());
        }
        return  FXCollections.observableArrayList(lst_reservation);
    }
    public static void updateEtats(String etats,int id)
    {
        try {
            Connection con = Connexion.getConnection();
            PreparedStatement cmd = con.prepareStatement("UPDATE reservation set etats_Reservation = "+etats+" where id_Reservation = "+id+";");
            int rowaffected= cmd.executeUpdate();
            Alert alert = new Alert(Alert.AlertType.ERROR);
            if (rowaffected>0){
                alert.setAlertType(Alert.AlertType.INFORMATION);
                alert.setTitle("Etat de Reservation");
                alert.setContentText(" La reservation est "+etats);
            }
            else {
                alert.setTitle(" Échec de la modification");
                alert.setContentText(" Une erreur , Veuillez vérifier les informations saisies et réessayer.");
            }
            alert.show();
        }catch (SQLException ex){
            System.out.println("ERROR :"+ex.getMessage());
        }
    }
    @Override
        public String toString() {
            return "Reservation{" +
                    "dateDebut_Reservation='" + dateDebut_Reservation + '\'' +
                    ", dateFin_Reservation='" + dateFin_Reservation + '\'' +
                    ", date_Reservation='" + date_Reservation + '\'' +
                    ", etats_Reservation='" + etats_Reservation + '\'' +
                    ", personne_invite='" + personne_invite + '\'' +
                    ", Description_reservation='" + Description_reservation + '\'' +
                    '}';
        }
    }


