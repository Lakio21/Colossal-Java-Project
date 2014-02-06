/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package java_project;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.web.WebEvent;
import javafx.stage.Popup;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author Lakio
 */
public class Mockup_AddController implements Initializable {

    /**
     * Initializes the controller class.
     */
    
    @FXML
    private Button btnAddPOI;
    
    @FXML
    private TextField tbLibellePOI;
    
    @FXML
    private TextField tbCoorXPOI;
    
    @FXML
    private TextField tbCoorYPOI;
    
    @FXML
    private TextField tbAdrImagePOI;
    
    @FXML
    private TextArea taDescrpitionPOI;
    
    @FXML
    private TextField tbLien1;
    
    @FXML
    private TextField tbLien2;
    
    @FXML
    private TextField tbLien3;
    
    @FXML
    private TextField tbLienHp1;
    
    @FXML
    private TextField tbLienHp2;
    
    @FXML
    private TextField tbLienHp3;
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO

    btnAddPOI.setOnAction(new EventHandler<ActionEvent>()
    {

       @Override
       public void handle(ActionEvent event)
       {
           System.out.println(tbLibellePOI.getText());
           System.out.println(tbCoorXPOI.getText());
           System.out.println(tbCoorYPOI.getText());
           System.out.println(tbAdrImagePOI.getText());
           System.out.println(taDescrpitionPOI.getText());
           System.out.println(tbLien1.getText());
           System.out.println(tbLien2.getText());
           System.out.println(tbLien3.getText());
           System.out.println(tbLienHp1.getText());
           System.out.println(tbLienHp2.getText());
           System.out.println(tbLienHp3.getText());
           
           System.out.println(makeHTML());
           
           Node  source = (Node)  event.getSource();
           Stage stage  = (Stage) source.getScene().getWindow();
           stage.close();

           
       }
       
    });
            
    }
    
    public String makeHTML ()
    {
        String htmlChain = new String();
        
        htmlChain += "<p>"+ taDescrpitionPOI.getText()+ "</p><br/>";
        htmlChain += "<img src='"+tbLien1.getText()+"'/>";
        htmlChain += "<img src='"+tbLien2.getText()+"'/>";
        htmlChain += "<img src='"+tbLien3.getText()+"'/><br/>";
        htmlChain += "<a src='"+tbLienHp1.getText()+"'/>";
        htmlChain += "<a src='"+tbLienHp2.getText()+"'/>";
        htmlChain += "<a src='"+tbLienHp3.getText()+"'/><br/>";
        
        return htmlChain;
    }
    
    
    
}
