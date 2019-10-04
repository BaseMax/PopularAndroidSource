package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class AsanPardakhtPaymentResponse extends f {
    @c("redirect_url")
    private String redirectUrl;

    public String getRedirectUrl() {
        return this.redirectUrl;
    }

    public void setRedirectUrl(String str) {
        this.redirectUrl = str;
    }

    public String toString() {
        return "OnlinePaymentResponse{redirectUrl='" + this.redirectUrl + '\'' + '}';
    }
}
