package controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.easymock.EasyMock;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import dao.FundPriceHistoryDao;
import model.FundPriceHistory;
import model.FundPriceHistoryPK;

/**
 * @Prime13 Consultants
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/application-context.xml" })
@Rollback
@Transactional
public class CustomerControllerTest {

    @Autowired
    private CustomerController customerController;

    @Autowired
    private FundPriceHistoryDao fundPriceHistoryDao;

    @Test
    public void testFundPriceHistory() {
        HttpServletRequest req = EasyMock.createMock(HttpServletRequest.class);

        final Long fundId = 100L;

        FundPriceHistory entity = new FundPriceHistory();
        entity.setId(new FundPriceHistoryPK(fundId, new Date()));
        entity.setPrice(20L);
        fundPriceHistoryDao.save(entity);

        entity = new FundPriceHistory();
        entity.setId(new FundPriceHistoryPK(fundId, new Date(new Date().getTime() + 86400000)));
        entity.setPrice(30L);
        fundPriceHistoryDao.save(entity);

        customerController.fundPriceHistory(fundId, req);

        System.out.println(req.getAttribute("fundHistoryData"));
    }
}
