/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projetjava_2.metier;

import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author Pierre
 */
public interface IManager {
    public ArrayList<HashMap<String, Object>> execute();
    public ArrayList<HashMap<String, Object>> execute(Double mapContainerHeight, Double mapContainerWidth, Double mapCenterX, Double mapCenterY);
    public IManager getInstance();
}
