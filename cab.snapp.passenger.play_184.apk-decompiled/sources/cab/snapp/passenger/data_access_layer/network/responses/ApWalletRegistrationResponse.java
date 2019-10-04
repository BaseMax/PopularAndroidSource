package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class ApWalletRegistrationResponse extends f {
    @c("redirect_url")
    String redirectUrl;

    public String getRedirectUrl() {
        return this.redirectUrl;
    }

    public void setRedirectUrl(String str) {
        this.redirectUrl = str;
    }

    public String toString() {
        return "ApWalletRegistrationResponse{redirect_url=" + this.redirectUrl + '}';
    }
}
