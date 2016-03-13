package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * @Prime13 Consultants
 */
@Embeddable
public class PositionPK implements Serializable {

    private static final long serialVersionUID = 7805160966707950263L;

    @Column
    private Long customerId;

    @Column
    private Long fundId;

    public PositionPK() {

    }

    public PositionPK(Long customerId, Long fundId) {
        this.customerId = customerId;
        this.fundId = fundId;
    }

    public Long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }

    public Long getFundId() {
        return fundId;
    }

    public void setFundId(Long fundId) {
        this.fundId = fundId;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((customerId == null) ? 0 : customerId.hashCode());
        result = prime * result + ((fundId == null) ? 0 : fundId.hashCode());
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
        PositionPK other = (PositionPK) obj;
        if (customerId == null) {
            if (other.customerId != null) {
                return false;
            }
        } else if (!customerId.equals(other.customerId)) {
            return false;
        }
        if (fundId == null) {
            if (other.fundId != null) {
                return false;
            }
        } else if (!fundId.equals(other.fundId)) {
            return false;
        }
        return true;
    }

}
