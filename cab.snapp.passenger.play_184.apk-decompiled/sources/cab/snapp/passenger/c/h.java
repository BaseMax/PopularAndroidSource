package cab.snapp.passenger.c;

import androidx.lifecycle.MutableLiveData;
import cab.snapp.passenger.data.models.GeocodeMasterModel;
import java.util.HashMap;
import javax.inject.Inject;

public final class h {

    /* renamed from: a  reason: collision with root package name */
    private MutableLiveData<HashMap<Integer, GeocodeMasterModel>> f467a = new MutableLiveData<>();

    @Inject
    public h() {
        this.f467a.setValue(new HashMap());
    }

    public final MutableLiveData<HashMap<Integer, GeocodeMasterModel>> getSearchResults() {
        return this.f467a;
    }

    public final GeocodeMasterModel getResult(Integer num) {
        MutableLiveData<HashMap<Integer, GeocodeMasterModel>> mutableLiveData = this.f467a;
        GeocodeMasterModel geocodeMasterModel = null;
        if (mutableLiveData == null) {
            return null;
        }
        HashMap value = mutableLiveData.getValue();
        if (value != null && value.containsKey(num)) {
            geocodeMasterModel = (GeocodeMasterModel) value.get(num);
            value.remove(num);
            this.f467a.setValue(value);
        }
        return geocodeMasterModel;
    }

    public final void addResult(Integer num, GeocodeMasterModel geocodeMasterModel) {
        HashMap value = this.f467a.getValue();
        if (value != null) {
            value.put(num, geocodeMasterModel);
            this.f467a.setValue(value);
        }
    }

    public final void reset() {
        this.f467a.setValue(new HashMap());
    }
}
