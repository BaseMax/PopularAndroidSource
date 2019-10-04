package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.d.a;
import cab.snapp.passenger.d.b;
import cab.snapp.passenger.data.models.AvailableServiceTypes;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;
import com.google.gson.e;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.structure.b.i;
import java.util.List;

public class PinResponse extends f {
    @c("service_types")
    private List<AvailableServiceTypes> availableServiceTypesList;
    @c("formatted_address")
    private String snappFormattedAddress;

    public List<AvailableServiceTypes> getAvailableServiceTypesList() {
        return this.availableServiceTypesList;
    }

    public void setAvailableServiceTypesList(List<AvailableServiceTypes> list) {
        this.availableServiceTypesList = list;
    }

    public String getSnappFormattedAddress() {
        return this.snappFormattedAddress;
    }

    public void setSnappFormattedAddress(String str) {
        this.snappFormattedAddress = str;
    }

    public void save(final String str, final boolean z) {
        FlowManager.getDatabase((Class<?>) a.class).beginTransactionAsync(new com.raizlabs.android.dbflow.structure.b.a.c() {
            public void execute(i iVar) {
                int i = !z ? 1001 : 1000;
                String json = new e().toJson((Object) PinResponse.this);
                b bVar = new b();
                bVar.setKey(str);
                bVar.setLastModificationTimestamp(System.currentTimeMillis());
                bVar.setType(i);
                bVar.setJsonString(json);
                bVar.save(iVar);
            }
        }).build().execute();
    }

    public String toString() {
        return "PassengerPinResponse{serviceTypes=" + this.availableServiceTypesList + ", formattedAddress=" + this.snappFormattedAddress + '}';
    }
}
