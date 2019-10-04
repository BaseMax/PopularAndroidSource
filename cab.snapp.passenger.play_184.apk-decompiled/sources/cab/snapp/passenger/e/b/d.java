package cab.snapp.passenger.e.b;

import android.app.Application;
import android.content.Context;
import cab.snapp.authenticator.c;
import cab.snapp.passenger.b.a;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data_access_layer.network.b;
import cab.snapp.snappnetwork.h;
import dagger.Module;
import dagger.Provides;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Interceptor;

@Module
public final class d {
    @Provides
    public final Context provideContext(Application application) {
        return application;
    }

    @Provides
    public final cab.snapp.passenger.data_access_layer.a.d provideSnappDataLayer(c cVar, cab.snapp.passenger.f.b.b.c cVar2, b bVar) {
        return new cab.snapp.passenger.data_access_layer.a.d(cVar, cVar2, bVar);
    }

    @Provides
    public final c provideSnappAccountManager(Application application, Class<?> cls) {
        c.initDefault(new c.a().with(application).setAuthenticatorActivity(cls).build());
        return c.getInstance();
    }

    @Provides
    public final a provideEventManagerConfig(cab.snapp.passenger.c.b bVar, b bVar2, cab.snapp.snappnetwork.c cVar) {
        return new a(bVar, bVar2, cVar);
    }

    @Provides
    public final cab.snapp.b provideEventManager(Context context, a aVar) {
        return new cab.snapp.b(context, false, aVar);
    }

    @Provides
    public final cab.snapp.passenger.b.b provideNetworkTokenHelper(Context context, c cVar) {
        return new cab.snapp.passenger.b.b(context, cVar);
    }

    @Provides
    public final List<Interceptor> provideInterceptors(cab.snapp.passenger.f.b.b.c cVar, c cVar2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new cab.snapp.passenger.data_access_layer.network.a.a(cVar, cVar2));
        return arrayList;
    }

    @Provides
    public final cab.snapp.snappnetwork.c provideSnappNetworkClient(List<Interceptor> list, cab.snapp.passenger.b.b bVar) {
        return new cab.snapp.snappnetwork.c((h) bVar, list, false);
    }

    @Provides
    public final b provideNetworkModules(cab.snapp.snappnetwork.c cVar, cab.snapp.b.a aVar, cab.snapp.passenger.b.b bVar) {
        b bVar2 = new b(cVar, aVar);
        bVar.setNetworkModules(bVar2);
        return bVar2;
    }

    @Provides
    public final cab.snapp.passenger.c.b provideSnappConfigDataManager(Application application, cab.snapp.passenger.data_access_layer.a.d dVar, cab.snapp.passenger.f.b.b.c cVar) {
        return new cab.snapp.passenger.c.b(application, dVar, cVar);
    }

    @Provides
    public final g provideSnappRideDataManager(cab.snapp.passenger.c.b bVar, e eVar, a aVar, cab.snapp.passenger.data_access_layer.a.d dVar, cab.snapp.b bVar2, cab.snapp.passenger.f.b.b.c cVar) {
        g gVar = new g(bVar, eVar, dVar, cVar, aVar, bVar2);
        return gVar;
    }

    @Provides
    public final cab.snapp.passenger.f.b provideDeepLinkHelper() {
        return new cab.snapp.passenger.f.b();
    }

    @Provides
    public final cab.snapp.passenger.c.h provideSnappSearchDataManager() {
        return new cab.snapp.passenger.c.h();
    }

    @Provides
    public final cab.snapp.passenger.c.c provideSnappFavoritesDataManager(Application application, cab.snapp.passenger.data_access_layer.a.d dVar) {
        return new cab.snapp.passenger.c.c(application, dVar);
    }

    @Provides
    public final cab.snapp.passenger.c.d provideSnappGroupDataManager(cab.snapp.passenger.data_access_layer.a.d dVar) {
        return new cab.snapp.passenger.c.d(dVar);
    }

    @Provides
    public final f provideSnappProfileDataManager(cab.snapp.passenger.c.b bVar, cab.snapp.passenger.data_access_layer.a.d dVar, cab.snapp.passenger.f.b.b.c cVar) {
        return new f(bVar, dVar, cVar);
    }

    @Provides
    public final e provideSnappLocationDataManager(Application application) {
        return new e(application);
    }

    @Provides
    public final cab.snapp.b.a provideSharedPreferenceManager(Application application) {
        return new cab.snapp.b.a(application);
    }
}
