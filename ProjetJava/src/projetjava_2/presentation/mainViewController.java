/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projetjava_2.presentation;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.fxml.JavaFXBuilderFactory;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Accordion;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.RadioButton;
import javafx.scene.control.SplitPane;
import javafx.scene.control.TextField;
import javafx.scene.control.TitledPane;
import javafx.scene.control.ToggleButton;
import javafx.scene.control.Tooltip;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.web.WebView;
import javafx.stage.Stage;
import projetjava_2.data.IRequest;
import projetjava_2.data.RequestController;
import projetjava_2.metier.IManager;
import projetjava_2.metier.MapManager;

/**
 * FXML Controller class
 *
 * @author Pierre
 */
public class mainViewController implements Initializable {
    
    private IManager map;
    
    
    public void constructor(IManager map) {
        this.map = map;
    }
    
    private Stage fenetre;
    
    @FXML
    private Button newsButton;
    @FXML
    private Tooltip newsTooltip;
    @FXML
    private Button consultButton;
    @FXML
    private Tooltip consultTooltip;
    @FXML
    private ToggleButton editButton;
    @FXML
    private SplitPane newsSplitPanel;
    @FXML
    private Button addNews;
    @FXML
    private Accordion mainAccordion;
    @FXML
    private TextField poiTextfield;
    @FXML
    private RadioButton poiNameRadio;
    @FXML
    private RadioButton poiDescriptionRadio;
    @FXML
    private ToggleButton addPoi;
    @FXML
    private TextField parcoursTextfield;
    @FXML
    private RadioButton parcoursNameRadio;
    @FXML
    private RadioButton parcoursDescriptionRadio;
    @FXML
    private RadioButton parcoursPoiRadio;
    @FXML
    private TextField parcoursPoiTextfield;
    @FXML
    private ToggleButton addParcours;
    @FXML
    private TextField lieuTextfield;
    @FXML
    private RadioButton lieuNameRadio;
    @FXML
    private RadioButton lieuDescriptionRadio;
    @FXML
    private ToggleButton addLieu;
    @FXML
    private AnchorPane mapContainer;
    @FXML
    private ImageView mapImage;
    @FXML
    private WebView DescriptionView;
    @FXML
    private AnchorPane leftSidePanel;
    @FXML
    private TextField newsTextfield;
    @FXML
    private RadioButton newsDescriptionRadio;
    @FXML
    private RadioButton newsNameRadio;
    @FXML
    private AnchorPane listeNews;
    @FXML
    private TitledPane poiConsultTitle;
    @FXML
    private AnchorPane listePoi;
    @FXML
    private TitledPane parcoursConsultTitle;
    @FXML
    private AnchorPane listeParcours;
    @FXML
    private TitledPane lieuConsultTitle;
    @FXML
    private AnchorPane listeLieu;
    @FXML
    private ComboBox<?> historiqueComboBox;
    @FXML
    private Button backwardButton;
    @FXML
    private Button forwardButton;
    @FXML
    private AnchorPane listeDescription;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        
        
        
        
        
        poiTextfield.textProperty().addListener(new ChangeListener<String>() {
                
            @Override
            public void changed(ObservableValue<? extends String> observable,
                String oldValue, String newValue) {
        
            } 
        });
        
        parcoursTextfield.textProperty().addListener(new ChangeListener<String>(){
            @Override
            public void changed(ObservableValue<? extends String> observable,
                String oldValue, String newValue) {
                
            }
        });
        
        parcoursPoiTextfield.textProperty().addListener(new ChangeListener<String>() {
                
            @Override
            public void changed(ObservableValue<? extends String> observable,
                String oldValue, String newValue) {
         
            }
        });
        
        lieuTextfield.textProperty().addListener(new ChangeListener<String>() {
                
            @Override
            public void changed(ObservableValue<? extends String> observable,
                String oldValue, String newValue) {
      
            }
        });
        
        newsButton.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                newsSplitPanel.setVisible(true);
                mainAccordion.setVisible(false);
                
                System.out.println(map.getClass().toString());
                ArrayList<HashMap<String, Object>> temp_arrayList = (ArrayList<HashMap<String, Object>>)(map.getClass().cast(map)).execute(null,null,null,null).clone();
                
                System.out.println(temp_arrayList.get(0).get("id").toString());
                //((map.getClass())map).getInstance().execute(null, null, null, null);
            }
        });
        
        consultButton.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                newsSplitPanel.setVisible(false);
                mainAccordion.setVisible(true);
                mainAccordion.setDisable(false);
            }
        });
        
        editButton.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                if(editButton.isSelected()) {
                    addPoi.setDisable(false);
                    addParcours.setDisable(false);
                    addNews.setDisable(false);
                    addLieu.setDisable(false);
                }
                else {
                    addPoi.setDisable(true);
                    addParcours.setDisable(true);
                    addNews.setDisable(true);
                    addLieu.setDisable(true);
                }
            }
        });
        
        poiNameRadio.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent t) {
               
            }
        });
        
        poiDescriptionRadio.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent t) {
                
            }
        });
        
        parcoursNameRadio.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent t) {
                
            }
        });
        
        parcoursDescriptionRadio.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent t) {
                
            }
        });
        
        parcoursPoiRadio.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent t) {
                
            }
        });
        
        lieuNameRadio.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent t) {
                
            }
        });
        
        lieuDescriptionRadio.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent t) {
                
            }
        });
        
        backwardButton.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent t) {
                
            }
        });
        
        forwardButton.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent t) {
              
            }
        });
        
        historiqueComboBox.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent t) {
               
            }
        });
        
        mapImage.setOnMousePressed(new EventHandler<MouseEvent>(){

            @Override
            public void handle(MouseEvent t) {
                
            }
            
        });
        
        mapImage.setOnMouseReleased(new EventHandler<MouseEvent>(){

            @Override
            public void handle(MouseEvent t) {
                
            }
            
        });
        
        addPoi.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent t) {
                try {
                    FXMLLoader load = new FXMLLoader();
                    
                    URL location = getClass().getResource("PoiManagerView.fxml");
                    
                    load.setLocation(location);
                    load.setBuilderFactory(new JavaFXBuilderFactory());
                    
                    Parent root = (Parent) load.load(location.openStream());
                    
                    PoiManagerViewController add = load.getController();
                    add.constructor(1);
                    
                    Scene scene = new Scene(root);
                    
                    
                    
                    fenetre.setScene(scene);
                    fenetre.show();
                            } catch (IOException ex) {
                    Logger.getLogger(mainViewController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        });
    }
    
}
