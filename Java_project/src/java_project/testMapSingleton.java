/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package java_project;

/**
 *
 * @author Pierre
 */
public class testMapSingleton {
     /** Récupère l'instance unique de la class Singleton.<p>
    * Remarque : le constructeur est rendu inaccessible
    */
    public static testMapSingleton getInstance() {
        if (null == instance) { // Premier appel
            instance = new testMapSingleton();
        }
        return instance;
    }

    /** Constructeur redéfini comme étant privé pour interdire
    * son appel et forcer à passer par la méthode <link
    */
    private testMapSingleton() {
        this.text = "test";
    }

    /** L'instance statique */
    private static testMapSingleton instance;
    
    
    ////////////////////////////////////////////:
    public String getText() { return this.text; }
    
    private String text;
}
