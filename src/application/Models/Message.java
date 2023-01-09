package application.Models;

import java.util.Date;

public class Message {
    private static int Id_Message;
        private Date DateTime_Message;
   private String Etat_Message;
   private String  Contenu_Message;

    public static int getId_Message() {
        return Id_Message;
    }

    @Override
    public String toString() {
        return "Message{" +
                "DateTime_Message='" + DateTime_Message + '\'' +
                ", Etat_Message='" + Etat_Message + '\'' +
                ", Contenu_Message='" + Contenu_Message + '\'' +
                '}';
    }

    public static void setId_Message(int id_Message) {
        Id_Message = id_Message;
    }


    public Date getDateTime_Message() {
        return DateTime_Message;
    }

    public Message(Date dateTime_Message, String etat_Message, String contenu_Message) {
        DateTime_Message = dateTime_Message;
        Etat_Message = etat_Message;
        Contenu_Message = contenu_Message;
    }

    public void setDateTime_Message(Date dateTime_Message) {
        DateTime_Message = dateTime_Message;
    }

    public String getEtat_Message() {
        return Etat_Message;
    }

    public void setEtat_Message(String etat_Message) {
        Etat_Message = etat_Message;
    }

    public String getContenu_Message() {
        return Contenu_Message;
    }

    public void setContenu_Message(String contenu_Message) {
        Contenu_Message = contenu_Message;
    }
}
