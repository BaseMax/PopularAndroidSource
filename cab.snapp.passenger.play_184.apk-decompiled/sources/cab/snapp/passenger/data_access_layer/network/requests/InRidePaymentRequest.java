package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class InRidePaymentRequest extends d {
    @c("amount")
    private Double amount;
    @c("organization_id")
    private Integer organizationId;
    @c("type")
    private int type;

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public double getAmount() {
        return this.amount.doubleValue();
    }

    public void setAmount(double d) {
        this.amount = Double.valueOf(d);
    }

    public Integer getOrganizationId() {
        return this.organizationId;
    }

    public void setOrganizationId(Integer num) {
        this.organizationId = num;
    }

    public String toString() {
        return "InRidePaymentRequest{type=" + this.type + ", amount=" + this.amount + ", organizationId='" + this.organizationId + '\'' + '}';
    }
}
