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
import javafx.scene.Node;
import javafx.scene.control.Button;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author Lakio
 */
public class ParcoursManagerViewController implements Initializable {
    
    //BUTTON
    @FXML
    private Button btnValiderParcours;
    @FXML
    private Button btnSupprimerParcours;
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        
        btnValiderParcours.setOnAction(new EventHandler<ActionEvent>()
        {
            @Override
            public void handle(ActionEvent event)
            {
               //Fermeture de la fenetre
               Node  source = (Node) event.getSource();
               Stage stage  = (Stage) source.getScene().getWindow();
               stage.close();
            }
        }); 
        
        btnSupprimerParcours.setOnAction(new EventHandler<ActionEvent>()
        {
            @Override
            public void handle(ActionEvent event)
            {
               //Fermeture de la fenetre
               Node  source = (Node) event.getSource();
               Stage stage  = (Stage) source.getScene().getWindow();
               stage.close();
            }
        }); 
    }    
    
}
