
package persistencia;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import java.io.Serializable;
import jakarta.persistence.Query;
import jakarta.persistence.EntityNotFoundException;
import jakarta.persistence.Persistence;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;
import java.util.List;
import logica.Orador;
import persistencia.exceptions.NonexistentEntityException;


public class OradorJpaController implements Serializable {

    public OradorJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    
    public OradorJpaController(){
        emf = Persistence.createEntityManagerFactory("com.matiambrosi_mavenproject5_war_1.0-SNAPSHOTPU");
    }

    public void create(Orador orador) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(orador);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Orador orador) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            orador = em.merge(orador);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = orador.getId_orador();
                if (findOrador(id) == null) {
                    throw new NonexistentEntityException("The orador with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(int id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Orador orador;
            try {
                orador = em.getReference(Orador.class, id);
                orador.getId_orador();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The orador with id " + id + " no longer exists.", enfe);
            }
            em.remove(orador);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Orador> findOradorEntities() {
        return findOradorEntities(true, -1, -1);
    }

    public List<Orador> findOradorEntities(int maxResults, int firstResult) {
        return findOradorEntities(false, maxResults, firstResult);
    }

    private List<Orador> findOradorEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Orador.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Orador findOrador(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Orador.class, id);
        } finally {
            em.close();
        }
    }

    public int getOradorCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Orador> rt = cq.from(Orador.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
