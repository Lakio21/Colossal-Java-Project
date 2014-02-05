/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package java_project;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.web.WebEvent;
import javafx.stage.Popup;

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
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO

   btnAddPOI.setOnAction(new EventHandler<ActionEvent>() {

       @Override
       public void handle(ActionEvent t) {
           System.out.println("POI ajouté !");
       }
   });
            
    }    
    
    
    
}
