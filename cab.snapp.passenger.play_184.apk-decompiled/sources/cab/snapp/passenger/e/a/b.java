package cab.snapp.passenger.e.a;

import android.app.Application;
import android.content.Context;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.base.BaseActivity;
import cab.snapp.passenger.activities.launcher.LauncherActivity;
import cab.snapp.passenger.activities.root.AuthenticatorActivity;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.c.h;
import cab.snapp.passenger.e.a.a;
import cab.snapp.passenger.e.b.i;
import cab.snapp.passenger.e.b.j;
import cab.snapp.passenger.e.b.k;
import cab.snapp.passenger.e.b.l;
import cab.snapp.passenger.e.b.m;
import cab.snapp.passenger.e.b.n;
import cab.snapp.passenger.e.b.p;
import cab.snapp.passenger.e.b.q;
import cab.snapp.passenger.e.b.r;
import cab.snapp.passenger.e.b.s;
import cab.snapp.passenger.e.b.t;
import cab.snapp.passenger.e.b.u;
import cab.snapp.passenger.e.b.v;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import cab.snapp.passenger.units.favorite_add_address.FavoriteAddAddressController;
import cab.snapp.passenger.units.main.MainController;
import cab.snapp.passenger.units.second_destination.SecondDestinationController;
import cab.snapp.passenger.units.snapp_services.SnappJekDialog;
import dagger.a.d;
import java.util.List;
import javax.inject.Provider;
import okhttp3.Interceptor;

