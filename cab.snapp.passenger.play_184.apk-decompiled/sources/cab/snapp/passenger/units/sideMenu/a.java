package cab.snapp.passenger.units.sideMenu;

import android.content.Intent;
import android.net.Uri;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.c.c;
import cab.snapp.passenger.c.d;
import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.c.h;
import cab.snapp.passenger.data.models.SideMenuData;
import cab.snapp.passenger.data_access_layer.network.requests.CreditRequest;
import cab.snapp.passenger.data_access_layer.network.responses.CreditResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ProfileResponse;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.top_up_payment.TopUpBottomSheetDialogFragment;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.inject.Inject;

public class a extends BaseInteractor<e, c> {
    private static final String i = UUID.randomUUID().toString();
    @Inject

    /* renamed from: a  reason: collision with root package name */
    c f1240a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    f f1241b;
    @Inject
    b c;
    @Inject
    h d;
    @Inject
    g e;
    @Inject
    d f;
    @Inject
    cab.snapp.passenger.f.b.b.c g;
    @Inject
    cab.snapp.authenticator.c h;

    public static String getPrivateChannelId() {
        return cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId(i);
    }

    private cab.snapp.passenger.units.main.b a() {
        if (getPresenter() == null || getController() == null || !(getController().getParentInteractor() instanceof cab.snapp.passenger.units.main.b)) {
            return null;
        }
        return (cab.snapp.passenger.units.main.b) getController().getParentInteractor();
    }

