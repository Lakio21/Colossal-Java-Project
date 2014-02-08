/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projetjava_2.presentation;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
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
import javafx.scene.layout.AnchorPane;
import javafx.scene.web.WebView;

/**
 * FXML Controller class
 *
 * @author Pierre
 */
public class mainViewController implements Initializable {
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
        // TODO
    }    
    
}
