package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.d.a;
import cab.snapp.passenger.d.b;
import cab.snapp.passenger.data.models.snapp_group.BannerItem;
import cab.snapp.passenger.data.models.snapp_group.ServiceItem;
import cab.snapp.passenger.data.models.snapp_group.ServiceTypeItem;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;
import com.google.gson.e;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.structure.b.i;
import java.util.List;

public class SnappGroupContentResponse extends f {
    private final String DATABASE_KEY = "SNAPP_GROUP_RESPONSE_JEY";
    @c("banners")
    private List<BannerItem> banners;
    @c("service_types")
    private List<ServiceTypeItem> serviceTypes;
    @c("services")
    private List<ServiceItem> services;
    @c("back_url")
    private String webhostBackUrl;

    public String getWebhostBackUrl() {
        return this.webhostBackUrl;
    }

    public void setWebhostBackUrl(String str) {
        this.webhostBackUrl = str;
    }

    public List<BannerItem> getBanners() {
        return this.banners;
    }

    public void setBanners(List<BannerItem> list) {
        this.banners = list;
    }

    public List<ServiceItem> getServices() {
        return this.services;
    }

    public void setServices(List<ServiceItem> list) {
        this.services = list;
    }

    public List<ServiceTypeItem> getServiceTypes() {
        return this.serviceTypes;
    }

    public void setServiceTypes(List<ServiceTypeItem> list) {
        this.serviceTypes = list;
    }

    public void save(final long j) {
        FlowManager.getDatabase((Class<?>) a.class).beginTransactionAsync(new com.raizlabs.android.dbflow.structure.b.a.c() {
            public void execute(i iVar) {
                String json = new e().toJson((Object) SnappGroupContentResponse.this);
                b bVar = new b();
                bVar.setKey("SNAPP_GROUP_RESPONSE_JEY");
                bVar.setLastModificationTimestamp(j);
                bVar.setType(1002);
                bVar.setJsonString(json);
                bVar.save(iVar);
            }
        }).build().execute();
    }
}
