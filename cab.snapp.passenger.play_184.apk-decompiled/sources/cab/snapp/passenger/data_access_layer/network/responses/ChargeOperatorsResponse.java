package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.charge.QuickCharge;
import cab.snapp.passenger.data.models.charge.SIMChargeOperator;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;
import java.util.HashMap;
import java.util.List;

public class ChargeOperatorsResponse extends f {
    private List<SIMChargeOperator> operators;
    private transient HashMap<String, SIMChargeOperator> operatorsCache = null;
    @c("payment")
    private QuickCharge quickCharge;

    public List<SIMChargeOperator> getOperators() {
        return this.operators;
    }

    public void setOperators(List<SIMChargeOperator> list) {
        this.operators = list;
    }

    public QuickCharge getQuickCharge() {
        return this.quickCharge;
    }

    public void setQuickCharge(QuickCharge quickCharge2) {
        this.quickCharge = quickCharge2;
    }

    private HashMap<String, SIMChargeOperator> getOperatorsCache() {
        if (this.operatorsCache == null) {
            this.operatorsCache = new HashMap<>();
            if (getOperators() != null) {
                for (SIMChargeOperator next : getOperators()) {
                    if (!(next == null || next.getPreNumbers() == null)) {
                        for (String next2 : next.getPreNumbers()) {
                            if (next2 != null && next2.length() > 0) {
                                this.operatorsCache.put(next2, next);
                            }
                        }
                    }
                }
            }
        }
        return this.operatorsCache;
    }

    public SIMChargeOperator getOperatorByPhoneNumber(String str) {
        if (str == null) {
            return null;
        }
        String str2 = "0" + str.replaceAll("^(0098|\\+98|98|0){1}", "");
        if (str2.length() < 4) {
            return null;
        }
        if (!str2.startsWith("0999") || str2.length() <= 4) {
            return getOperatorsCache().get(str2.substring(0, 4));
        }
        return getOperatorsCache().get(str2.substring(0, 5));
    }
}
