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
import java.util.Date;

import application.Controllers.Connexion;
import application.Controllers.Contactgest;
import application.Controllers.organisme_formController;
import javafx.scene.control.Alert;

public class Message {
    private final String SQL_insert_message = "INSERT INTO `message`( `dateTime_Message`, `etat_Message`, `Object_msg`, `contenu_message`, `fichier_Message`, `id_Organisme`, `idEmploye_emetteur`, `idEmploye_recepteur`) VALUES (?,?,?,?,?,?,?,?);";



    private int Id_Message;
    private Date dateTime_Message;
    private String etat_Message;
    private String objet_Message;
    private String  contenu_message;
    private File fichier_Message;
    private int idEmploye_emetteur;
    private int  idEmploye_recepteur;

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

    public Message() {}

    public Message(int id,Date dateTime_Message, String etat_Message, String objet_Message, String contenu_message,
                   File fichier_Message, int idEmploye_emetteur, int idEmploye_recepteur) {
        this.Id_Message=id;
        this.dateTime_Message = dateTime_Message;
        this.etat_Message = etat_Message;
        this.objet_Message = objet_Message;
        this.contenu_message = contenu_message;
        this.fichier_Message = fichier_Message;
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
    public int getIdByEmail(String email)   {
        String Sql_select = "SELECT idEmploye  FROM `employe` join utilisateur on employe.id_utlisateur=utilisateur.id_utlisateur where email_utilisateur ="+email +";";
        Connection con = Connexion.getConnection();
        try {
            ResultSet resultSet = con.createStatement().executeQuery(Sql_select);
            if (resultSet.next()) {
                int id = resultSet.getInt("idEmploye");
                return id;
            }

        }catch (Exception ex){
            System.out.println("ERROR :"+ex.getMessage());

        }

        return 0;
    }

    public void envoyer_message() {
        try {
            Connection con = Connexion.getConnection();
            PreparedStatement pt = con.prepareStatement(SQL_insert_message);

            pt.setString(2,getEtat_Message());
            pt.setString(3,getObjet_Message());
            pt.setString(4,getContenu_message());
            pt.setInt(6,0);
            pt.setInt(7,getIdEmploye_emetteur());
            pt.setInt(8,getIdEmploye_recepteur());
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            if (Contactgest.file_added){
                pt.setBlob(5,new FileInputStream(getFichier_Message()));
            }
            else {
                pt.setBlob(5, (Blob) null);
            }
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
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }
    }





}