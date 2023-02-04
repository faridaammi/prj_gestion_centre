package application.Models;

import application.Controllers.Connexion;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

public class Reservationn {

        private static int Id_Reservation ;
        private Date dateDebut_Reservation;
        private Date dateFin_Reservation;
        private Date date_Reservation;
        private String etats_Reservation;
        private String personne_invite;
        private String Description_reservation;

        public static int getId_Reservation() {
            return Id_Reservation;
        }

        public static void setId_Reservation(int id_Reservation) {
            Id_Reservation = id_Reservation;
        }

    public Date getDateDebut_Reservation() {
        return dateDebut_Reservation;
    }

    public Reservationn(int idReservation, Date dateDebut_Reservation, Date dateFin_Reservation, Date date_Reservation, String etats_Reservation, String personne_invite, String description_reservation, String descriptionReservation, int idOrganisme, int idCentre) {
        this.dateDebut_Reservation = dateDebut_Reservation;
        this.dateFin_Reservation = dateFin_Reservation;
        this.date_Reservation = date_Reservation;
        this.etats_Reservation = etats_Reservation;
        this.personne_invite = personne_invite;
        Description_reservation = description_reservation;
    }

    public Date getDateFin_Reservation() {
        return dateFin_Reservation;
    }

    public void setDateDebut_Reservation(Date dateDebut_Reservation) {
        this.dateDebut_Reservation = dateDebut_Reservation;
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

    public void setPersonne_invite(String personne_invite) {
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

    public String getPersonne_invite() {
        return personne_invite;
    }

    public String getDescription_reservation() {
        return Description_reservation;
    }

    static ArrayList<Reservationn> listReservation ;

    public static ObservableList<Reservationn> afficheReservation() throws SQLException
    {
        listReservation=new ArrayList<Reservationn>();
        Connection cx = Connexion.getConnection();
        Reservationn reservationn;
        if(cx == null)
        {
            return null;
        }
        ResultSet resultSet=cx.createStatement().executeQuery( "SELECT 'id_Reservation','dateDebut_Reservation','dateFin_Reservation','date_Reservation'," +
                "'type_Reservation','etats_Reservation','personne_Invitee','description_Reservation','id_Organisme','idCentre' FROM reservation");
        try {

            while (resultSet.next())
            {
               reservationn = new Reservationn(
                        resultSet.getInt("id_Reservation"),
                        resultSet.getDate("dateDebut_Reservation"),
                        resultSet.getDate("dateFin_Reservation"),
                        resultSet.getDate("date_Reservation"),
                        resultSet.getString("type_Reservation"),
                        resultSet.getString("etats_Reservation"),
                        resultSet.getString("personne_Invitee"),
                        resultSet.getString("description_Reservation"),
                        resultSet.getInt("id_Organisme"),
                        resultSet.getInt("idCentre")
                        );
                listReservation.add(reservationn);
            }
        }
        catch (SQLException ex){
           ex.printStackTrace();
        }
        finally {
                cx.close();
        }
        return  FXCollections.observableArrayList(listReservation);
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


