package application.Models;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import application.Controllers.Connexion;
import application.Controllers.Contactgest;
import application.Controllers.organisme_formController;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.Alert;

public class Message {
    private final String SQL_insert_msg_respo = "INSERT INTO `message`( `dateTime_Message`, `etat_Message`, `Object_msg`, `contenu_message`,  `idEmploye_emetteur`, `idEmploye_recepteur`) VALUES (?,?,?,?,?,?);";
    private final String SQL_insert_msg_orga = "INSERT INTO `message`( `dateTime_Message`, `etat_Message`, `Object_msg`, `contenu_message`, `id_Organisme`, `idEmploye_emetteur`) VALUES (?,?,?,?,?,?);";



    private int Id_Message;
    private Date dateTime_Message;
    private String etat_Message;
    private String objet_Message;
    private String  contenu_message;
    private File fichier_Message;
    private int idEmploye_emetteur;
    private int  idEmploye_recepteur;
    private int idOrganisme;
    private String Emetteur;


    public  int getId_Message() {
        return Id_Message;
    }

    public  void setId_Message(int id_Message) {
        this.Id_Message = id_Message;
    }

    public Date getDateTime_Message() {
        return dateTime_Message;
    }

    public void setDateTime_Message(Date dateTime_Message) {
        this.dateTime_Message = dateTime_Message;
    }

    public String getEtat_Message() {
        return etat_Message;
    }

    public void setEtat_Message(String etat_Message) {
        this.etat_Message = etat_Message;
    }

    public String getObjet_Message() {
        return objet_Message;
    }

    public void setObjet_Message(String objet_Message) {
        this.objet_Message = objet_Message;
    }

    public String getContenu_message() {
        return contenu_message;
    }

    public void setContenu_message(String contenu_message) {
        this.contenu_message = contenu_message;
    }

    public File getFichier_Message() {
        return fichier_Message;
    }

    public void setFichier_Message(File fichier_Message) {
        this.fichier_Message = fichier_Message;
    }

    public int getIdEmploye_emetteur() {
        return idEmploye_emetteur;
    }

    public void setIdEmploye_emetteur(int idEmploye_emetteur) {
        this.idEmploye_emetteur = idEmploye_emetteur;
    }

    public int getIdEmploye_recepteur() {
        return idEmploye_recepteur;
    }

    public void setIdEmploye_recepteur(int idEmploye_recepteur) {
        this.idEmploye_recepteur = idEmploye_recepteur;
    }

    public int getIdOrganisme() {
        return idOrganisme;
    }

    public void setIdOrganisme(int idOrganisme) {
        this.idOrganisme = idOrganisme;
    }

    public String getEmetteur() {
        return Emetteur;
    }

    public void setEmetteur(String emetteur) {
        Emetteur = emetteur;
    }

    public Message (){}

    public Message(String objet_Message, String contenu_message, String emetteur) {
        this.objet_Message = objet_Message;
        this.contenu_message = contenu_message;
        Emetteur = emetteur;
    }

    public Message(int id, Date dateTime_Message, String etat_Message, String objet_Message, String contenu_message,
                   int idEmploye_emetteur, int idEmploye_recepteur) {
        this.Id_Message=id;
        this.dateTime_Message = dateTime_Message;
        this.etat_Message = etat_Message;
        this.objet_Message = objet_Message;
        this.contenu_message = contenu_message;
        this.idEmploye_emetteur = idEmploye_emetteur;
        this.idEmploye_recepteur = idEmploye_recepteur;

    }
    @Override
    public String toString() {
        return "Message{" +
                "DateTime_Message='" + dateTime_Message + '\'' +
                ", Etat_Message='" + etat_Message + '\'' +
                ", Contenu_Message='" + contenu_message + '\'' +
                '}';
    }
    int value;
    public int getIdByEmail_respo(String email)   {
        Connection con = Connexion.getConnection();
        try {
            ResultSet resultSet = con.createStatement().executeQuery("SELECT idEmploye  FROM `employe` join utilisateur on employe.id_utlisateur = utilisateur.id_utlisateur where email_utilisateur = '"+email +"';");
            while (resultSet.next()) {
                String id = resultSet.getString("idEmploye");
                value = Integer.parseInt(id);
            }
        }catch (Exception ex){
            System.out.println("ERROR :"+ex.getMessage());
        }
        return value;
    }

    public int getIdByEmail_orga(String emailOrga)   {
        String Sql_select = "SELECT id_Organisme FROM organisme WHERE organisme.Email = '"+emailOrga +"';";
        Connection con = Connexion.getConnection();
        try {
            ResultSet resultSet = con.createStatement().executeQuery(Sql_select);
            if (resultSet.next()) {
                 String id = resultSet.getString("id_Organisme");
                value =Integer.parseInt(id);
            }

        }catch (Exception ex){
            System.out.println("ERROR :"+ex.getMessage());
        }
        return value;
    }

