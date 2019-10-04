package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class OnlinePaymentResponse extends f {
    @c("callback_url")
    private String callBackUrl;
    @c("redirect_url")
    private String redirectUrl;

    public String getRedirectUrl() {
        return this.redirectUrl;
    }

    public void setRedirectUrl(String str) {
        this.redirectUrl = str;
    }

    public String getCallBackUrl() {
        return this.callBackUrl;
    }

    public void setCallBackUrl(String str) {
        this.callBackUrl = str;
    }

    public String toString() {
        return "OnlinePaymentResponse{redirectUrl='" + this.redirectUrl + '\'' + ", callBackUrl='" + this.callBackUrl + '\'' + '}';
    }
}
