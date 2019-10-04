package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class SignUpRequest extends d {
    @c("email")
    public String email;
    @c("fullname")
    public String fullName;
    @c("newsletter")
    public int newsletter;
    @c("password")
    public String password;
    @c("secure_id")
    public String secureId;

    public String toString() {
        return "SignUpRequest{fullName='" + this.fullName + '\'' + ", email='" + this.email + '\'' + ", password='" + this.password + '\'' + ", newsletter=" + this.newsletter + '}';
    }
}
