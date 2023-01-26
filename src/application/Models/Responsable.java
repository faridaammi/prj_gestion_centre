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


public class Responsable extends Employe {

    public int getId_responsable() {
        return id_responsable;
    }

    public void setId_responsable(int id_responsable) {
        this.id_responsable = id_responsable;
    }

    private int id_responsable;
    public Responsable(int id_responsable, String nom_Employe, String prenom_Employe, String profession_Employe, Date dateNaissance_Employe,String adresse, String email_utilisateur, int tele_utilisateur, Date date_de_creation,String motdepass_utilisateur) {
        super(adresse, email_utilisateur, tele_utilisateur, date_de_creation, nom_Employe, prenom_Employe, profession_Employe, dateNaissance_Employe,motdepass_utilisateur);
        this.id_responsable=id_responsable;
    }
    public Responsable() {}
    private final String SQL_INSERT_UTILISATEUR="INSERT INTO `utilisateur`(`mot_de_passe`, `adresse`, `email_utilisateur`, `tele_utilisateur`) VALUES (?,?,?,?)";
    private final String SQL_INSERT_EMPLOYEE = "INSERT INTO `employe`(`nomEmploye`, `prenomEmploye`, `professionEmploye`, `dateNaissanceEmploye`, `id_utlisateur`) VALUES (?,?,?,?,?)";
    private final String SQL_INSERT_RESPONSABLE = "INSERT INTO `responsable`(`id_employe`) VALUES (?)";


    public boolean AjouterResponsable() throws SQLException {
        Connection con = Connexion.getConnection();
        try {
            con.setAutoCommit(false);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            PreparedStatement cmd_utilisateur = con.prepareStatement(SQL_INSERT_UTILISATEUR,PreparedStatement.RETURN_GENERATED_KEYS);
            cmd_utilisateur.setString(1,super.getMotdepass_utilisateur());
            cmd_utilisateur.setString(2,super.getAdresse());
            cmd_utilisateur.setString(3,super.getEmail_utilisateur());
            cmd_utilisateur.setString(4,String.valueOf(super.getTele_utilisateur()));
            int rowaffected_user= cmd_utilisateur.executeUpdate();

            ResultSet resultset = cmd_utilisateur.getGeneratedKeys();
            resultset.next();
            int id_user =  resultset.getInt(1);

            PreparedStatement cmd_employe = con.prepareStatement(SQL_INSERT_EMPLOYEE,PreparedStatement.RETURN_GENERATED_KEYS);
            cmd_employe.setString(1,super.getNom_Employe());
            cmd_employe.setString(2,super.getPrenom_Employe());
            cmd_employe.setString(3,super.getProfession_Employe());
            cmd_employe.setDate(4,java.sql.Date.valueOf(sdf.format(super.getDateNaissance_Employe())));
            cmd_employe.setInt(5,id_user);
            int rowaffected_employe= cmd_employe.executeUpdate();

            ResultSet resultset1 = cmd_employe.getGeneratedKeys();
             resultset1.next();
            int id_employee =  resultset1.getInt(1);

            PreparedStatement cmd_responsable = con.prepareStatement(SQL_INSERT_RESPONSABLE);
            cmd_responsable.setInt(1,id_employee);

            int rowaffected_responsable= cmd_responsable.executeUpdate();

            Alert alert = new Alert(Alert.AlertType.ERROR);
            if (rowaffected_user>0 && rowaffected_employe>0 && rowaffected_responsable>0){
                con.commit();
                alert.setAlertType(Alert.AlertType.INFORMATION);
                alert.setTitle("Opération réussie");
                alert.setContentText(" La ligne a été insérée avec succès dans la base de données.");
                System.out.println(rowaffected_responsable);
                return true;
            }
            else {
                alert.setTitle(" Échec de l'insertion");
                alert.setContentText(" Une erreur s'est produite lors de l'insertion de ligne dans la base de données. Veuillez vérifier les informations saisies et réessayer.");
            }
            alert.show();
        }
        catch (SQLException ex){
            con.rollback();
            System.out.println("ERROR :"+ex.getMessage());

        }
        finally {
            con.close();
        }
        return false;
    }
    static ArrayList<Responsable> lResponsable ;
    public static ObservableList<Responsable> ListeResponsable() throws SQLException {
        lResponsable=new ArrayList<Responsable>();
        Connection con=Connexion.getConnection();
        Responsable responsable;
        try {
            ResultSet resultSet=con.createStatement().executeQuery("SELECT `id_responsable`, `nomEmploye`, `prenomEmploye`, `professionEmploye`, `dateNaissanceEmploye`,`adresse`,`tele_utilisateur`,`email_utilisateur`,`datecreation_utiisateur`,`mot_de_passe`\n" +
                    "FROM `employe` e JOIN `utilisateur` u ON e.id_utlisateur=u.id_utlisateur JOIN `responsable` ON `id_employe`=`idEmploye`;");
            while (resultSet.next()){
                //(int id_Employe, String nom_Employe, String prenom_Employe, String profession_Employe, Date dateNaissance_Employe,String adresse, String email_utilisateur, int tele_utilisateur, Date date_de_creation)
                responsable = new Responsable(resultSet.getInt("id_responsable"),resultSet.getString("nomEmploye"),resultSet.getString("prenomEmploye")
                        ,resultSet.getString("professionEmploye"),resultSet.getDate("dateNaissanceEmploye")
                        ,resultSet.getString("adresse"),resultSet.getString("email_utilisateur"),resultSet.getInt("tele_utilisateur")
                        ,resultSet.getDate("datecreation_utiisateur"),resultSet.getString("mot_de_passe"));
                lResponsable.add(responsable);

            }
        }catch (Exception e)
        {System.out.println("ERROR :"+e.getMessage());}
        finally {
            con.close();
        }
        return  FXCollections.observableArrayList(lResponsable);
    }

}
