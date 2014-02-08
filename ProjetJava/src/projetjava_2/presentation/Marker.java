/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projetjava_2.presentation;

import javafx.event.EventHandler;
import javafx.scene.control.Label;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.paint.Paint;
import javafx.scene.shape.Polygon;

/**
 *
 * @author Lakio
 */
public class Marker{
    
    private Integer id;
    public Polygon triangle;
    public AnchorPane mapContainer;
    
    public Marker(Integer id, AnchorPane mapcontainer, String libelle)
    {
        this.mapContainer = mapcontainer;
        this.id = id;
        triangle = new Polygon();
        triangle.setOpacity(0.8);
        triangle.setFill(Paint.valueOf("Red"));
        triangle.setTranslateX(740);
        triangle.setTranslateY(420);
        triangle.getPoints().addAll(new Double[]{
        0.0, 0.0,
        -10.0, -30.0,
        10.0, -30.0});
        
        final Label label = new Label(libelle);
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
        
        mapContainer.getChildren().add(1,triangle);
    }
    
    
    public Integer getIdmarker(){return id;}
    
    
    
}