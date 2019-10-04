package cab.snapp.passenger.c;

import android.content.Context;
import cab.snapp.b.a;
import cab.snapp.passenger.data.models.FavoriteModel;
import cab.snapp.passenger.data.models.FormattedAddress;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.requests.SaveFavoriteRequest;
import cab.snapp.passenger.data_access_layer.network.responses.FavoriteResponse;
import cab.snapp.passenger.data_access_layer.network.responses.SaveFavoriteResponse;
import io.reactivex.e.g;
import io.reactivex.e.h;
import io.reactivex.j.b;
import io.reactivex.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    protected List<FavoriteModel> f453a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    protected b<List<FavoriteModel>> f454b = b.create();
    protected Context c;
    private a d;
    private d e;

    @Inject
    public c(Context context, d dVar) {
        this.c = context;
        this.e = dVar;
        a aVar = this.d;
        if (aVar == null || !aVar.containsKey("shared_pref_key_favorites")) {
            this.f453a = new ArrayList();
        } else {
            this.f453a = (List) new a(this.c).get("shared_pref_key_favorites");
        }
        this.d = new a(context);
    }

    public final void reset() {
        this.f453a.clear();
    }

    public final z<List<FavoriteModel>> observeData() {
        return this.f454b;
    }

    public final List<FavoriteModel> getCachedData() {
        return this.f453a;
    }

    public final z<List<FavoriteModel>> fetchAndRefreshData() {
        return this.e.getFavorites().map($$Lambda$c$c8XPB09DL4ipcLHlT9CgTe3rkI.INSTANCE).doOnNext(new g() {
            public final void accept(Object obj) {
                c.this.a((List) obj);
            }
        });
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ List a(FavoriteResponse favoriteResponse) throws Exception {
        return favoriteResponse != null ? favoriteResponse.getFavoriteModelList() : new ArrayList();
    }

    public final z<FavoriteModel> add(String str, String str2, String str3, String str4) {
        SaveFavoriteRequest saveFavoriteRequest = new SaveFavoriteRequest();
        saveFavoriteRequest.setName(str);
        saveFavoriteRequest.setLat(str2);
        saveFavoriteRequest.setLng(str3);
        saveFavoriteRequest.setDetailedAddress(str4);
        return this.e.saveFavorite(saveFavoriteRequest).map(new h(str2, str3, str, str4) {
            private final /* synthetic */ String f$0;
            private final /* synthetic */ String f$1;
            private final /* synthetic */ String f$2;
            private final /* synthetic */ String f$3;

            {
                this.f$0 = r1;
                this.f$1 = r2;
                this.f$2 = r3;
                this.f$3 = r4;
            }

            public final Object apply(Object obj) {
                return c.a(this.f$0, this.f$1, this.f$2, this.f$3, (SaveFavoriteResponse) obj);
            }
        }).doOnNext(new g() {
            public final void accept(Object obj) {
                c.this.a((FavoriteModel) obj);
            }
        });
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ FavoriteModel a(String str, String str2, String str3, String str4, SaveFavoriteResponse saveFavoriteResponse) throws Exception {
        FormattedAddress formattedAddress = new FormattedAddress();
        formattedAddress.setLat(Double.valueOf(str).doubleValue());
        formattedAddress.setLng(Double.valueOf(str2).doubleValue());
        FavoriteModel favoriteModel = new FavoriteModel();
        favoriteModel.setName(str3);
        favoriteModel.setDetailAddress(str4);
        favoriteModel.setId(saveFavoriteResponse.getFavId());
        favoriteModel.setFormattedAddress(formattedAddress);
        return favoriteModel;
    }

    public final z<Boolean> remove(int i) {
        return this.e.deleteFavorite(i).map($$Lambda$c$Wg0GNg26ejMc7d2IeUB_Xfzs2XU.INSTANCE).doOnNext(new g(i) {
            private final /* synthetic */ int f$1;

            {
                this.f$1 = r2;
            }

            public final void accept(Object obj) {
                c.this.a(this.f$1, (Boolean) obj);
            }
        });
    }

    public final z<Boolean> edit(int i, String str, String str2) {
        return this.e.editFavorite(i, str, str2).map($$Lambda$c$XdzU9gjkAljR_rvrLh5y9A7mwKo.INSTANCE).doOnNext(new g(i, str, str2) {
            private final /* synthetic */ int f$1;
            private final /* synthetic */ String f$2;
            private final /* synthetic */ String f$3;

            {
                this.f$1 = r2;
                this.f$2 = r3;
                this.f$3 = r4;
            }

            public final void accept(Object obj) {
                c.this.a(this.f$1, this.f$2, this.f$3, (Boolean) obj);
            }
        });
    }

    private void a() {
        this.f454b.onNext(this.f453a);
    }

    private void b() {
        a aVar = this.d;
        if (aVar != null) {
            aVar.put("shared_pref_key_favorites", this.f453a);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(int i, String str, String str2, Boolean bool) throws Exception {
        Iterator<FavoriteModel> it = this.f453a.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            FavoriteModel next = it.next();
            if (next.getId() == i) {
                next.setName(str);
                next.setDetailAddress(str2);
                break;
            }
        }
        b();
        a();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(int i, Boolean bool) throws Exception {
        Iterator<FavoriteModel> it = this.f453a.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            FavoriteModel next = it.next();
            if (next.getId() == i) {
                this.f453a.remove(next);
                break;
            }
        }
        b();
        a();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(FavoriteModel favoriteModel) throws Exception {
        try {
            this.f453a.add(0, favoriteModel);
        } catch (Exception e2) {
            com.a.a.a.logException(e2);
        }
        b();
        a();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(List list) throws Exception {
        a aVar = this.d;
        if (aVar != null) {
            aVar.delete("shared_pref_key_favorites");
        }
        List<FavoriteModel> list2 = this.f453a;
        if (list2 != null) {
            list2.clear();
            this.f453a.addAll(list);
        } else {
            this.f453a = list;
        }
        b();
        a();
    }
}
