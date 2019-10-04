package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;

public class SaveFavoriteResponse extends f {
    @c("id")
    private int favId;
    @c("message")
    private String message;

    public int getFavId() {
        return this.favId;
    }

    public void setFavId(int i) {
        this.favId = i;
    }

    public String toString() {
        return "SnappPassengerSaveFavResponse{favId=" + this.favId + '}';
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}
