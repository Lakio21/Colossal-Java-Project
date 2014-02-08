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
    
    private IRequest request;
    
    private static MapManager instance;
    
    @Override
    public MapManager getInstance() {
        
        return instance;
    }
    
    public MapManager(IRequest request) {
        this.request = request;
    }
    
    @Override
    public ArrayList<HashMap<String, Object>> execute() {
        return null;
    }
    
    @Override
    public ArrayList<HashMap<String, Object>> execute(Double mapContainerHeight, Double mapContainerWidth, Double mapCenterX, Double mapCenterY) {
        
        //String requestType, ArrayList<String> values, ArrayList<Boolean> fieldsTested, String Table
        request.getInstance().executeRequest("select", null, null, null);
        //Class.forName(request.getClass().getName());
        //System.out.println(request.getClass().getName());
        ArrayList<HashMap<String, Object>> temp_Array = new ArrayList<>();
        
        HashMap<String, Object> temp_map = new HashMap<>();
        temp_map.put("id", "test");
        temp_map.put("libelle", "testLib");
        Integer[] array = new Integer[] { 1};
        temp_map.put("x", array[0]);
        
        temp_Array.add(0, temp_map);
        return temp_Array;
    }
    
    public ArrayList<HashMap<String, Object>> execute(Double mapContainerHeight, Double mapContainerWidth) {
        
        
        
        
        return new ArrayList<HashMap<String, Object>>();
    }
}
