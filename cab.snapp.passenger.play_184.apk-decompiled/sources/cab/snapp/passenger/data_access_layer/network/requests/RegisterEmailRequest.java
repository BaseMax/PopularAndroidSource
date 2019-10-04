package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class RegisterEmailRequest extends d {
    @c("email")
    private String email;

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }
}
