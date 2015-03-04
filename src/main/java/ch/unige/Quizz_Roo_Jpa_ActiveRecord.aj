// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ch.unige;

import ch.unige.Quizz;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Quizz_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Quizz.entityManager;
    
    public static final EntityManager Quizz.entityManager() {
        EntityManager em = new Quizz().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Quizz.countQuizzes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Quizz o", Long.class).getSingleResult();
    }
    
    public static List<Quizz> Quizz.findAllQuizzes() {
        return entityManager().createQuery("SELECT o FROM Quizz o", Quizz.class).getResultList();
    }
    
    public static Quizz Quizz.findQuizz(Long id) {
        if (id == null) return null;
        return entityManager().find(Quizz.class, id);
    }
    
    public static List<Quizz> Quizz.findQuizzEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Quizz o", Quizz.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Quizz.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Quizz.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Quizz attached = Quizz.findQuizz(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Quizz.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Quizz.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Quizz Quizz.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Quizz merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
