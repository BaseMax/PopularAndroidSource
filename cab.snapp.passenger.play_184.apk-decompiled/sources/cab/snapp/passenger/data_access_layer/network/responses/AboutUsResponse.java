package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class AboutUsResponse extends f {
    @c("text")
    private String aboutContent;

    public String getAboutContent() {
        return this.aboutContent;
    }

    public void setAboutContent(String str) {
        this.aboutContent = str;
    }

    public String toString() {
        return "SnappPassengerAboutResponse{aboutContent='" + this.aboutContent + '\'' + '}';
    }
}
