/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projetjava_2;

import java.io.IOException;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.fxml.JavaFXBuilderFactory;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import projetjava_2.data.RequestController;
import projetjava_2.metier.MapManager;
import projetjava_2.presentation.PoiManagerViewController;
import projetjava_2.presentation.mainViewController;

/**
 *
 * @author Pierre
 */
public class ProjetJava_2 extends Application {
    
    public RequestController request;
    public MapManager map;
    
    @Override
    public void start(Stage stage) throws Exception {
        
        request = new RequestController();
        map = new MapManager(request);
        
        //Parent root = FXMLLoader.load(getClass().getResource("presentation/mainView.fxml"));
        
        try {
            FXMLLoader load = new FXMLLoader();
                    
        URL location = getClass().getResource("presentation/mainView.fxml");
                    
        load.setLocation(location);
        load.setBuilderFactory(new JavaFXBuilderFactory());
                    
        Parent root = (Parent) load.load(location.openStream());
                    
        mainViewController add = load.getController();
        add.constructor(map);
        
        
        
        
        
        
        
        
        Scene scene = new Scene(root);
        
        stage.setScene(scene);
        stage.show();
        } catch (IOException ex) {
                    Logger.getLogger(mainViewController.class.getName()).log(Level.SEVERE, null, ex);
                }
    }

    public MapManager getMapManager() {
        return this.map;
    }
    
    /**
     * The main() method is ignored in correctly deployed JavaFX application.
     * main() serves only as fallback in case the application can not be
     * launched through deployment artifacts, e.g., in IDEs with limited FX
     * support. NetBeans ignores main().
     *
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }
    
}
