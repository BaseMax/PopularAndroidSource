package cab.snapp.passenger.units.snapp_services;

import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<SnappJekDialog> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<c> f1307a;

    public b(Provider<c> provider) {
        this.f1307a = provider;
    }

    public static MembersInjector<SnappJekDialog> create(Provider<c> provider) {
        return new b(provider);
    }

    public final void injectMembers(SnappJekDialog snappJekDialog) {
        injectReportManagerHelper(snappJekDialog, this.f1307a.get());
    }

    public static void injectReportManagerHelper(SnappJekDialog snappJekDialog, c cVar) {
        snappJekDialog.f1298a = cVar;
    }
}
