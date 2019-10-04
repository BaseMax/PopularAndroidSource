package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class CreditResponse extends f {
    public static final int AP_WALLET = 2;
    public static final int AP_WALLET_ERROR_REGISTRATION = 2;
    public static final int AP_WALLET_NOT_REGISTERED = 0;
    public static final int AP_WALLET_REGISTERED = 1;
    public static final int AP_WALLET_UNDONE = 3;
    public static final int SNAPP_WALLET = 1;
    @c("ap_authorized")
    private int apAuthorized;
    @c("ap_balance")
    private Long apCredit;
    @c("default")
    private int defaultWallet;
    @c("balance")
    private long snappCredit;

    public long getSnappCredit() {
        return this.snappCredit;
    }

    public void setSnappCredit(long j) {
        this.snappCredit = j;
    }

    public Long getApCredit() {
        return this.apCredit;
    }

    public void setApCredit(Long l) {
        this.apCredit = l;
    }

    public long getCredit() {
        if (this.defaultWallet == 1) {
            return this.snappCredit;
        }
        Long l = this.apCredit;
        if (l != null) {
            return l.longValue();
        }
        return -1;
    }

    public int getDefaultWallet() {
        return this.defaultWallet;
    }

    public void setDefaultWallet(int i) {
        this.defaultWallet = i;
    }

    public int getApWalletRegistrationStatus() {
        return this.apAuthorized;
    }

    public void setApWalletRegistrationStatus(int i) {
        this.apAuthorized = i;
    }

    public String toString() {
        return "CreditResponse{credit=" + this.snappCredit + '}';
    }
}
