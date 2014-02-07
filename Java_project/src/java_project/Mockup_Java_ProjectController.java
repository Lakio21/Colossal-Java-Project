/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package java_project;

import java.io.File;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.beans.property.ReadOnlyDoubleProperty;
import javafx.beans.value.ObservableValue;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Accordion;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.RadioButton;
import javafx.scene.control.SplitPane;
import javafx.scene.control.TextField;
import javafx.scene.control.ToggleButton;
import javafx.scene.control.Tooltip;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.DragEvent;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.paint.Paint;
import javafx.scene.shape.Polygon;
import javafx.scene.shape.Shape;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebView;
import javax.swing.event.ChangeListener;

/**
 * FXML Controller class
 *
 * @author Pierre
 */
public class Mockup_Java_ProjectController implements Initializable {
    private double a, b;
    
    @FXML
    private TextField poiTextfield;
    @FXML
    private TextField parcoursTextfield;
    @FXML
    private TextField lieuTextfield;
    
    @FXML
    private Button newsButton;
    @FXML
    private Button consultButton;
    @FXML
    private ToggleButton editButton;
    
    @FXML
    private Tooltip newsTooltip;
    @FXML
    private Tooltip consultTooltip;
    @FXML
    private Tooltip editTooltip;
    
    @FXML
    private ToggleButton addPoi;
    @FXML
    private ToggleButton addParcours;
    @FXML
    private Button addNews;
    @FXML
    private ToggleButton addLieu;
    
    @FXML
    private SplitPane newsSplitPanel;
    @FXML
    private Accordion mainAccordion;
    @FXML
    private ImageView mapImage;
    
    @FXML
    private WebView DescriptionView;
    
    @FXML
    private AnchorPane mapContainer;
    
    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        //Image imageMap = new Image("file:jpg\\test_map.jpg");
        
        RadioButton radio1 = new RadioButton();
        radio1.setOnAction(new EventHandler<ActionEvent>() {

            @Override
            public void handle(ActionEvent t) {
                
            }
        });
        
        
        
        
        Polygon triangle = new Polygon();
        triangle.setOpacity(0.8);
        triangle.setFill(Paint.valueOf("Red"));
        triangle.setTranslateX(740);
        triangle.setTranslateY(420);
        
        Tooltip tooltip = new Tooltip("Cesi.Exia");
        
        triangle.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                newsButton.setText("Markertest");
            }
        });
        
        final Label label = new Label("Cesi.Exia");
        label.setTranslateX(triangle.getTranslateX());
        label.setTranslateY(triangle.getTranslateY());
        label.setStyle("-fx-background-color: white;-fx-border-width: 3; -fx-border-color: black; -fx-padding: 2 2 2 2; -fx-font-size: 18; -fx-font-weight: bold; -fx-border-radius: 5");
        
        
        triangle.setOnMouseEntered(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                mapContainer.getChildren().add(2, label);
            }
        });
        
        triangle.setOnMouseExited(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                mapContainer.getChildren().remove(label);
            }
        });
        
        triangle.getPoints().addAll(new Double[]{
        0.0, 0.0,
        -10.0, -30.0,
        10.0, -30.0});
        
        mapContainer.getChildren().add(1,triangle);
        
        
        poiTextfield.textProperty().addListener(new javafx.beans.value.ChangeListener<String>() {
                
            @Override
            public void changed(ObservableValue<? extends String> observable,
                String oldValue, String newValue) {
      
                newsButton.setText(newValue);
            }
        });
        
        
        
        
        
        
        //NOOB
        //NOOB
        //NOOB
        //NOOB
        //NOOB
        //NOOB
        //NOOB
        //:)
        Image imageMap = new Image(getClass().getResourceAsStream("/java_project/jpg/test_map.png"));
        //Image imageMap = new Image(getClass().getResource("jpg\\test_map.jpg").toExternalForm());
        
        mapImage.setFitHeight(imageMap.getHeight());
        mapImage.setFitWidth(imageMap.getWidth());
        mapImage.setImage(imageMap);
        
        
        
        WebEngine webEngine = DescriptionView.getEngine();
        webEngine.loadContent("<h1><strong>TestHtml</strong></h1></br><a href=\"https://www.google.fr\">test_lien</a>");
        
        
        
        //mapImage.setTranslateX(-100);
        //mapImage.setTranslateY(-200);
        
        
        
        /*mapImage.setOnDragDetected(new EventHandler<MouseEvent>() {
           @Override
           public void handle(MouseEvent event) {
               a = event.getX();
               System.out.println("X = " + a);
               b = event.getY();
               System.out.println("Y = " + b);
               
               //mapImage.setTranslateX(event.getX());
               //mapImage.setTranslateY(event.getY());
           }
        });*/
        
        
        
        
        mapImage.setOnMousePressed(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                a = event.getX();
                b = event.getY();
                System.out.println("press X = " + event.getX());
                System.out.println("press Y = " + event.getY());
                System.out.println(mapImage.getImage().getHeight());
                System.out.println(mapImage.getImage().getWidth());
            }
        });
        
        mapImage.setOnMouseMoved(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                if(event.isPrimaryButtonDown()) {
                    System.out.println("release X = " + event.getX());
                    System.out.println("release Y = " + event.getY());
                    mapImage.setTranslateX(mapImage.getTranslateX() + (event.getX() - a));
                    System.out.println("translate X = " + (event.getX() - a));
                    mapImage.setTranslateY(mapImage.getTranslateY() + (event.getY() - b));
                    System.out.println("translate Y = " + (event.getY() - b));

                }
            }
        });
        
        mapImage.setOnMouseReleased(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                System.out.println("release X = " + event.getX());
                System.out.println("release Y = " + event.getY());
                mapImage.setTranslateX(mapImage.getTranslateX() + (event.getX() - a));
                System.out.println("translate X = " + (event.getX() - a));
                mapImage.setTranslateY(mapImage.getTranslateY() + (event.getY() - b));
                System.out.println("translate Y = " + (event.getY() - b));
            }
        });
        
        /*mapImage.setOnDragDropped(new EventHandler<DragEvent>() {
           
           public void handle(DragEvent event) {
               System.out.println("X = " + event.getX());
               System.out.println("Y = " + event.getY());
               mapImage.setTranslateX(a - event.getX());
               mapImage.setTranslateY(b - event.getY());
           }
        });*/
        
        
        
        
        
        newsButton.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                newsSplitPanel.setVisible(true);
                mainAccordion.setVisible(false);
            }
        });
        
        consultButton.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                newsSplitPanel.setVisible(false);
                mainAccordion.setVisible(true);
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
    }    
    
}
