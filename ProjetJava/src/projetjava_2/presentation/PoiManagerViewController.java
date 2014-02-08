/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projetjava_2.presentation;

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
import javafx.scene.control.Label;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.web.WebEvent;
import javafx.stage.Popup;
import javafx.stage.Stage;

/*
 * FXML Controller class
 *
 * @author Lakio
 */
public class PoiManagerViewController implements Initializable {
    
    //BOUTON
    @FXML
    private Button btnValiderPoi;
    @FXML
    private Button btnSupprimerPoi;
    //LABEL
    @FXML
    private Label labelViewModePoi;
    //TEXTFIELD
    @FXML
    private TextField tbLibellePoi;
    @FXML
    private TextField tbCoorXPoi;
    @FXML
    private TextField tbCoorYPoi;
    @FXML
    private TextField tbAdrImagePoi;
    @FXML
    private TextField tbLienPoi1;
    @FXML
    private TextField tbLienPoi2;
    @FXML
    private TextField tbLienPoi3;
    @FXML
    private TextField tbLienHpPoi1;
    @FXML
    private TextField tbLienHpPoi2;
    @FXML
    private TextField tbLienHpPoi3;
    //TEXTAREA
    @FXML
    private TextArea taDescrpitionPoi;
    
    private Integer idPoi;
    private String LabelViewModePoi;
    private String TbLibellePoi;
    private String TbCoorXPoi;
    private String TbCoorYPoi;
    private String TbAdrImagePoi;
    private String TbLienPoi1;
    private String TbLienPoi2;
    private String TbLienPoi3;
    private String DescriptionPoi;
    
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {

        btnValiderPoi.setOnAction(new EventHandler<ActionEvent>()
        {
            @Override
            public void handle(ActionEvent event)
            {
                LabelViewModePoi = labelViewModePoi.getText();
                TbLibellePoi = tbLibellePoi.getText();
                TbCoorXPoi = tbCoorXPoi.getText();
                TbCoorYPoi = tbCoorYPoi.getText();
                TbAdrImagePoi = tbAdrImagePoi.getText();
                TbLienPoi1 = tbLienPoi1.getText();
                TbLienPoi2 = tbLienPoi2.getText();
                TbLienPoi3 = tbLienPoi3.getText();
                DescriptionPoi = makeHTMLDescription();

               //Fermeture de la fenetre
               Node  source = (Node) event.getSource();
               Stage stage  = (Stage) source.getScene().getWindow();
               stage.close();

            }
        }); 
        
        btnSupprimerPoi.setOnAction(new EventHandler<ActionEvent>()
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
    
    public Integer getIdPoi() { return this.idPoi; }
    public String getLabelViewModePoi (){return this.LabelViewModePoi;}
    public String getTbLibellePoi (){return this.TbLibellePoi;}
    public String getTbCoorXPoi (){return this.TbCoorXPoi;}
    public String getTbCoorYPoi (){return this.TbCoorYPoi;}
    public String getTbAdrImagePoi (){return this.TbAdrImagePoi;}
    public String getTbLienoi1 (){return this.TbLienPoi1;}
    public String getTbLienPoi2 (){return this.TbLienPoi2;}
    public String getTbLienPoi3 (){return this.TbLienPoi3;}
    public String getDescriptionPoi (){return this.DescriptionPoi;}
    
    
    public void constructor(Integer id)
    {
        this.idPoi = id;
    }
    public void setIdPoi(Integer id)
    {
        this.idPoi = id;
    }
    
    public String makeHTMLDescription ()
    {
        String htmlChain = new String();
        
        htmlChain += "<p>"+ taDescrpitionPoi.getText()+ "</p><br/>";
        
        if (tbLienHpPoi1 != null)
        {
            htmlChain += "<a src='"+tbLienHpPoi1.getText()+"'/>";
        }
        if (tbLienHpPoi1 != null)
        {
            htmlChain += "<a src='"+tbLienHpPoi2.getText()+"'/>";
        }
        if (tbLienHpPoi1 != null)
        {
            htmlChain += "<a src='"+tbLienHpPoi3.getText()+"'/><br/>";
        }
        
        return htmlChain;
    }
    
    
    
}