    public void envoyer_msg_respo() {
        try {
            Connection con = Connexion.getConnection();
            PreparedStatement pt = con.prepareStatement(SQL_insert_msg_respo);
            //"INSERT INTO `message`( `dateTime_Message`, `etat_Message`, `Object_msg`, `contenu_message`,  `idEmploye_emetteur`, `idEmploye_recepteur`) VALUES (?,?,?,?,?,?);";
            String email = "";
            pt.setString(2,getEtat_Message());
            pt.setString(3,getObjet_Message());
            pt.setString(4,getContenu_message());
            int id = getIdByEmail_respo(email);
            pt.setInt(5,49);
            pt.setInt(6,id);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

            pt.setDate(1,java.sql.Date.valueOf(sdf.format(getDateTime_Message())));

            int rowaffected= pt.executeUpdate();
            Alert alert = new Alert(Alert.AlertType.ERROR);
            if (rowaffected>0){
                alert.setAlertType(Alert.AlertType.INFORMATION);
                alert.setTitle("Opération réussie");
                alert.setContentText(" Message envoyé");
            }
            else {
                alert.setTitle(" Échec de l'envoi");
                alert.setContentText(" Une erreur s'est produite ");
            }
            alert.show();

        }
        catch (SQLException ex) {
            System.out.println("ERROR :" + ex.getMessage());
        }
    }
    public void envoyer_msg_orga() {
        try {
            Connection con = Connexion.getConnection();
            PreparedStatement pt = con.prepareStatement(SQL_insert_msg_orga);
            //"INSERT INTO `message`( `dateTime_Message`, `etat_Message`, `Object_msg`, `contenu_message`,
            // `id_Organisme`, `idEmploye_emetteur`) VALUES (?,?,?,?,?,?);";

            pt.setString(2,getEtat_Message());
            pt.setString(3,getObjet_Message());
            pt.setString(4,getContenu_message());

            pt.setInt(5,getIdOrganisme());
            pt.setInt(6,49);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

            pt.setDate(1,java.sql.Date.valueOf(sdf.format(getDateTime_Message())));

            int rowaffected= pt.executeUpdate();
            Alert alert = new Alert(Alert.AlertType.ERROR);
            if (rowaffected>0){
                alert.setAlertType(Alert.AlertType.INFORMATION);
                alert.setTitle("Opération réussie");
                alert.setContentText(" Message envoyé");
            }
            else {
                alert.setTitle(" Échec de l'envoi");
                alert.setContentText(" Une erreur s'est produite ");
            }
            alert.show();

        }
        catch (SQLException ex) {
            System.out.println("ERROR :" + ex.getMessage());
        }
    }
    static ArrayList<Message> lst_msg;
    public static ObservableList<Message>getMessage_org()
    {
        lst_msg = new ArrayList<>();
        Connection con = Connexion.getConnection();
        try{
            ResultSet resultSet = con.createStatement().executeQuery("SELECT m.Object_msg AS 'Object_msg',m.contenu_message as 'contenu_message',o.nom_Organisme as 'Emetteur' FROM message m join organisme o on m.id_Organisme = o.id_Organisme join employe e on e.idEmploye = m.idEmploye_emetteur;");
            while (resultSet.next()){
                Message msg = new Message(
                        resultSet.getString("Object_msg"),
                        resultSet.getString("contenu_message"),
                        resultSet.getString("Emetteur")
                );
                lst_msg.add(msg);
            }
            con.close();
        }catch (Exception ex){
            System.out.println("ERROR :"+ex.getMessage());
        }
        return  FXCollections.observableArrayList(lst_msg);
    }
    public static ObservableList<Message>getMessage_respo()
    {
        lst_msg = new ArrayList<>();
        Connection con = Connexion.getConnection();
        try{
            ResultSet resultSet = con.createStatement().executeQuery("SELECT m.Object_msg as 'Object_msg',m.contenu_message as 'contenu_message',CONCAT(e.nomEmploye,' ',e.prenomEmploye)AS 'Emetteur' FROM message m join employe e on m.idEmploye_recepteur = e.idEmploye;");
            while (resultSet.next()){
                Message msg = new Message(
                        resultSet.getString("Object_msg"),
                        resultSet.getString("contenu_message"),
                        resultSet.getString("Emetteur")
                );
                lst_msg.add(msg);
            }
            con.close();
        }catch (Exception ex){
            System.out.println("ERROR :"+ex.getMessage());
        }
        return  FXCollections.observableArrayList(lst_msg);
    }
}