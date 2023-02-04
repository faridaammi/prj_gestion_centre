package application.Controllers;

import javafx.fxml.Initializable;

import java.awt.Component;
import java.io.File;
import java.io.FileInputStream;
import java.net.URL;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.ResourceBundle;

import application.Models.Message;
import application.Models.Organisme;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.stage.FileChooser;



//import javafx.event.ActionEvent;
//import javafx.fxml.FXML;
//import javafx.scene.control.Button;
//
//public class MyController {
//  @FXML
//  private Button joinButton;
//
//  @FXML
//  public void handleJoinButtonAction(ActionEvent event) {
//    System.out.println("Join button clicked!");
//    // Add code here to join files
//  }
//}

public class Contactgest extends Component  implements Initializable {
    @FXML
    private ImageView btn_brouillon;

    @FXML
    private Button btn_envoyer;

    @FXML
    private ImageView btn_joidre;

    @FXML
    private ImageView btn_file_loaded;

    @FXML
    private TextField txt_email;

    @FXML
    private TextField txt_objet;

    @FXML
    private ComboBox<String> txt_selectionner_email;

    @FXML
    private TextArea txt_zon_message;

    private File selectedfile;

    public static boolean file_added;
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        ObservableList<String> l = getEmailList();
        txt_selectionner_email.setItems(l);
        btn_file_loaded.setOpacity(0);
    }



    public File getSelectedfile() {
        return selectedfile;
    }



    public void setSelectedfile(File selectedfile) {
        this.selectedfile = selectedfile;
    }



    public static ObservableList<String> getEmailList(){
        ArrayList<String> list = new ArrayList<>();


        try{
            Connection con = Connexion.getConnection();
            ResultSet resultSet = con.createStatement().executeQuery("SELECT email_utilisateur  FROM `responsable` join employe on employe.idEmploye  =responsable.id_employe JOIN utilisateur on employe.id_utlisateur=utilisateur.id_utlisateur;");
            while (resultSet.next()){
                list.add(resultSet.getString("email_utilisateur"));
            }
            con.close();
        }
        catch (Exception ex){
            System.out.println("ERROR :"+ex.getMessage());
        }

        return  FXCollections.observableArrayList(list);
    }



    public void addfile(ActionEvent actionEvent) {
        FileChooser fileChooser = new FileChooser();
        FileChooser.ExtensionFilter extFilterJPG = new FileChooser.ExtensionFilter("JPG files (.jpg)", ".JPG");
        FileChooser.ExtensionFilter extFilterPNG = new FileChooser.ExtensionFilter("PNG files (.png)", ".PNG");
        FileChooser.ExtensionFilter extFilterPDF = new FileChooser.ExtensionFilter("PDF files (.pdf)", ".PDF");
        FileChooser.ExtensionFilter extFilterDOC = new FileChooser.ExtensionFilter("DOC files (.docx)", ".DOCX");
        fileChooser.getExtensionFilters().addAll(extFilterJPG, extFilterPNG,extFilterPDF,extFilterDOC);
        File file = fileChooser.showOpenDialog(null);

        try {
            if (file!=null){
                file_added=true;
                selectedfile = new File(file.getAbsolutePath());
//            File iconLoaded = new File("/application/images/icon_import.png");
//            Image icon = new Image(iconLoaded.toURI().toString());
//            btn_joidre.setImage(icon);
                btn_joidre.setOpacity(0);
                btn_file_loaded.setOpacity(100);
            }

        } catch (Exception ex) {
            System.out.println("ERROR file: "+ex.getMessage());

        }
    }

    public void envoyerMsg(ActionEvent actionEvent) {
        Message msg = new Message();
        Date currentDate = new Date();
        msg.setDateTime_Message(currentDate);
        msg.setContenu_message(txt_zon_message.getText());
        msg.setEtat_Message("etat");
        msg.setFichier_Message(selectedfile);
        msg.setObjet_Message(txt_objet.getText());
        msg.setIdEmploye_emetteur(msg.getIdByEmail(txt_email.getText()));
        msg.setIdEmploye_emetteur(msg.getIdByEmail(txt_selectionner_email.getSelectionModel().getSelectedItem()));
        if (txt_zon_message.getText().isEmpty() || txt_email.getText().isEmpty() || txt_selectionner_email.getSelectionModel().getSelectedItem().isEmpty()) {
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Champs Requis");
            alert.setContentText(" Veuillez remplir tous les champs pour soumettre le formulaire.");
            alert.show();
        }

        else {
            msg.envoyer_message();
        }

    }

}