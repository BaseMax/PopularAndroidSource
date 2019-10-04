package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.FavoriteModel;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;
import java.util.List;

public class FavoriteResponse extends f {
    @c("places")
    private List<FavoriteModel> favoriteModelList;

    public List<FavoriteModel> getFavoriteModelList() {
        return this.favoriteModelList;
    }

    public void setFavoriteModelList(List<FavoriteModel> list) {
        this.favoriteModelList = list;
    }

    public String toString() {
        return "FavoriteResponse{favoriteModelList=" + this.favoriteModelList + '}';
    }
}
