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
import java.util.ResourceBundle;

import application.Models.Organisme;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
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
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        ObservableList<String> l = getEmailList();
        txt_selectionner_email.setItems(l);
        btn_file_loaded.setOpacity(0);
    }


    public static ObservableList<String> getEmailList(){
        ArrayList<String> list = new ArrayList<>();


        try{
           // Class.forName("com.mysql.cj.jdbc.Driver");

           // String url = "jdbc:mysql://localhost:3306/db_project_lp";

           // Connection con = DriverManager.getConnection(url,"root1","root");


            	Connection con = Connexion.getConnection();
            ResultSet resultSet = con.createStatement().executeQuery("SELECT * FROM utilisateur;");
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

//	if (organisme_formController.img_updated){
//
//        cmd.setBlob(9,new FileInputStream(getLogo_organisme()));
//    }
//    else {
//        cmd.setBlob(9, (Blob) null);
//    }

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
        try {
            System.out.println("Envoyer");
            Connection con = Connexion.getConnection();
            PreparedStatement st = con.prepareStatement("/SQL_INSERT/");

        }
        catch (SQLException ex){
            System.out.println("ERROR: "+ex.getMessage());
        }

    }

}