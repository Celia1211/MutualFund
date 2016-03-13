package dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.Position;

/**
 * @Prime13 Consultants
 */
@Repository
@Transactional
public class PositionDao extends GenericDao<Position> {
    public List<Position> findPositionsByCustomerId(Long cusotmerId) {
        return em.createQuery("SELECT e FROM Position e WHERE e.id.customerId = :customerId", genericType)
                .setParameter("customerId", cusotmerId).getResultList();
    }
}