public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    Provider<o> f483a;

    /* renamed from: b  reason: collision with root package name */
    Provider<Application> f484b;
    Provider<c> c;
    Provider<Class<?>> d;

    static final class a implements a.C0017a {

        /* renamed from: a  reason: collision with root package name */
        cab.snapp.passenger.e.b.a f485a;

        /* renamed from: b  reason: collision with root package name */
        Application f486b;
        Class<?> c;

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        public final a build() {
            if (this.f485a == null) {
                this.f485a = new cab.snapp.passenger.e.b.a();
            }
            if (this.f486b == null) {
                throw new IllegalStateException(Application.class.getCanonicalName() + " must be set");
            } else if (this.c != null) {
                return new b(this, (byte) 0);
            } else {
                throw new IllegalStateException(Class.class.getCanonicalName() + " must be set");
            }
        }

        public final a context(Application application) {
            this.f486b = (Application) d.checkNotNull(application);
            return this;
        }

        public final a authenticatorActivityClass(Class<?> cls) {
            this.c = (Class) d.checkNotNull(cls);
            return this;
        }

        public final a appModule(cab.snapp.passenger.e.b.a aVar) {
            this.f485a = (cab.snapp.passenger.e.b.a) d.checkNotNull(aVar);
            return this;
        }
    }

    /* renamed from: cab.snapp.passenger.e.a.b$b  reason: collision with other inner class name */
    final class C0018b implements c {

        /* renamed from: b  reason: collision with root package name */
        private final cab.snapp.passenger.e.b.d f488b;
        private Provider<cab.snapp.b.a> c;
        private Provider<cab.snapp.authenticator.c> d;
        private Provider<List<Interceptor>> e;
        private Provider<Context> f;
        private Provider<cab.snapp.passenger.b.b> g;
        private Provider<cab.snapp.snappnetwork.c> h;
        private Provider<cab.snapp.passenger.data_access_layer.network.b> i;
        private Provider<cab.snapp.passenger.data_access_layer.a.d> j;
        private Provider<cab.snapp.passenger.c.b> k;
        private Provider<e> l;
        private Provider<cab.snapp.passenger.b.a> m;
        private Provider<cab.snapp.b> n;
        private Provider<g> o;
        private Provider<cab.snapp.passenger.c.d> p;
        private Provider<h> q;
        private Provider<cab.snapp.passenger.c.c> r;
        private Provider<f> s;
        private Provider<cab.snapp.passenger.f.b> t;

        /* synthetic */ C0018b(b bVar, cab.snapp.passenger.e.b.d dVar, byte b2) {
            this(dVar);
        }

        private C0018b(cab.snapp.passenger.e.b.d dVar) {
            this.f488b = (cab.snapp.passenger.e.b.d) d.checkNotNull(dVar);
            this.c = dagger.a.a.provider(l.create(this.f488b, b.this.f484b));
            this.d = dagger.a.a.provider(m.create(this.f488b, b.this.f484b, b.this.d));
            this.e = dagger.a.a.provider(i.create(this.f488b, b.this.c, this.d));
            this.f = dagger.a.a.provider(cab.snapp.passenger.e.b.e.create(this.f488b, b.this.f484b));
            this.g = dagger.a.a.provider(k.create(this.f488b, this.f, this.d));
            this.h = dagger.a.a.provider(s.create(this.f488b, this.e, this.g));
            this.i = dagger.a.a.provider(j.create(this.f488b, this.h, this.c, this.g));
            this.j = dagger.a.a.provider(cab.snapp.passenger.e.b.o.create(this.f488b, this.d, b.this.c, this.i));
            this.k = dagger.a.a.provider(n.create(this.f488b, b.this.f484b, this.j, b.this.c));
            this.l = dagger.a.a.provider(r.create(this.f488b, b.this.f484b));
            this.m = dagger.a.a.provider(cab.snapp.passenger.e.b.g.create(this.f488b, this.k, this.i, this.h));
            this.n = dagger.a.a.provider(cab.snapp.passenger.e.b.h.create(this.f488b, this.f, this.m));
            this.o = dagger.a.a.provider(u.create(this.f488b, this.k, this.l, this.m, this.j, this.n, b.this.c));
            this.p = dagger.a.a.provider(q.create(this.f488b, this.j));
            this.q = dagger.a.a.provider(v.create(this.f488b));
            this.r = dagger.a.a.provider(p.create(this.f488b, b.this.f484b, this.j));
            this.s = dagger.a.a.provider(t.create(this.f488b, this.k, this.j, b.this.c));
            this.t = dagger.a.a.provider(cab.snapp.passenger.e.b.f.create(this.f488b));
        }

        public final void inject(BaseApplication baseApplication) {
            cab.snapp.passenger.b.injectSharedPreferencesManager(baseApplication, this.c.get());
            cab.snapp.passenger.b.injectNetworkModules(baseApplication, this.i.get());
        }

        public final void inject(cab.snapp.passenger.units.splash.a aVar) {
            cab.snapp.passenger.units.splash.b.injectSharedPreferencesManager(aVar, this.c.get());
            cab.snapp.passenger.units.splash.b.injectSnappConfigDataManager(aVar, this.k.get());
            cab.snapp.passenger.units.splash.b.injectSnappRideDataManager(aVar, this.o.get());
            cab.snapp.passenger.units.splash.b.injectSnappGroupDataManager(aVar, this.p.get());
            cab.snapp.passenger.units.splash.b.injectReportManagerHelper(aVar, b.this.c.get());
            cab.snapp.passenger.units.splash.b.injectSnappAccountManager(aVar, this.d.get());
            cab.snapp.passenger.units.splash.b.injectNetworkModules(aVar, this.i.get());
            cab.snapp.passenger.units.splash.b.injectEventManager(aVar, this.n.get());
        }

        public final void inject(RootActivity rootActivity) {
            cab.snapp.passenger.activities.base.a.injectSnappLocationDataManager(rootActivity, this.l.get());
            cab.snapp.passenger.activities.root.b.injectShowcaseHelper(rootActivity, b.this.f483a.get());
            cab.snapp.passenger.activities.root.b.injectSnappConfigDataManager(rootActivity, this.k.get());
            cab.snapp.passenger.activities.root.b.injectSnappRideDataManager(rootActivity, this.o.get());
            cab.snapp.passenger.activities.root.b.injectSnappGroupDataManager(rootActivity, this.p.get());
            cab.snapp.passenger.activities.root.b.injectReportManagerHelper(rootActivity, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.favorite_add_address.b bVar) {
            cab.snapp.passenger.units.favorite_add_address.c.injectSnappConfigDataManager(bVar, this.k.get());
            cab.snapp.passenger.units.favorite_add_address.c.injectSnappSearchDataManager(bVar, this.q.get());
            cab.snapp.passenger.units.favorite_add_address.c.injectSnappFavoritesDataManager(bVar, this.r.get());
            cab.snapp.passenger.units.favorite_add_address.c.injectSnappLocationDataManager(bVar, this.l.get());
            cab.snapp.passenger.units.favorite_add_address.c.injectSnappDataLayer(bVar, this.j.get());
            cab.snapp.passenger.units.favorite_add_address.c.injectReportManagerHelper(bVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.footer.ride_request_footer.a aVar) {
            cab.snapp.passenger.units.footer.ride_request_footer.b.injectShowcaseHelper(aVar, b.this.f483a.get());
            cab.snapp.passenger.units.footer.ride_request_footer.b.injectSnappConfigDataManager(aVar, this.k.get());
            cab.snapp.passenger.units.footer.ride_request_footer.b.injectSnappRideDataManager(aVar, this.o.get());
            cab.snapp.passenger.units.footer.ride_request_footer.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.footer.ride_request_footer.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.main.b bVar) {
            cab.snapp.passenger.units.main.c.injectShowcaseHelper(bVar, b.this.f483a.get());
            cab.snapp.passenger.units.main.c.injectSnappConfigDataManager(bVar, this.k.get());
            cab.snapp.passenger.units.main.c.injectSnappRideDataManager(bVar, this.o.get());
            cab.snapp.passenger.units.main.c.injectSnappSearchDataManager(bVar, this.q.get());
            cab.snapp.passenger.units.main.c.injectSnappProfileDataManager(bVar, this.s.get());
            cab.snapp.passenger.units.main.c.injectSnappLocationDataManager(bVar, this.l.get());
            cab.snapp.passenger.units.main.c.injectSnappDataLayer(bVar, this.j.get());
            cab.snapp.passenger.units.main.c.injectReportManagerHelper(bVar, b.this.c.get());
            cab.snapp.passenger.units.main.c.injectSharedPreferencesManager(bVar, this.c.get());
            cab.snapp.passenger.units.main.c.injectDeepLinkHelper(bVar, this.t.get());
            cab.snapp.passenger.units.main.c.injectSnappGroupDataManager(bVar, this.p.get());
        }

        public final void inject(cab.snapp.passenger.units.mainheader.a aVar) {
            cab.snapp.passenger.units.mainheader.b.injectShowcaseHelper(aVar, b.this.f483a.get());
            cab.snapp.passenger.units.mainheader.b.injectSnappConfigDataManager(aVar, this.k.get());
            cab.snapp.passenger.units.mainheader.b.injectSnappRideDataManager(aVar, this.o.get());
            cab.snapp.passenger.units.mainheader.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.mainheader.b.injectReportManagerHelper(aVar, b.this.c.get());
            cab.snapp.passenger.units.mainheader.b.injectSnappGroupDataManager(aVar, this.p.get());
        }

        public final void inject(cab.snapp.passenger.units.payment.a aVar) {
            cab.snapp.passenger.units.payment.b.injectSnappProfileDataManager(aVar, this.s.get());
            cab.snapp.passenger.units.payment.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.payment.b.injectReportManagerHelper(aVar, b.this.c.get());
            cab.snapp.passenger.units.payment.b.injectSnappRideDataManager(aVar, this.o.get());
            cab.snapp.passenger.units.payment.b.injectConfigDataManager(aVar, this.k.get());
        }

        public final void inject(cab.snapp.passenger.units.referral.a aVar) {
            cab.snapp.passenger.units.referral.b.injectSnappConfigDataManager(aVar, this.k.get());
            cab.snapp.passenger.units.referral.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.request_ride_waiting.a aVar) {
            cab.snapp.passenger.units.request_ride_waiting.b.injectSnappConfigDataManager(aVar, this.k.get());
            cab.snapp.passenger.units.request_ride_waiting.b.injectSnappRideDataManager(aVar, this.o.get());
            cab.snapp.passenger.units.request_ride_waiting.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.second_destination.b bVar) {
            cab.snapp.passenger.units.second_destination.c.injectSnappConfigDataManager(bVar, this.k.get());
            cab.snapp.passenger.units.second_destination.c.injectSnappRideDataManager(bVar, this.o.get());
            cab.snapp.passenger.units.second_destination.c.injectSnappSearchDataManager(bVar, this.q.get());
            cab.snapp.passenger.units.second_destination.c.injectSnappLocationDataManager(bVar, this.l.get());
            cab.snapp.passenger.units.second_destination.c.injectSnappDataLayer(bVar, this.j.get());
            cab.snapp.passenger.units.second_destination.c.injectReportManagerHelper(bVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.signup.a aVar) {
            cab.snapp.passenger.units.signup.b.injectSnappConfigDataManager(aVar, this.k.get());
            cab.snapp.passenger.units.signup.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.signup.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.charge.a aVar) {
            cab.snapp.passenger.units.charge.b.injectSnappConfigDataManager(aVar, this.k.get());
            cab.snapp.passenger.units.charge.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.charge.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.support.a aVar) {
            cab.snapp.passenger.units.support.b.injectSnappConfigDataManager(aVar, this.k.get());
            cab.snapp.passenger.units.support.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.support.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.footer.driver_assigned_footer.a aVar) {
            cab.snapp.passenger.units.footer.driver_assigned_footer.b.injectShowcaseHelper(aVar, b.this.f483a.get());
            cab.snapp.passenger.units.footer.driver_assigned_footer.b.injectSnappProfileDataManager(aVar, this.s.get());
            cab.snapp.passenger.units.footer.driver_assigned_footer.b.injectSnappConfigDataManager(aVar, this.k.get());
            cab.snapp.passenger.units.footer.driver_assigned_footer.b.injectSnappRideDataManager(aVar, this.o.get());
            cab.snapp.passenger.units.footer.driver_assigned_footer.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.footer.driver_assigned_footer.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(FavoriteAddAddressController favoriteAddAddressController) {
            cab.snapp.passenger.units.favorite_add_address.a.injectSnappConfigDataManager(favoriteAddAddressController, this.k.get());
        }

        public final void inject(MainController mainController) {
            cab.snapp.passenger.units.main.a.injectSnappConfigDataManager(mainController, this.k.get());
        }

        public final void inject(SecondDestinationController secondDestinationController) {
            cab.snapp.passenger.units.second_destination.a.injectSnappConfigDataManager(secondDestinationController, this.k.get());
        }

        public final void inject(LauncherActivity launcherActivity) {
            cab.snapp.passenger.activities.launcher.a.injectSnappRideDataManager(launcherActivity, this.o.get());
            cab.snapp.passenger.activities.launcher.a.injectReportManagerHelper(launcherActivity, b.this.c.get());
            cab.snapp.passenger.activities.launcher.a.injectDeepLinkHelper(launcherActivity, this.t.get());
        }

        public final void inject(cab.snapp.passenger.units.box_options.a aVar) {
            cab.snapp.passenger.units.box_options.b.injectSnappRideDataManager(aVar, this.o.get());
            cab.snapp.passenger.units.box_options.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.favorite_address.a aVar) {
            cab.snapp.passenger.units.favorite_address.b.injectSnappRideDataManager(aVar, this.o.get());
            cab.snapp.passenger.units.favorite_address.b.injectSnappFavoritesDataManager(aVar, this.r.get());
            cab.snapp.passenger.units.favorite_address.b.injectSnappLocationDataManager(aVar, this.l.get());
            cab.snapp.passenger.units.favorite_address.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.favorite_bar.a aVar) {
            cab.snapp.passenger.units.favorite_bar.b.injectSnappRideDataManager(aVar, this.o.get());
            cab.snapp.passenger.units.favorite_bar.b.injectSnappFavoritesDataManager(aVar, this.r.get());
            cab.snapp.passenger.units.favorite_bar.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.footer.mainfooter.a aVar) {
            cab.snapp.passenger.units.footer.mainfooter.b.injectSnappRideDataManager(aVar, this.o.get());
        }

        public final void inject(cab.snapp.passenger.units.ride_options.a aVar) {
            cab.snapp.passenger.units.ride_options.b.injectSnappRideDataManager(aVar, this.o.get());
            cab.snapp.passenger.units.ride_options.b.injectSnappProfileDataManager(aVar, this.s.get());
            cab.snapp.passenger.units.ride_options.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.ride_rating.a aVar) {
            cab.snapp.passenger.units.ride_rating.b.injectShowcaseHelper(aVar, b.this.f483a.get());
            cab.snapp.passenger.units.ride_rating.b.injectSnappRideDataManager(aVar, this.o.get());
            cab.snapp.passenger.units.ride_rating.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.ride_rating.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.search.a aVar) {
            cab.snapp.passenger.units.search.b.injectShowcaseHelper(aVar, b.this.f483a.get());
            cab.snapp.passenger.units.search.b.injectSnappRideDataManager(aVar, this.o.get());
            cab.snapp.passenger.units.search.b.injectSnappSearchDataManager(aVar, this.q.get());
            cab.snapp.passenger.units.search.b.injectSnappLocationDataManager(aVar, this.l.get());
            cab.snapp.passenger.units.search.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.search.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.sideMenu.a aVar) {
            cab.snapp.passenger.units.sideMenu.b.injectSnappFavoritesDataManager(aVar, this.r.get());
            cab.snapp.passenger.units.sideMenu.b.injectSnappProfileDataManager(aVar, this.s.get());
            cab.snapp.passenger.units.sideMenu.b.injectSnappConfigDataManager(aVar, this.k.get());
            cab.snapp.passenger.units.sideMenu.b.injectSnappSearchDataManager(aVar, this.q.get());
            cab.snapp.passenger.units.sideMenu.b.injectSnappRideDataManager(aVar, this.o.get());
            cab.snapp.passenger.units.sideMenu.b.injectSnappGroupDataManager(aVar, this.p.get());
            cab.snapp.passenger.units.sideMenu.b.injectReportManagerHelper(aVar, b.this.c.get());
            cab.snapp.passenger.units.sideMenu.b.injectSnappAccountManager(aVar, this.d.get());
        }

        public final void inject(cab.snapp.passenger.units.skippable_mobile_verification.a aVar) {
            cab.snapp.passenger.units.skippable_mobile_verification.b.injectSnappGroupDataManager(aVar, this.p.get());
            cab.snapp.passenger.units.skippable_mobile_verification.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.skippable_mobile_verification.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.profile.a aVar) {
            cab.snapp.passenger.units.profile.b.injectSnappProfileDataManager(aVar, this.s.get());
            cab.snapp.passenger.units.profile.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.setting.a aVar) {
            cab.snapp.passenger.units.setting.b.injectSnappConfigDataManager(aVar, this.k.get());
            cab.snapp.passenger.units.setting.b.injectSharedPreferencesManager(aVar, this.c.get());
            cab.snapp.passenger.units.setting.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.setting.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(BaseActivity baseActivity) {
            cab.snapp.passenger.activities.base.a.injectSnappLocationDataManager(baseActivity, this.l.get());
        }

        public final void inject(cab.snapp.passenger.units.tour.b bVar) {
            cab.snapp.passenger.units.tour.c.injectShowcaseHelper(bVar, b.this.f483a.get());
            cab.snapp.passenger.units.tour.c.injectReportManagerHelper(bVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.about_us.a aVar) {
            cab.snapp.passenger.units.about_us.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.about_us.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.credit.a aVar) {
            cab.snapp.passenger.units.credit.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.credit.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.forgot_password.a aVar) {
            cab.snapp.passenger.units.forgot_password.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.forgot_password.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.login.loginWithEmail.a aVar) {
            cab.snapp.passenger.units.login.loginWithEmail.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.login.loginWithEmail.b.injectReportManagerHelper(aVar, b.this.c.get());
            cab.snapp.passenger.units.login.loginWithEmail.b.injectSnappAccountManager(aVar, this.d.get());
        }

        public final void inject(cab.snapp.passenger.units.login.loginWithOTP.a aVar) {
            cab.snapp.passenger.units.login.loginWithOTP.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.login.loginWithOTP.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.login.loginWithPhoneNumber.a aVar) {
            cab.snapp.passenger.units.login.loginWithPhoneNumber.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.login.loginWithPhoneNumber.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.messages.a aVar) {
            cab.snapp.passenger.units.messages.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.messages.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.over_the_map_empty.a aVar) {
            cab.snapp.passenger.units.over_the_map_empty.b.injectM(aVar, this.k.get());
        }

        public final void inject(cab.snapp.passenger.units.ride_history.a aVar) {
            cab.snapp.passenger.units.ride_history.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.ride_history.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.phone_verification.a aVar) {
            cab.snapp.passenger.units.phone_verification.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.phone_verification.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.ride_history_details.a aVar) {
            cab.snapp.passenger.units.ride_history_details.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(SnappJekDialog snappJekDialog) {
            cab.snapp.passenger.units.snapp_services.b.injectReportManagerHelper(snappJekDialog, b.this.c.get());
        }

        public final void inject(cab.snapp.passenger.units.webhost.a aVar) {
            cab.snapp.passenger.units.webhost.b.injectReportManagerHelper(aVar, b.this.c.get());
            cab.snapp.passenger.units.webhost.b.injectRideDataManager(aVar, this.o.get());
            cab.snapp.passenger.units.webhost.b.injectGroupDataManager(aVar, this.p.get());
            cab.snapp.passenger.units.webhost.b.injectLocationDataManager(aVar, this.l.get());
        }

        public final void inject(cab.snapp.passenger.units.welcome.a aVar) {
            cab.snapp.passenger.units.welcome.b.injectReportManagerHelper(aVar, b.this.c.get());
            cab.snapp.passenger.units.welcome.b.injectSnappProfileDataManager(aVar, this.s.get());
        }

        public final void inject(cab.snapp.passenger.units.ticket.a aVar) {
            cab.snapp.passenger.units.ticket.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.ticket.b.injectReportManagerHelper(aVar, b.this.c.get());
        }

        public final void inject(AuthenticatorActivity authenticatorActivity) {
            cab.snapp.passenger.activities.root.a.injectSnappAccountManager(authenticatorActivity, this.d.get());
        }

        public final void inject(cab.snapp.passenger.units.top_up_payment.b bVar) {
            cab.snapp.passenger.units.top_up_payment.c.injectSnappDataLayer(bVar, this.j.get());
            cab.snapp.passenger.units.top_up_payment.c.injectReportManagerHelper(bVar, b.this.c.get());
            cab.snapp.passenger.units.top_up_payment.c.injectSnappProfileDataManager(bVar, this.s.get());
            cab.snapp.passenger.units.top_up_payment.c.injectSnappConfigDataManager(bVar, this.k.get());
            cab.snapp.passenger.units.top_up_payment.c.injectSnappRideDataManager(bVar, this.o.get());
        }

        public final void inject(cab.snapp.passenger.units.jek_header.a aVar) {
            cab.snapp.passenger.units.jek_header.b.injectSnappGroupDataManager(aVar, this.p.get());
            cab.snapp.passenger.units.jek_header.b.injectSnappProfileDataManager(aVar, this.s.get());
            cab.snapp.passenger.units.jek_header.b.injectSnappRideDataManager(aVar, this.o.get());
        }

        public final void inject(cab.snapp.passenger.units.charge_recently.a aVar) {
            cab.snapp.passenger.units.charge_recently.b.injectSnappDataLayer(aVar, this.j.get());
        }

        public final void inject(cab.snapp.passenger.units.snapp_charge_transactions.a aVar) {
            cab.snapp.passenger.units.snapp_charge_transactions.b.injectSnappDataLayer(aVar, this.j.get());
        }

        public final void inject(cab.snapp.passenger.units.charge_select_amount.a aVar) {
            cab.snapp.passenger.units.charge_select_amount.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.charge_select_amount.b.injectSnappConfigDataManager(aVar, this.k.get());
        }

        public final void inject(cab.snapp.passenger.units.charge_confirm_payment.a aVar) {
            cab.snapp.passenger.units.charge_confirm_payment.b.injectSnappDataLayer(aVar, this.j.get());
            cab.snapp.passenger.units.charge_confirm_payment.b.injectDeepLinkHelper(aVar, this.t.get());
        }
    }

    /* synthetic */ b(a aVar, byte b2) {
        this(aVar);
    }

    private b(a aVar) {
        this.f483a = dagger.a.a.provider(cab.snapp.passenger.e.b.c.create(aVar.f485a));
        this.f484b = dagger.a.c.create(aVar.f486b);
        this.c = dagger.a.a.provider(cab.snapp.passenger.e.b.b.create(aVar.f485a, this.f484b));
        this.d = dagger.a.c.create(aVar.c);
    }

    public static a.C0017a builder() {
        return new a((byte) 0);
    }

    public final c getDataManagerComponent(cab.snapp.passenger.e.b.d dVar) {
        return new C0018b(this, dVar, (byte) 0);
    }

    public final void inject(cab.snapp.passenger.units.footer.ride_request_footer.c cVar) {
        cab.snapp.passenger.units.footer.ride_request_footer.d.injectShowcaseHelper(cVar, this.f483a.get());
        cab.snapp.passenger.units.footer.ride_request_footer.d.injectReportManagerHelper(cVar, this.c.get());
    }

    public final void inject(cab.snapp.passenger.units.payment.c cVar) {
        cab.snapp.passenger.units.payment.d.injectReportManagerHelper(cVar, this.c.get());
    }

    public final void inject(cab.snapp.passenger.units.second_destination.d dVar) {
        cab.snapp.passenger.units.second_destination.e.injectReportManagerHelper(dVar, this.c.get());
    }

    public final void inject(cab.snapp.passenger.units.ride_options.c cVar) {
        cab.snapp.passenger.units.ride_options.d.injectReportManagerHelper(cVar, this.c.get());
    }

    public final void inject(cab.snapp.passenger.units.search.c cVar) {
        cab.snapp.passenger.units.search.d.injectShowcaseHelper(cVar, this.f483a.get());
        cab.snapp.passenger.units.search.d.injectReportManagerHelper(cVar, this.c.get());
    }

    public final void inject(cab.snapp.passenger.units.main.d dVar) {
        cab.snapp.passenger.units.main.e.injectShowcaseHelper(dVar, this.f483a.get());
        cab.snapp.passenger.units.main.e.injectReportManagerHelper(dVar, this.c.get());
    }

    public final void inject(cab.snapp.passenger.units.mainheader.c cVar) {
        cab.snapp.passenger.units.mainheader.d.injectShowcaseHelper(cVar, this.f483a.get());
        cab.snapp.passenger.units.mainheader.d.injectReportManagerHelper(cVar, this.c.get());
    }

    public final void inject(cab.snapp.passenger.units.footer.driver_assigned_footer.c cVar) {
        cab.snapp.passenger.units.footer.driver_assigned_footer.d.injectShowcaseHelper(cVar, this.f483a.get());
    }

    public final void inject(cab.snapp.passenger.units.sideMenu.c cVar) {
        cab.snapp.passenger.units.sideMenu.d.injectShowcaseHelper(cVar, this.f483a.get());
    }

    public final void inject(cab.snapp.passenger.units.credit.c cVar) {
        cab.snapp.passenger.units.credit.d.injectReportManagerHelper(cVar, this.c.get());
    }

    public final void inject(cab.snapp.passenger.units.favorite_address.c cVar) {
        cab.snapp.passenger.units.favorite_address.d.injectReportManagerHelper(cVar, this.c.get());
    }

    public final void inject(cab.snapp.passenger.units.favorite_bar.c cVar) {
        cab.snapp.passenger.units.favorite_bar.d.injectReportManagerHelper(cVar, this.c.get());
    }

    public final void inject(cab.snapp.passenger.units.phone_verification.c cVar) {
        cab.snapp.passenger.units.phone_verification.d.injectReportManagerHelper(cVar, this.c.get());
    }

    public final void inject(cab.snapp.passenger.units.request_ride_waiting.c cVar) {
        cab.snapp.passenger.units.request_ride_waiting.d.injectReportManagerHelper(cVar, this.c.get());
    }

    public final void inject(cab.snapp.passenger.units.ride_history_details.c cVar) {
        cab.snapp.passenger.units.ride_history_details.d.injectReportManagerHelper(cVar, this.c.get());
    }

    public final void inject(cab.snapp.passenger.units.tour.e eVar) {
        cab.snapp.passenger.units.tour.f.injectReportManagerHelper(eVar, this.c.get());
    }
}
