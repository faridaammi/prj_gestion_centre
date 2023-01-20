package application.Models;
import application.Controllers.Connexion;
import application.Controllers.organisme_formController;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.Alert;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;

public class Organisme {
    private final String SQL_INSERT = "INSERT INTO organisme( `code_Organisme`, `nom_Organisme`, `Adresse`, `Telephone`, `Email`, `type_Organisme`, `status_Organisme`, `president_Organisme`, `logo_Organisme`, `Date_de_creation`, `id_utlisateur`, `idCategorie`) VALUES (?,?,?,?,?,?,?,?,?,?,null,null)";
   static ArrayList<Organisme> list ;
    private int id_organisme;
    private String code_organisme;
    private String nom_organisme;
    private  String type_organisme;
    private String status_organisme;
    private Date date_decreation;
    private String telephone;
    private  String email;
    private  String adresse;
    private  Categorie categorie;
    private String president_organisme;


    private File  logo_organisme;

    public Date getDate_decreation() {
        return date_decreation;
    }

    public void setDate_decreation(Date date_decreation) {
        this.date_decreation = date_decreation;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }





    public int getId_organisme() {
        return id_organisme;
    }

    public String getCode_organisme() {
        return code_organisme;
    }

    public String getNom_organisme() {
        return nom_organisme;
    }

    public String getType_organisme() {
        return type_organisme;
    }

    public String getStatus_organisme() {
        return status_organisme;
    }

    public String getPresident_organisme() {
        return president_organisme;
    }

    public File getLogo_organisme() {
        return logo_organisme;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public Categorie getCategorie() {
        return categorie;
    }

    public void setCategorie(Categorie categorie) {
        this.categorie = categorie;
    }

    public void setId_organisme(int id_organisme) {
        this.id_organisme = id_organisme;
    }

    public void setCode_organisme(String code_organisme) {
        this.code_organisme = code_organisme;
    }

    public void setNom_organisme(String nom_organisme) {
        this.nom_organisme = nom_organisme;
    }

    public void setType_organisme(String type_organisme) {
        this.type_organisme = type_organisme;
    }

    public void setStatus_organisme(String status_organisme) {
        this.status_organisme = status_organisme;
    }

    public void setPresident_organisme(String president_organisme) {
        this.president_organisme = president_organisme;
    }

    public void setLogo_organisme(File logo_organisme) {
        this.logo_organisme = logo_organisme;
    }
    public  Organisme(){}

    public Organisme(int id_organisme, String code_organisme, String nom_organisme, String type_organisme, String status_organisme, Date date_decreation, String telephone, String email, String president_organisme,String adresse) {
        this.id_organisme = id_organisme;
        this.code_organisme = code_organisme;
        this.nom_organisme = nom_organisme;
        this.type_organisme = type_organisme;
        this.status_organisme = status_organisme;
        this.date_decreation = date_decreation;
        this.telephone = telephone;
        this.email = email;
        this.adresse= adresse;
        this.president_organisme = president_organisme;
       // this.logo_organisme = logo_organisme;
    }

    @Override
    public String toString() {
        return "Organisme{" +
                "id_organisme=" + id_organisme +
                ", code_organisme=" + code_organisme +
                ", nom_organisme='" + nom_organisme + '\'' +
                ", type_organisme='" + type_organisme + '\'' +
                ", status_organisme='" + status_organisme + '\'' +
                ", date_decreation=" + date_decreation +
                ", telephone='" + telephone + '\'' +
                ", email='" + email + '\'' +
                ", president_organisme='" + president_organisme + '\'' +
                ", logo_organisme=" + logo_organisme +
                '}';
    }
    public static ObservableList<Organisme> getorganismeList(){
        list = new ArrayList<>();
        Connection con = Connexion.getConnection();
        Organisme organisme;
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();
        try{
            ResultSet resultSet = con.createStatement().executeQuery("SELECT * FROM organisme");
            while (resultSet.next()){
                organisme = new Organisme(resultSet.getInt("id_Organisme"),resultSet.getString("code_Organisme"),resultSet.getString("nom_Organisme")
                        ,resultSet.getString("type_Organisme"),resultSet.getString("status_Organisme")
                        ,resultSet.getDate("Date_de_creation"),resultSet.getString("Telephone"),resultSet.getString("Email")
                        ,resultSet.getString("president_Organisme"),resultSet.getString("Adresse"));
                list.add(organisme);
            }
            con.close();



        }catch (Exception ex){
            System.out.println("ERROR :"+ex.getMessage());

        }


        return  FXCollections.observableArrayList(list);
    }
    public void add()  {
        try {
            Connection con = Connexion.getConnection();
            PreparedStatement cmd = con.prepareStatement(SQL_INSERT);
            cmd.setString(1,getCode_organisme());
            cmd.setString(2,getNom_organisme());
            cmd.setString(3,getAdresse());
            cmd.setString(4,getTelephone());
            cmd.setString(5,getEmail());
            cmd.setString(6,getType_organisme());
            cmd.setString(7,getStatus_organisme());
            cmd.setString(8,getPresident_organisme());
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            if (organisme_formController.img_updated){

                cmd.setBlob(9,new FileInputStream(getLogo_organisme()));
            }
            else {
                cmd.setBlob(9, (Blob) null);
            }
            cmd.setDate(10,java.sql.Date.valueOf(sdf.format(getDate_decreation())));
            int rowaffected= cmd.executeUpdate();
            Alert alert = new Alert(Alert.AlertType.ERROR);
            if (rowaffected>0){
                alert.setAlertType(Alert.AlertType.CONFIRMATION);
                alert.setTitle("Opération réussie");
                alert.setContentText(" La ligne a été insérée avec succès dans la base de données.");
            }
            else {
                alert.setTitle(" Échec de l'insertion");
                alert.setContentText(" Une erreur s'est produite lors de l'insertion de ligne dans la base de données. Veuillez vérifier les informations saisies et réessayer.");
            }
            alert.show();


        }
        catch (SQLException ex){
            System.out.println("ERROR :"+ex.getMessage());

        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }


    }
}
