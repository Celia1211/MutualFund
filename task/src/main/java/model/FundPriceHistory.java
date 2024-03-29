package model;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

/**
 * @author wyen Wei-Yu Yen.
 */
@Entity
public class FundPriceHistory {

    @EmbeddedId
    private FundPriceHistoryPK id;

    @Column
    private Long price;

    public FundPriceHistoryPK getId() {
        return id;
    }

    public void setId(FundPriceHistoryPK id) {
        this.id = id;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Double getPresentPrice() {
        if (price == null) {
            return null;
        }
        return price / 100.0;
    }
}
