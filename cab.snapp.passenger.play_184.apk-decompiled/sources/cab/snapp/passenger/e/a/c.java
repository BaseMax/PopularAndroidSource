package cab.snapp.passenger.e.a;

import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.base.BaseActivity;
import cab.snapp.passenger.activities.launcher.LauncherActivity;
import cab.snapp.passenger.activities.root.AuthenticatorActivity;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.e.b.d;
import cab.snapp.passenger.units.about_us.a;
import cab.snapp.passenger.units.favorite_add_address.FavoriteAddAddressController;
import cab.snapp.passenger.units.favorite_add_address.b;
import cab.snapp.passenger.units.main.MainController;
import cab.snapp.passenger.units.second_destination.SecondDestinationController;
import cab.snapp.passenger.units.snapp_services.SnappJekDialog;
import dagger.Subcomponent;

@Subcomponent(modules = {d.class})
public interface c {
    void inject(BaseApplication baseApplication);

    void inject(BaseActivity baseActivity);

    void inject(LauncherActivity launcherActivity);

    void inject(AuthenticatorActivity authenticatorActivity);

    void inject(RootActivity rootActivity);

    void inject(a aVar);

    void inject(cab.snapp.passenger.units.box_options.a aVar);

    void inject(cab.snapp.passenger.units.charge.a aVar);

    void inject(cab.snapp.passenger.units.charge_confirm_payment.a aVar);

    void inject(cab.snapp.passenger.units.charge_recently.a aVar);

    void inject(cab.snapp.passenger.units.charge_select_amount.a aVar);

    void inject(cab.snapp.passenger.units.credit.a aVar);

    void inject(FavoriteAddAddressController favoriteAddAddressController);

    void inject(b bVar);

    void inject(cab.snapp.passenger.units.favorite_address.a aVar);

    void inject(cab.snapp.passenger.units.favorite_bar.a aVar);

    void inject(cab.snapp.passenger.units.footer.driver_assigned_footer.a aVar);

    void inject(cab.snapp.passenger.units.footer.mainfooter.a aVar);

    void inject(cab.snapp.passenger.units.footer.ride_request_footer.a aVar);

    void inject(cab.snapp.passenger.units.forgot_password.a aVar);

    void inject(cab.snapp.passenger.units.jek_header.a aVar);

    void inject(cab.snapp.passenger.units.login.loginWithEmail.a aVar);

    void inject(cab.snapp.passenger.units.login.loginWithOTP.a aVar);

    void inject(cab.snapp.passenger.units.login.loginWithPhoneNumber.a aVar);

    void inject(MainController mainController);

    void inject(cab.snapp.passenger.units.main.b bVar);

    void inject(cab.snapp.passenger.units.mainheader.a aVar);

    void inject(cab.snapp.passenger.units.messages.a aVar);

    void inject(cab.snapp.passenger.units.over_the_map_empty.a aVar);

    void inject(cab.snapp.passenger.units.payment.a aVar);

    void inject(cab.snapp.passenger.units.phone_verification.a aVar);

    void inject(cab.snapp.passenger.units.profile.a aVar);

    void inject(cab.snapp.passenger.units.referral.a aVar);

    void inject(cab.snapp.passenger.units.request_ride_waiting.a aVar);

    void inject(cab.snapp.passenger.units.ride_history.a aVar);

    void inject(cab.snapp.passenger.units.ride_history_details.a aVar);

    void inject(cab.snapp.passenger.units.ride_options.a aVar);

    void inject(cab.snapp.passenger.units.ride_rating.a aVar);

    void inject(cab.snapp.passenger.units.search.a aVar);

    void inject(SecondDestinationController secondDestinationController);

    void inject(cab.snapp.passenger.units.second_destination.b bVar);

    void inject(cab.snapp.passenger.units.setting.a aVar);

    void inject(cab.snapp.passenger.units.sideMenu.a aVar);

    void inject(cab.snapp.passenger.units.signup.a aVar);

    void inject(cab.snapp.passenger.units.skippable_mobile_verification.a aVar);

    void inject(cab.snapp.passenger.units.snapp_charge_transactions.a aVar);

    void inject(SnappJekDialog snappJekDialog);

    void inject(cab.snapp.passenger.units.splash.a aVar);

    void inject(cab.snapp.passenger.units.support.a aVar);

    void inject(cab.snapp.passenger.units.ticket.a aVar);

    void inject(cab.snapp.passenger.units.top_up_payment.b bVar);

    void inject(cab.snapp.passenger.units.tour.b bVar);

    void inject(cab.snapp.passenger.units.webhost.a aVar);

    void inject(cab.snapp.passenger.units.welcome.a aVar);
}
