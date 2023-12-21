/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.util.List;
import persistencia.ControladoraPersistencia;
import persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author matiambrosi
 */
public class Controladora {
    
    ControladoraPersistencia controlpersis = new ControladoraPersistencia();
    
    public void crearOrador(Orador ora){
        controlpersis.crearOrador(ora);
    }
    
    public List<Orador> traerOradores(){
        return controlpersis.traerOradores();
    }
    
    public void borrarOrador(int id) throws NonexistentEntityException{
        controlpersis.borrarOrador(id);
    }
    
}
