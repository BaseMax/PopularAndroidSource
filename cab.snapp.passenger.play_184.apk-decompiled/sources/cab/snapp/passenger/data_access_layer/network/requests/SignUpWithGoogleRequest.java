package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class SignUpWithGoogleRequest extends d {
    @c("client_id")
    public String clientId;
    @c("client_secret")
    public String clientSecret;
    @c("google_token")
    public String googleToken;
    @c("grant_type")
    private String grantType = "login_google";

    public String toString() {
        return "SignUpWithGoogleRequest{googleToken='" + this.googleToken + '\'' + ", grantType='" + this.grantType + '\'' + ", clientId='" + this.clientId + '\'' + ", clientSecret=" + this.clientSecret + '}';
    }
}
