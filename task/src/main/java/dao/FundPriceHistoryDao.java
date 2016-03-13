package dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.Fund;
import model.FundPriceHistory;
import model.FundPriceHistoryPK;

/**
 * @Prime13 Consultants
 */
@Repository
@Transactional
public class FundPriceHistoryDao extends GenericDao<FundPriceHistory> {
    public Date findMaxDate() {
        return em.createQuery("SELECT MAX(e.id.priceDate) FROM FundPriceHistory e", Date.class).getResultList().get(0);
    }

    public Long findCurPriceByFundId(Long fundId) {
        return em.createQuery(
                "SELECT MAX(e.price) FROM FundPriceHistory e WHERE e.id.fundId = :fundId AND e.id.priceDate = (SELECT MAX(f.id.priceDate) FROM FundPriceHistory f WHERE f.id.fundId = :fundId)",
                Long.class).setParameter("fundId", fundId).getResultList().get(0);

    }
    private class MyComparator implements Comparator<Fund>{

		@Override
		public int compare(Fund arg0, Fund arg1) {
			if (arg0.getIncreaseRate() > arg1.getIncreaseRate()) return -1;
			if (arg0.getIncreaseRate() < arg1.getIncreaseRate()) return 1;
			else return 0;
		}
    	
    }
    public List<Fund> findIncreaseFundList() {
    	// all funds records in fund price history
    	List<Long> idList = em.createQuery("SELECT DISTINCT e.id.fundId  FROM FundPriceHistory e ",Long.class).getResultList();
    	// find each fund's two prices
    	ArrayList<Fund> allIncreaseFund = new ArrayList<Fund>();
    	for (Long fundId: idList) {    		
    		if (findByFundIdDesc(fundId).size() < 2) continue;
    		long priceToday = findByFundIdDesc(fundId).get(0).getPrice();
    		long priceYesterday =findByFundIdDesc(fundId).get(1).getPrice();
    		double increaseRate = 0;
			if (priceToday > priceYesterday) {
	    		increaseRate = ((double)priceToday- (double)priceYesterday) / (double)priceYesterday;
	    		Fund temp = new Fund();
	    		temp.setFundId(fundId);
	    		temp.setIncreaseRate(increaseRate);
	    		allIncreaseFund.add(temp);
			}
    	}
    	Collections.sort(allIncreaseFund, new MyComparator());
    	return allIncreaseFund;
    }
    
    public List<FundPriceHistory> findByFundId(Long fundId) {
        return em.createQuery("SELECT e FROM FundPriceHistory e WHERE e.id.fundId = :fundId ORDER BY e.id.priceDate",
            
        		genericType).setParameter("fundId", fundId).getResultList();
    }
    public List<FundPriceHistory> findByFundIdDesc(Long fundId) {
        return em.createQuery("SELECT e FROM FundPriceHistory e WHERE e.id.fundId = :fundId ORDER BY e.id.priceDate DESC",
                genericType).setParameter("fundId", fundId).getResultList();
    }
}
