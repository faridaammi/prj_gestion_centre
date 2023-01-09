package application.Models;

import java.util.Date;

public class Reservationn {



        private static int Id_Reservation ;
        private Date dateDebut_Reservation;
        private Date dateFin_Reservation;
        private Date date_Reservation;
        private Date etats_Reservation;
        private Date personne_invite;
        private Date Description_reservation;

        public static int getId_Reservation() {
            return Id_Reservation;
        }

        public static void setId_Reservation(int id_Reservation) {
            Id_Reservation = id_Reservation;
        }

    public Date getDateDebut_Reservation() {
        return dateDebut_Reservation;
    }

    public Reservationn(Date dateDebut_Reservation, Date dateFin_Reservation, Date date_Reservation, Date etats_Reservation, Date personne_invite, Date description_reservation) {
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

    public void setEtats_Reservation(Date etats_Reservation) {
        this.etats_Reservation = etats_Reservation;
    }

    public void setPersonne_invite(Date personne_invite) {
        this.personne_invite = personne_invite;
    }

    public void setDescription_reservation(Date description_reservation) {
        Description_reservation = description_reservation;
    }

    public Date getDate_Reservation() {
        return date_Reservation;
    }

    public Date getEtats_Reservation() {
        return etats_Reservation;
    }

    public Date getPersonne_invite() {
        return personne_invite;
    }

    public Date getDescription_reservation() {
        return Description_reservation;
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


