/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projetjava_2.data;

import java.util.ArrayList;
import java.util.HashMap;
import projetjava_2.metier.MapManager;

/**
 *
 * @author Pierre
 */
public class RequestController implements IRequest{
    /*private static RequestController instance;
    
    public static RequestController getInstance() {
        if (null == instance) {
            instance = new RequestController();
        }
        return instance;
    }
    
    private RequestController() {
    }*/
    
    
    @Override
    public ArrayList<HashMap<String, Object>> executeRequest(String requestType, ArrayList<String> values, ArrayList<Boolean> fieldsTested, String Table) {
        System.out.println("Test");
        return null;
    }
}
