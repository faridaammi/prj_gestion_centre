package application.Models;

public class Reservationn {



        private static int Id_Reservation ;
        private  String dateDebut_Reservation;
        private String dateFin_Reservation;
        private String  date_Reservation;
        private String etats_Reservation;
        private String personne_invite;
        private String Description_reservation;

        public static int getId_Reservation() {
            return Id_Reservation;
        }

        public static void setId_Reservation(int id_Reservation) {
            Id_Reservation = id_Reservation;
        }

        public String getDateDebut_Reservation() {
            return dateDebut_Reservation;
        }

        public void setDateDebut_Reservation(String dateDebut_Reservation) {
            this.dateDebut_Reservation = dateDebut_Reservation;
        }

        public String getDateFin_Reservation() {
            return dateFin_Reservation;
        }

        public void setDateFin_Reservation(String dateFin_Reservation) {
            this.dateFin_Reservation = dateFin_Reservation;
        }

        public String getDate_Reservation() {
            return date_Reservation;
        }

        public void setDate_Reservation(String date_Reservation) {
            this.date_Reservation = date_Reservation;
        }

        public String getEtats_Reservation() {
            return etats_Reservation;
        }

        public void setEtats_Reservation(String etats_Reservation) {
            this.etats_Reservation = etats_Reservation;
        }

        public String getPersonne_invite() {
            return personne_invite;
        }

        public void setPersonne_invite(String personne_invite) {
            this.personne_invite = personne_invite;
        }

        public String getDescription_reservation() {
            return Description_reservation;
        }

        public void setDescription_reservation(String description_reservation) {
            Description_reservation = description_reservation;
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