    private static List<SideMenuData> b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SideMenuData(R.string.side_menu_title_credit_amount, R.drawable.ic_credit_amount, 0));
        arrayList.add(new SideMenuData(R.string.profile, R.drawable.ic_profile_data, 1));
        arrayList.add(new SideMenuData(R.string.transactions, R.drawable.ic_transactions, 2));
        arrayList.add(new SideMenuData(R.string.ride_history, R.drawable.ic_ride_history, 3));
        arrayList.add(new SideMenuData(R.string.favorite_addresses, R.drawable.ic_favorites, 4));
        arrayList.add(new SideMenuData(R.string.messages, R.drawable.ic_messages, 5));
        arrayList.add(new SideMenuData(R.string.support, R.drawable.ic_support, 6));
        arrayList.add(new SideMenuData(R.string.settings, R.drawable.ic_setting, 7));
        arrayList.add(new SideMenuData(R.string.about_snapp, R.drawable.ic_about, 8));
        arrayList.add(new SideMenuData(R.string.exit, R.drawable.ic_exit, 9));
        return arrayList;
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(ProfileResponse profileResponse) throws Exception {
        if (getPresenter() != null && profileResponse != null) {
            c cVar = (c) getPresenter();
            String fullname = profileResponse.getFullname();
            boolean isHasMessage = profileResponse.isHasMessage();
            boolean z = true;
            if (profileResponse.getEmailVerified() != 1) {
                z = false;
            }
            cVar.onLoadingSideMenu(fullname, isHasMessage, z, b());
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onLoadingSideMenu(null, false, true, b());
        }
    }

    public void proceedAddCredit() {
        if (!(a() == null || a().getController() == null || getRouter() == null || getController() == null || getController().getContext() == null)) {
            a().toggleDrawer();
            e eVar = (e) getRouter();
            getController().getContext().getString(R.string.add_credit);
            TopUpBottomSheetDialogFragment newInstance = TopUpBottomSheetDialogFragment.newInstance(CreditRequest.PLACE.SIDE_MENU_TOPUP);
            if (!newInstance.isAdded()) {
                newInstance.show(eVar.getFragmentManager(), "top_up_bottom_sheet");
            }
        }
        this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_MENU_INCREASE_CREDIT, "[tap]");
    }

    public void proceedProfile() {
        if (!(getActivity() == null || !(getActivity() instanceof RootActivity) || a() == null || getRouter() == null)) {
            a().toggleDrawer();
            ((e) getRouter()).routeToProfileUnit();
        }
        this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_MENU_USER_INFO, "[tap]");
    }

    public void proceedTransactions() {
        if (!(getActivity() == null || !(getActivity() instanceof RootActivity) || a() == null || getRouter() == null)) {
            a().toggleDrawer();
            ((e) getRouter()).routeToTransactions();
        }
        this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_MENU_TURNOVER, "[tap]");
    }

    public void proceedRideHistory() {
        if (!(getActivity() == null || !(getActivity() instanceof RootActivity) || a() == null || getRouter() == null)) {
            a().toggleDrawer();
            ((e) getRouter()).routeToRideHistory();
        }
        this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_MENU_RIDE_HISTORY, "[tap]");
    }

    public void proceedFavorites() {
        if (!(getActivity() == null || !(getActivity() instanceof RootActivity) || a() == null || getRouter() == null)) {
            a().toggleDrawer();
            ((e) getRouter()).routeToFavorites();
        }
        this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_MENU_FAV_ADDRESS, "[tap]");
    }

    public void proceedMessages() {
        if (!(getActivity() == null || !(getActivity() instanceof RootActivity) || a() == null || getRouter() == null)) {
            a().toggleDrawer();
            ((e) getRouter()).routeToMessages();
        }
        this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_MENU_MESSAGES, "[tap]");
    }

    public void proceedSupport() {
        if (!(getActivity() == null || !(getActivity() instanceof RootActivity) || a() == null || getRouter() == null)) {
            a().toggleDrawer();
            ((e) getRouter()).routeToSupport();
        }
        this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_MENU_SUPPORT, "[tap]");
    }

    public void proceedAbout() {
        if (!(getActivity() == null || !(getActivity() instanceof RootActivity) || a() == null || getRouter() == null)) {
            a().toggleDrawer();
            ((e) getRouter()).routeToAbout();
        }
        this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_MENU_ABOUT, "[tap]");
    }

    public void proceedSettings() {
        if (!(getActivity() == null || !(getActivity() instanceof RootActivity) || a() == null || getRouter() == null)) {
            a().toggleDrawer();
            ((e) getRouter()).routeToSettings();
        }
        this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_MENU_SETTINGS, "[tap]");
    }

    public void proceedSnappFood() {
        if (a() != null) {
            a().toggleDrawer();
            if (getController() != null && getController().getActivity() != null && !getController().getActivity().isFinishing()) {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setData(Uri.parse("https://snappfood.ir"));
                getController().getActivity().startActivity(intent);
            }
        }
    }

    public void proceedFreeRide() {
        if (a() != null && getRouter() != null) {
            a().toggleDrawer();
            ((e) getRouter()).routeToFreeRide();
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (getPresenter() != null) {
                ((c) getPresenter()).onInitDefaults();
                ProfileResponse profile = this.f1241b.getProfile();
                boolean z = false;
                if (profile != null) {
                    c cVar = (c) getPresenter();
                    String fullname = profile.getFullname();
                    boolean isHasMessage = profile.isHasMessage();
                    if (profile.getEmailVerified() == 1) {
                        z = true;
                    }
                    cVar.onLoadingSideMenu(fullname, isHasMessage, z, b());
                } else {
                    ((c) getPresenter()).onLoadingSideMenu(null, false, true, b());
                }
            }
            if (getController() != null) {
                addDisposable(this.f1241b.getProfileObservable().subscribe(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        a.this.a((ProfileResponse) obj);
                    }
                }));
                addDisposable(this.f1241b.getCreditObservable().subscribe(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        a.this.a((CreditResponse) obj);
                    }
                }));
                if (getRouter() != null) {
                    ((e) getRouter()).setNavigationController(getController().getOvertheMapNavigationController());
                }
            }
            addDisposable(cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(getPrivateChannelId(), new io.reactivex.e.g<Boolean>() {
                public final void accept(Boolean bool) throws Exception {
                    if (a.this.getPresenter() != null && bool.booleanValue()) {
                        ((c) a.this.getPresenter()).onMenuIsOpened();
                    }
                }
            }));
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ProfileResponse profileResponse) throws Exception {
        if (getPresenter() != null && profileResponse != null) {
            c cVar = (c) getPresenter();
            String fullname = profileResponse.getFullname();
            boolean isHasMessage = profileResponse.isHasMessage();
            boolean z = true;
            if (profileResponse.getEmailVerified() != 1) {
                z = false;
            }
            cVar.onUpdateData(fullname, isHasMessage, z);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(CreditResponse creditResponse) throws Exception {
        if (getPresenter() != null && creditResponse != null && (creditResponse.getDefaultWallet() != 2 || creditResponse.getApCredit() != null)) {
            ((c) getPresenter()).updateCredit(creditResponse.getCredit());
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        addDisposable(this.f1241b.fetchAndRefreshProfile().subscribe(new io.reactivex.e.g() {
            public final void accept(Object obj) {
                a.this.b((ProfileResponse) obj);
            }
        }, new io.reactivex.e.g() {
            public final void accept(Object obj) {
                a.this.a((Throwable) obj);
            }
        }));
        this.g.reportScreenName("");
    }

    public void proceedExit() {
        cab.snapp.b.a aVar = new cab.snapp.b.a(getActivity());
        aVar.delete("FIRST_TIME_PASSENGER_BOARDED_SHARED_PREF_KEY");
        aVar.delete("Confirm_Women_Service_Type");
        aVar.delete("First_Time_Confirm_Ride_Options");
        aVar.delete("shared_pref_key_favorites");
        aVar.delete("HAS_SEEN_SKIPPABLE_PHONE_VERIFICATION_SHARED_PREF_KEY");
        if (a() != null) {
            a().toggleDrawer();
            if (getActivity() != null) {
                this.g.reportEvent(c.e.LOGOUT);
                this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_MENU_EXIT, "[tap]");
                this.g.reportLogOutUser();
                this.h.removeAccount(getActivity());
                this.f1240a.reset();
                this.f1241b.reset();
                this.c.reset();
                this.d.reset();
                this.e.reset();
                this.f.reset();
                getActivity().finish();
            }
        }
    }
}
