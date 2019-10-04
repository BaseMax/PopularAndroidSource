package cab.snapp.passenger.e.a;

import android.app.Application;
import cab.snapp.passenger.e.b.d;
import cab.snapp.passenger.units.credit.c;
import cab.snapp.passenger.units.tour.e;
import dagger.BindsInstance;
import dagger.Component;
import javax.inject.Singleton;

@Singleton
@Component(modules = {cab.snapp.passenger.e.b.a.class})
public interface a {

    /* renamed from: cab.snapp.passenger.e.a.a$a  reason: collision with other inner class name */
    public interface C0017a {
        C0017a appModule(cab.snapp.passenger.e.b.a aVar);

        @BindsInstance
        C0017a authenticatorActivityClass(Class<?> cls);

        a build();

        @BindsInstance
        C0017a context(Application application);
    }

    c getDataManagerComponent(d dVar);

    void inject(c cVar);

    void inject(cab.snapp.passenger.units.favorite_address.c cVar);

    void inject(cab.snapp.passenger.units.favorite_bar.c cVar);

    void inject(cab.snapp.passenger.units.footer.driver_assigned_footer.c cVar);

    void inject(cab.snapp.passenger.units.footer.ride_request_footer.c cVar);

    void inject(cab.snapp.passenger.units.main.d dVar);

    void inject(cab.snapp.passenger.units.mainheader.c cVar);

    void inject(cab.snapp.passenger.units.payment.c cVar);

    void inject(cab.snapp.passenger.units.phone_verification.c cVar);

    void inject(cab.snapp.passenger.units.request_ride_waiting.c cVar);

    void inject(cab.snapp.passenger.units.ride_history_details.c cVar);

    void inject(cab.snapp.passenger.units.ride_options.c cVar);

    void inject(cab.snapp.passenger.units.search.c cVar);

    void inject(cab.snapp.passenger.units.second_destination.d dVar);

    void inject(cab.snapp.passenger.units.sideMenu.c cVar);

    void inject(e eVar);
}
