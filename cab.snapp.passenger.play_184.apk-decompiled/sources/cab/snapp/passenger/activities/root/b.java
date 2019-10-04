package cab.snapp.passenger.activities.root;

import cab.snapp.passenger.activities.base.a;
import cab.snapp.passenger.c.d;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<RootActivity> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<e> f442a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<o> f443b;
    private final Provider<cab.snapp.passenger.c.b> c;
    private final Provider<g> d;
    private final Provider<d> e;
    private final Provider<c> f;

    public b(Provider<e> provider, Provider<o> provider2, Provider<cab.snapp.passenger.c.b> provider3, Provider<g> provider4, Provider<d> provider5, Provider<c> provider6) {
        this.f442a = provider;
        this.f443b = provider2;
        this.c = provider3;
        this.d = provider4;
        this.e = provider5;
        this.f = provider6;
    }

    public static MembersInjector<RootActivity> create(Provider<e> provider, Provider<o> provider2, Provider<cab.snapp.passenger.c.b> provider3, Provider<g> provider4, Provider<d> provider5, Provider<c> provider6) {
        b bVar = new b(provider, provider2, provider3, provider4, provider5, provider6);
        return bVar;
    }

    public final void injectMembers(RootActivity rootActivity) {
        a.injectSnappLocationDataManager(rootActivity, this.f442a.get());
        injectShowcaseHelper(rootActivity, this.f443b.get());
        injectSnappConfigDataManager(rootActivity, this.c.get());
        injectSnappRideDataManager(rootActivity, this.d.get());
        injectSnappGroupDataManager(rootActivity, this.e.get());
        injectReportManagerHelper(rootActivity, this.f.get());
    }

    public static void injectShowcaseHelper(RootActivity rootActivity, o oVar) {
        rootActivity.c = oVar;
    }

    public static void injectSnappConfigDataManager(RootActivity rootActivity, cab.snapp.passenger.c.b bVar) {
        rootActivity.d = bVar;
    }

    public static void injectSnappRideDataManager(RootActivity rootActivity, g gVar) {
        rootActivity.e = gVar;
    }

    public static void injectSnappGroupDataManager(RootActivity rootActivity, d dVar) {
        rootActivity.f = dVar;
    }

    public static void injectReportManagerHelper(RootActivity rootActivity, c cVar) {
        rootActivity.g = cVar;
    }
}
