/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projetjava_2.presentation;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.ListView;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
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
    @FXML
    private Button btnRemovePoiFromList;
    @FXML
    private Button btnAddPoiToList;
    @FXML
    private Button btnUpPoiInList;
    @FXML
    private Button bntDownPoiInList;
    //LABEL
    @FXML
    private Label labelViewModeParcours;
    //TEXTFIELD
    @FXML
    private TextField tbLibelleParcours;
    @FXML
    private TextField tbThemeParcours;
    @FXML
    private TextField tbLienParcours;
    @FXML
    private TextField tbLienParcours2;
    @FXML
    private TextField tbLienParcours3;
    @FXML
    private TextField tbLienHpParcours1;
    @FXML
    private TextField tbLienHpParcours2;
    @FXML
    private TextField tbLienHpParcours3;
    @FXML
    private TextField tbRecherchePoiParcours;
    //TEXTAREA
    @FXML
    private TextArea taDescrpitionParcours;
    //LISTE
    @FXML
    private ListView listPoiInParcours;
    @FXML
    private ListView listResultPoiParcours;
    
    
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
        
        tbRecherchePoiParcours.textProperty().addListener(new ChangeListener<String>(){

            @Override
            public void changed(ObservableValue<? extends String> ov, String t, String t1) {
                
            }
        });
    }
    
    
    
    public void constructor(boolean isAdding)
    {
        if (isAdding == true)
            btnSupprimerParcours.setDisable(true);
        if (isAdding == false)
            btnSupprimerParcours.setDisable(false);
    }
    
}
