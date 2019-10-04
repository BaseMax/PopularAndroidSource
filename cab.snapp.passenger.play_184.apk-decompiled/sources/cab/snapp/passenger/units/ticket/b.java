package cab.snapp.passenger.units.ticket;

import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<d> f1335a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<c> f1336b;

    public b(Provider<d> provider, Provider<c> provider2) {
        this.f1335a = provider;
        this.f1336b = provider2;
    }

    public static MembersInjector<a> create(Provider<d> provider, Provider<c> provider2) {
        return new b(provider, provider2);
    }

    public final void injectMembers(a aVar) {
        injectSnappDataLayer(aVar, this.f1335a.get());
        injectReportManagerHelper(aVar, this.f1336b.get());
    }

    public static void injectSnappDataLayer(a aVar, d dVar) {
        aVar.f1333a = dVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.f1334b = cVar;
    }
}
