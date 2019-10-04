package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class GeocodeRequest extends d {
    @c("phrase")
    private String phrase;

    public String getPhrase() {
        return this.phrase;
    }

    public void setPhrase(String str) {
        this.phrase = str;
    }

    public String toString() {
        return "GeocodeRequest{phrase='" + this.phrase + '\'' + '}';
    }
}
