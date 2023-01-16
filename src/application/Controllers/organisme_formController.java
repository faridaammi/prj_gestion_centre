package application.Controllers;

import application.Models.Organisme;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

import javax.swing.*;
import java.awt.*;
import java.net.URL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ResourceBundle;

public class organisme_formController extends Component implements Initializable {
    @FXML
    private TableView<Organisme> tbl_organisme;

    @FXML
    private TableColumn<Organisme, Integer> cln_code;

    @FXML
    private TableColumn<Organisme, String> cln_datecreation;

    @FXML
    private TableColumn<Organisme, String> cln_email;

    @FXML
    private TableColumn<Organisme, String> cln_name;

    @FXML
    private TableColumn<Organisme, String> cln_president;

    @FXML
    private TableColumn<Organisme, String> cln_statu;

    @FXML
    private TableColumn<Organisme, String> cln_telephone;

    @FXML
    private TableColumn<Organisme, String> cln_type;
    @FXML
    private DatePicker dp_date_creation;

    @FXML
    private TextField txt_adresse_organisme;

    @FXML
    private TextField txt_code_inscription;

    @FXML
    private TextField txt_email_organisme;

    @FXML
    private TextField txt_nom_organisme;

    @FXML
    private TextField txt_nom_president;

    @FXML
    private ComboBox<String> txt_statut;

    @FXML
    private TextField txt_tele_organisme;

    @FXML
    private TextField txt_type_activite;



    public void AjouterOrganisme(ActionEvent actionEvent) {
        String getTxt_nom_orga=txt_nom_organisme.getText();
        String getTxt_code_inscr =txt_code_inscription.getText();
        String getTxt_adresse=txt_adresse_organisme.getText();
        String getTxt_email=txt_email_organisme.getText();
        String getTxt_tele=txt_tele_organisme.getText();
        String getTxt_nom_president=txt_nom_president.getText();
        String getTxtdp_date_creation=dp_date_creation.getValue().toString();
        String getTxt_statut=txt_statut.getSelectionModel().getSelectedItem();
        String getTxt_type_activite=txt_type_activite.getText();
        if (getTxt_nom_orga.isEmpty() || getTxt_code_inscr.isEmpty() || getTxt_adresse.isEmpty() || getTxt_email.isEmpty() || getTxt_tele.isEmpty() || getTxt_nom_president.isEmpty() || getTxtdp_date_creation.isEmpty() || getTxt_statut.isEmpty() || getTxt_type_activite.isEmpty())
        {
            JOptionPane.showMessageDialog(this,
                    "Veuillez remplir tous les champs",
                    "Attention",
                    JOptionPane.ERROR_MESSAGE);
        }
        else{
            JOptionPane.showMessageDialog(this,
                    "Success",
                    "Information",
                    JOptionPane.INFORMATION_MESSAGE);
        }

    }
    public ObservableList<Organisme> getorganismeList(){
        ObservableList<Organisme> OrganismeList = FXCollections.observableArrayList();
        Connection con = Connexion.getConnection();
        Organisme organisme;
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();
        try{
            ResultSet resultSet = con.createStatement().executeQuery("SELECT * FROM organisme");
            while (resultSet.next()){
                organisme = new Organisme(resultSet.getInt(1),resultSet.getString(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(4),"12/01/1956","065116898989","elhaiba@gmail.com",resultSet.getString(5));
                OrganismeList.add(organisme);
            }



        }catch (Exception ex){
            System.out.println("ERROR :"+ex.getMessage());

        }


        return  OrganismeList;
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        showorganismes();

    }
    public void showorganismes(){
        ObservableList<Organisme> list =getorganismeList();

        cln_code.setCellValueFactory(new PropertyValueFactory<Organisme,Integer>("code_organisme"));
        cln_name.setCellValueFactory(new PropertyValueFactory<Organisme,String>("nom_organisme"));
        cln_datecreation.setCellValueFactory(new PropertyValueFactory<Organisme,String>("date_decreation"));
        cln_email.setCellValueFactory(new PropertyValueFactory<Organisme,String>("email"));
        cln_type.setCellValueFactory(new PropertyValueFactory<Organisme,String>("type_organisme"));
        cln_statu.setCellValueFactory(new PropertyValueFactory<Organisme,String>("status_organisme"));
        cln_president.setCellValueFactory(new PropertyValueFactory<Organisme,String>("president_organisme"));
        cln_telephone.setCellValueFactory(new PropertyValueFactory<Organisme,String>("telephone"));
        tbl_organisme.setItems(list);

    }
}
