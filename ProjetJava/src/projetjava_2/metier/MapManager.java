/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projetjava_2.metier;

import java.util.ArrayList;
import java.util.HashMap;
import projetjava_2.data.IRequest;

/**
 *
 * @author Pierre
 */
public class MapManager implements IManager{
    
    private static MapManager instance;
    
    public static MapManager getInstance() {
        if (null == instance) {
            instance = new MapManager();
        }
        return instance;
    }
    
    private MapManager() {
    }
    
    @Override
    public ArrayList<HashMap<String, Object>> execute() {
        return null;
    }
    
    
    public ArrayList<HashMap<String, Object>> execute(Double mapContainerHeight, Double mapContainerWidth, Double mapCenterX, Double mapCenterY) {
        
        
        
        
        return new ArrayList<HashMap<String, Object>>();
    }
    
    public ArrayList<HashMap<String, Object>> execute(Double mapContainerHeight, Double mapContainerWidth) {
        
        
        
        
        return new ArrayList<HashMap<String, Object>>();
    }
}
