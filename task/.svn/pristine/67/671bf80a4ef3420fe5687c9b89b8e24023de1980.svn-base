package model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author wyen Wei-Yu Yen.
 */
@Embeddable
public class FundPriceHistoryPK implements Serializable {

    private static final long serialVersionUID = 3015972840029828960L;

    @Column
    private Long fundId;

    @Column
    @Temporal(TemporalType.DATE)
    private Date priceDate;

    public FundPriceHistoryPK() {

    }

    public FundPriceHistoryPK(Long fundId, Date priceDate) {
        this.fundId = fundId;
        this.priceDate = priceDate;
    }

    public Long getFundId() {
        return fundId;
    }

    public void setFundId(Long fundId) {
        this.fundId = fundId;
    }

    public Date getPriceDate() {
        return priceDate;
    }

    public void setPriceDate(Date priceDate) {
        this.priceDate = priceDate;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((fundId == null) ? 0 : fundId.hashCode());
        result = prime * result + ((priceDate == null) ? 0 : priceDate.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        FundPriceHistoryPK other = (FundPriceHistoryPK) obj;
        if (fundId == null) {
            if (other.fundId != null) {
                return false;
            }
        } else if (!fundId.equals(other.fundId)) {
            return false;
        }
        if (priceDate == null) {
            if (other.priceDate != null) {
                return false;
            }
        } else if (!priceDate.equals(other.priceDate)) {
            return false;
        }
        return true;
    }

}
