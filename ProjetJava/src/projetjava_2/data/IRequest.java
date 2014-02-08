/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projetjava_2.data;

import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author Pierre
 */
public interface IRequest {
    public ArrayList<HashMap<String, Object>> executeRequest(String requestType, ArrayList<String> values, ArrayList<Boolean> fieldsTested, String Table);
}
