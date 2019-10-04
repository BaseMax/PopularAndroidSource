package cab.snapp.passenger.units.favorite_bar;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.c;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data.models.FavoriteModel;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.units.second_destination.b;
import com.google.android.gms.maps.model.LatLng;
import java.util.List;
import javax.inject.Inject;

public class a extends BaseInteractor<e, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    g f741a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    c f742b;
    @Inject
    cab.snapp.passenger.f.b.b.c c;
    private List<FavoriteModel> d;
    private boolean e = false;

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(Throwable th) throws Exception {
    }

    public void handleAddFavorite() {
        if (getController() != null) {
            if (getController().getParentInteractor() instanceof cab.snapp.passenger.units.mainheader.a) {
                this.c.sendAnalyticsEvent(c.C0021c.UX, c.b.FAVORITE, "Add From Map");
                ((cab.snapp.passenger.units.mainheader.a) getController().getParentInteractor()).navigateToAddFavoriteAddress();
            } else if (getController().getParentInteractor() instanceof b) {
                ((b) getController().getParentInteractor()).navigateToAddFavoriteAddress();
            }
        }
    }

    public void favoriteSelected(FavoriteModel favoriteModel) {
        if (favoriteModel != null && favoriteModel.getFormattedAddress() != null) {
            int currentState = this.f741a.getCurrentState();
            if (currentState == 1) {
                this.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_SET_DESTINATION, "[favorite][select]");
                if (favoriteModel.getName() != null) {
                    this.f741a.setDestinationFormattedAddress(favoriteModel.getName());
                    this.f741a.setDestinationFormattedDetailsAddress(favoriteModel.getDetailAddress());
                }
                this.f741a.setDestinationLatLng(new LatLng(favoriteModel.getFormattedAddress().getLat(), favoriteModel.getFormattedAddress().getLng()));
                this.f741a.setDestinationPlaceId(favoriteModel.getId());
            } else if ((currentState == 2 || this.f741a.isInRide()) && getController() != null && (getController().getParentInteractor() instanceof b)) {
                ((b) getController().getParentInteractor()).favoriteSelected(favoriteModel);
            }
            reportFavoriteSelectedFromFavoriteBarToAppMetrica();
        }
    }

    public void reportFavoriteSelectedFromFavoriteBarToAppMetrica() {
        if (this.f741a.getCurrentState() == 2) {
            cab.snapp.passenger.f.b.b.c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("setDestination", "favoritSelect").build());
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(List list) throws Exception {
        this.e = true;
        a((List<FavoriteModel>) list);
    }

    /* access modifiers changed from: private */
    public void a(List<FavoriteModel> list) {
        if (getPresenter() != null) {
            this.d = list;
            ((c) getPresenter()).onFavoriteModelListReady(this.d);
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (getArguments() != null) {
                Bundle arguments = getArguments();
                if (arguments.containsKey(FavoriteBarController.KEY_FAVORITES_LIST)) {
                    this.d = arguments.getParcelableArrayList(FavoriteBarController.KEY_FAVORITES_LIST);
                }
            }
            if (getPresenter() != null) {
                ((c) getPresenter()).onFavoriteModelListReady(this.d);
            }
            if (getPresenter() != null) {
                this.d = this.f742b.getCachedData();
                List<FavoriteModel> list = this.d;
                if (list != null) {
                    a(list);
                }
                if (!this.e && getController() != null && (getController().getParentInteractor() instanceof cab.snapp.passenger.units.mainheader.a)) {
                    addDisposable(this.f742b.fetchAndRefreshData().subscribe(new io.reactivex.e.g() {
                        public final void accept(Object obj) {
                            a.this.b((List) obj);
                        }
                    }, $$Lambda$a$68s4FnXQoj4naf0Mk3LVNB0DVlg.INSTANCE));
                }
            }
            addDisposable(this.f742b.observeData().subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((List<FavoriteModel>) (List) obj);
                }
            }));
            if (!(getRouter() == null || getController() == null)) {
                ((e) getRouter()).setNavigationController(getController().getOvertheMapNavigationController());
            }
        }
    }
}
