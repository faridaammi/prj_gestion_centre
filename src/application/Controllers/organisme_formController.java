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
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.stage.FileChooser;
import java.awt.*;

import java.io.File;
import java.net.URL;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.ResourceBundle;

public class organisme_formController extends Component implements Initializable {
    @FXML
    private TableView<Organisme> tbl_organisme;
    @FXML
    private ImageView img_organisme;


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

    ZoneId defaultZoneId = ZoneId.systemDefault();
    Image image;
    File selectedfile;
   public static boolean img_updated = false;


    public void AjouterOrganisme(ActionEvent actionEvent) {
        String getTxt_nom_orga=txt_nom_organisme.getText();
        String getTxt_code_inscr =txt_code_inscription.getText();
        String getTxt_adresse=txt_adresse_organisme.getText();
        String getTxt_email=txt_email_organisme.getText();
        String getTxt_tele=txt_tele_organisme.getText();
        String getTxt_nom_president=txt_nom_president.getText();
        String getTxt_type_activite=txt_type_activite.getText();
        if (getTxt_nom_orga.isEmpty() || getTxt_code_inscr.isEmpty() || getTxt_adresse.isEmpty() || getTxt_email.isEmpty() || getTxt_tele.isEmpty() || getTxt_nom_president.isEmpty() || dp_date_creation.getValue()==null || txt_statut.getValue()==null || getTxt_type_activite.isEmpty())
        {
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Champs requis");
            alert.setContentText(" Veuillez remplir tous les champs pour soumettre le formulaire.");
            alert.show();

        }
        else{
            Date getTxtdp_date_creation=Date.from(dp_date_creation.getValue().atStartOfDay(defaultZoneId).toInstant());
            String getTxt_statut=txt_statut.getSelectionModel().getSelectedItem();

            Organisme organisme = new Organisme();
            organisme.setCode_organisme(getTxt_code_inscr);
            organisme.setNom_organisme(getTxt_nom_orga);
            organisme.setAdresse(getTxt_adresse);
            organisme.setEmail(getTxt_email);
            organisme.setDate_decreation(getTxtdp_date_creation);
            organisme.setTelephone(getTxt_tele);
            organisme.setType_organisme(getTxt_type_activite);
            organisme.setPresident_organisme(getTxt_nom_president);
            organisme.setStatus_organisme(getTxt_statut);
            if (img_updated){
                organisme.setLogo_organisme(selectedfile);
            }
            organisme.add();
            showorganismes();



        }

    }


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        showcomboitems();
        showorganismes();

    }
    public void showorganismes(){
        ObservableList<Organisme> list =Organisme.getorganismeList();

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
    public void showcomboitems(){
        ObservableList<String> items = FXCollections.observableArrayList(new ArrayList<String>(Arrays.asList("Association à but non lucratif","Organisation à but commercial",
                "Organisation à but non commercial","Société à responsabilité limitée","Société anonyme","Organisation à but religieux",
                "Fondation","Syndicat","Groupement d'intérêt économique")));
        txt_statut.setItems(items);



    }

    public void addimg(ActionEvent actionEvent) {
        FileChooser fileChooser = new FileChooser();
        FileChooser.ExtensionFilter extFilterJPG = new FileChooser.ExtensionFilter("JPG files (*.jpg)", "*.JPG");
        FileChooser.ExtensionFilter extFilterPNG = new FileChooser.ExtensionFilter("PNG files (*.png)", "*.PNG");
        fileChooser.getExtensionFilters().addAll(extFilterJPG, extFilterPNG);
        File file = fileChooser.showOpenDialog(null);

        try {
            if (file!=null){


                image = new Image(file.getAbsoluteFile().toURI().toString(), img_organisme.getFitWidth(), img_organisme.getFitHeight(), true, true);
                img_organisme.setImage(image);
                img_organisme.setPreserveRatio(true);
                img_updated= true;
                selectedfile = new File(file.getAbsolutePath());


            }

        } catch (Exception ex) {
            System.out.println("ERROR: "+ex.getMessage());
        }
    }
}
