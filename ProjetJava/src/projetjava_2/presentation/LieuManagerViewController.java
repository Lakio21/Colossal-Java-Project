/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projetjava_2.presentation;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

/**
 * FXML Controller class
 *
 * @author Lakio
 */
public class LieuManagerViewController implements Initializable {
    
    //BUTTON
    @FXML
    private Button btnValiderLieu; 
    @FXML
    private Button btnSupprimerLieu;
    //LABEL
    @FXML
    private Label labelViewModeLieu;
    //TEXTFIELD
    @FXML
    private TextField tbLibelleLieu;
    @FXML
    private TextField tbAdrImageLieu;
    //COMBOBOX
    @FXML
    private ComboBox cbLieuParentLieu;
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
        
        btnValiderLieu.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent t) {
                
            }
        });
        
        btnSupprimerLieu.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent t) {
               
            }
        });
    }
    
    public void constructor()
    {
        
    }
}
