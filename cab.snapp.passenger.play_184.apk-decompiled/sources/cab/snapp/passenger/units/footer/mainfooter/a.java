package cab.snapp.passenger.units.footer.mainfooter;

import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data.models.AvailableServiceTypes;
import cab.snapp.passenger.data_access_layer.a.c;
import cab.snapp.passenger.data_access_layer.network.responses.PinResponse;
import cab.snapp.passenger.f.j;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.main.MainController;
import cab.snapp.passenger.units.main.b;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    g f767a;

    /* renamed from: b  reason: collision with root package name */
    private String f768b;
    private String c;
    /* access modifiers changed from: private */
    public int d;
    private boolean e;

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (!(getPresenter() == null || getController() == null || a() == null)) {
                if (getRouter() != null) {
                    ((d) getRouter()).setNavigationController(a().getFooterNavController());
                }
                this.f768b = c.getInstance().getPrivateChannelId(j.PIN_RESPONSE_CHANNEL_KEY);
                this.c = c.getInstance().getPrivateChannelId(j.MAP_INTERACTIONS_CHANNEL_KEY);
                addDisposable(this.f767a.getUpdateSignalObservable().subscribe(new io.reactivex.e.g<Integer>() {
                    public final void accept(Integer num) throws Exception {
                        a.this.b();
                    }
                }));
                addDisposable(c.getInstance().subscribeToPrivateChannel(this.f768b, new io.reactivex.e.g<PinResponse>() {
                    public final void accept(PinResponse pinResponse) throws Exception {
                        if (pinResponse != null && a.this.getPresenter() != null) {
                            int currentState = a.this.f767a.getCurrentState();
                            if (currentState == 0) {
                                a aVar = a.this;
                                int unused = aVar.d = aVar.f767a.getServiceType();
                                ((c) a.this.getPresenter()).setAddress(pinResponse.getSnappFormattedAddress());
                                if (pinResponse.getAvailableServiceTypesList() != null) {
                                    for (AvailableServiceTypes next : pinResponse.getAvailableServiceTypesList()) {
                                        if (next.getType() == a.this.d) {
                                            ((c) a.this.getPresenter()).setVehiclesCount(next.getVehicles().size());
                                        }
                                    }
                                }
                            } else if (currentState == 1) {
                                ((c) a.this.getPresenter()).setDestinationAddress(pinResponse.getSnappFormattedAddress());
                            }
                        }
                    }
                }));
                addDisposable(c.getInstance().subscribeToPrivateChannel(this.c, new io.reactivex.e.g<String>() {
                    public final void accept(String str) throws Exception {
                        if (a.this.getPresenter() != null && str.equals(j.INTERACTION_CENTER_CHANGED_ON_IDLE)) {
                            ((c) a.this.getPresenter()).showVehiclesLoading();
                        }
                    }
                }));
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.e = true;
        b();
    }

    private b a() {
        if (getController() == null || getController().getParentFragment() == null || getController().getParentFragment().getParentFragment() == null || !(getController().getParentFragment().getParentFragment() instanceof MainController) || ((MainController) getController().getParentFragment().getParentFragment()).getControllerInteractor() == null) {
            return null;
        }
        return (b) ((MainController) getController().getParentFragment().getParentFragment()).getControllerInteractor();
    }

    /* access modifiers changed from: private */
    public void b() {
        if (getPresenter() != null) {
            int currentState = this.f767a.getCurrentState();
            if (currentState == 0) {
                ((c) getPresenter()).handleIdleState();
                if (!(getRouter() == null || a() == null || a().getFooterNavController().getCurrentDestination().getId() == R.id.mainFooterController)) {
                    ((d) getRouter()).navigateToMainFooter();
                }
            } else if (currentState == 1) {
                ((c) getPresenter()).setAddress(this.f767a.getOriginFormattedAddress());
                ((c) getPresenter()).handleOriginSelectedState();
            } else if (currentState != 2) {
                if (currentState != 4) {
                    if (currentState != 5) {
                        if (currentState != 6) {
                            if (currentState == 7) {
                                ((c) getPresenter()).handleIdleState();
                                if (!(getRouter() == null || a() == null || a().getFooterNavController() == null || a().getFooterNavController().getCurrentDestination() == null || a().getFooterNavController().getCurrentDestination().getId() == R.id.mainFooterController)) {
                                    ((d) getRouter()).navigateToMainFooter();
                                }
                            }
                        } else if (this.e && getRouter() != null) {
                            ((d) getRouter()).navigateToDriverAssignedFooter();
                            this.e = false;
                        }
                    } else if (this.e && getRouter() != null) {
                        ((d) getRouter()).navigateToDriverAssignedFooter();
                        this.e = false;
                    }
                } else if (this.e && getRouter() != null) {
                    ((d) getRouter()).navigateToDriverAssignedFooter();
                    this.e = false;
                }
            } else if (this.e && getRouter() != null) {
                ((d) getRouter()).navigateToRideRequestFooter();
                this.e = false;
                ((c) getPresenter()).handleDestinationSelectedState();
            }
        }
    }
}
