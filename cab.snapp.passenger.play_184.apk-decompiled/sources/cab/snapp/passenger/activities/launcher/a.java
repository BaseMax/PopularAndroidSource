package cab.snapp.passenger.activities.launcher;

import cab.snapp.passenger.c.g;
import cab.snapp.passenger.f.b;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class a implements MembersInjector<LauncherActivity> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<g> f438a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<c> f439b;
    private final Provider<b> c;

    public a(Provider<g> provider, Provider<c> provider2, Provider<b> provider3) {
        this.f438a = provider;
        this.f439b = provider2;
        this.c = provider3;
    }

    public static MembersInjector<LauncherActivity> create(Provider<g> provider, Provider<c> provider2, Provider<b> provider3) {
        return new a(provider, provider2, provider3);
    }

    public final void injectMembers(LauncherActivity launcherActivity) {
        injectSnappRideDataManager(launcherActivity, this.f438a.get());
        injectReportManagerHelper(launcherActivity, this.f439b.get());
        injectDeepLinkHelper(launcherActivity, this.c.get());
    }

    public static void injectSnappRideDataManager(LauncherActivity launcherActivity, g gVar) {
        launcherActivity.f436a = gVar;
    }

    public static void injectReportManagerHelper(LauncherActivity launcherActivity, c cVar) {
        launcherActivity.f437b = cVar;
    }

    public static void injectDeepLinkHelper(LauncherActivity launcherActivity, b bVar) {
        launcherActivity.c = bVar;
    }
}
