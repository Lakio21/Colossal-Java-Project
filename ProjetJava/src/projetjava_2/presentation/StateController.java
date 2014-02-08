/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projetjava_2.presentation;

/**
 *
 * @author Lakio
 */
public class StateController {
    
    private boolean isEdit;
    
    private boolean isAdding;
    
    public boolean getEdit(){return this.isEdit;}
    
    public boolean getAdding(){return isAdding;}
    
    public void switchEdit(){
        if (this.isEdit == true)
                this.isEdit = false;
        if (this.isEdit == false)
                this.isEdit = true;
    }
    
     public void switchAdding(){
        if (this.isAdding == true)
                this.isAdding = false;
        if (this.isAdding == false)
                this.isAdding = true;
    }
}
