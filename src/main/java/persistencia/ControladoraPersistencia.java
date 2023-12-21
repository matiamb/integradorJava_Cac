
package persistencia;

import java.util.List;
import logica.Orador;
import persistencia.exceptions.NonexistentEntityException;


public class ControladoraPersistencia {
    OradorJpaController ojpa = new OradorJpaController();
    
    public void crearOrador(Orador ora){
        ojpa.create(ora);
    }
    
    public List<Orador> traerOradores(){
        List<Orador> ora = ojpa.findOradorEntities();
        return ora;
    }
    
    public void borrarOrador(int id) throws NonexistentEntityException{
        ojpa.destroy(id);
    }
}
