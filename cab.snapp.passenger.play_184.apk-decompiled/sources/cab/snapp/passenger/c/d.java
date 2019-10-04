package cab.snapp.passenger.c;

import cab.snapp.passenger.d.b;
import cab.snapp.passenger.d.c;
import cab.snapp.passenger.data.models.snapp_group.BannerItem;
import cab.snapp.passenger.data.models.snapp_group.ServiceItem;
import cab.snapp.passenger.data.models.snapp_group.ServiceTypeItem;
import cab.snapp.passenger.data_access_layer.network.responses.SnappGroupContentResponse;
import com.google.gson.e;
import com.raizlabs.android.dbflow.sql.language.a.a;
import com.raizlabs.android.dbflow.sql.language.j;
import com.raizlabs.android.dbflow.sql.language.w;
import com.raizlabs.android.dbflow.sql.language.x;
import io.reactivex.e.g;
import io.reactivex.z;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    private List<ServiceTypeItem> f455a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private List<ServiceItem> f456b = new ArrayList();
    private List<BannerItem> c = new ArrayList();
    private String d;
    private cab.snapp.passenger.data_access_layer.a.d e;

    @Inject
    public d(cab.snapp.passenger.data_access_layer.a.d dVar) {
        this.e = dVar;
    }

    public final z<SnappGroupContentResponse> fetchContents(long j) {
        b bVar = (b) x.select(new a[0]).from(b.class).where(c.type.is(1002)).querySingle();
        if (bVar == null) {
            return a(j);
        }
        if (bVar.getLastModificationTimestamp() == j) {
            try {
                SnappGroupContentResponse snappGroupContentResponse = (SnappGroupContentResponse) new e().fromJson(bVar.getJsonString(), SnappGroupContentResponse.class);
                a(snappGroupContentResponse, false, j);
                if (snappGroupContentResponse != null) {
                    return z.just(snappGroupContentResponse);
                }
                return a(j);
            } catch (Exception e2) {
                com.a.a.a.logException(e2);
                e2.printStackTrace();
                bVar.delete();
                return a(j);
            }
        } else {
            bVar.delete();
            return a(j);
        }
    }

    private z<SnappGroupContentResponse> a(long j) {
        return this.e.getSnappGroupContents().doOnNext(new g(j) {
            private final /* synthetic */ long f$1;

            {
                this.f$1 = r2;
            }

            public final void accept(Object obj) {
                d.this.a(this.f$1, (SnappGroupContentResponse) obj);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(long j, SnappGroupContentResponse snappGroupContentResponse) throws Exception {
        a(snappGroupContentResponse, true, j);
    }

    private void a(SnappGroupContentResponse snappGroupContentResponse, boolean z, long j) {
        if (snappGroupContentResponse != null) {
            this.f455a = snappGroupContentResponse.getServiceTypes();
            this.f456b = snappGroupContentResponse.getServices();
            this.c = snappGroupContentResponse.getBanners();
            this.d = snappGroupContentResponse.getWebhostBackUrl();
            if (z) {
                snappGroupContentResponse.save(j);
            }
        }
    }

    public final boolean isContentValid() {
        List<ServiceTypeItem> list = this.f455a;
        if (list != null && list.size() > 0) {
            List<ServiceItem> list2 = this.f456b;
            if (list2 != null && list2.size() > 0) {
                return true;
            }
        }
        return false;
    }

    public final List<ServiceTypeItem> getServiceTypes() {
        return this.f455a;
    }

    public final void setServiceTypes(List<ServiceTypeItem> list) {
        this.f455a = list;
    }

    public final List<ServiceItem> getServices() {
        return this.f456b;
    }

    public final void setServices(List<ServiceItem> list) {
        this.f456b = list;
    }

    public final List<BannerItem> getBanners() {
        return this.c;
    }

    public final void setBanners(List<BannerItem> list) {
        this.c = list;
    }

    public final String getWebhostBackUrl() {
        return this.d;
    }

    public final void reset() {
        j.table(b.class, new w[0]);
        this.f456b.clear();
        this.f455a.clear();
        this.c.clear();
    }
}
