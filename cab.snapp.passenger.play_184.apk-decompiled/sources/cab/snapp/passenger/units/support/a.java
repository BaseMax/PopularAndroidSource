package cab.snapp.passenger.units.support;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.c.g;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.data.models.RideHistoryInfo;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse;
import cab.snapp.passenger.data_access_layer.network.responses.TicketItemResponse;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.units.ticket.TicketController;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {

    /* renamed from: a  reason: collision with root package name */
    int f1324a = 1;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    b f1325b;
    @Inject
    d c;
    @Inject
    c d;
    private int e = 1;
    private Map<Integer, List<TicketItemResponse>> f = new HashMap();
    private List<TicketItemResponse> g = new ArrayList();
    public String relation;
    public RideHistoryInfo rideHistoryInfo = null;

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(Throwable th) throws Exception {
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void b(Throwable th) throws Exception {
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(TicketItemResponse ticketItemResponse) throws Exception {
        if (ticketItemResponse != null) {
            this.g = ticketItemResponse.getChildList();
            if (getPresenter() != null) {
                ((c) getPresenter()).onShowTickets(ticketItemResponse.getChildList());
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(TicketItemResponse ticketItemResponse) throws Exception {
        if (ticketItemResponse != null) {
            this.g = ticketItemResponse.getChildList();
            if (getPresenter() != null) {
                ((c) getPresenter()).onShowTickets(ticketItemResponse.getChildList());
            }
        }
    }

    /* access modifiers changed from: private */
    public ConfigResponse a() {
        try {
            return this.f1325b.getConfig();
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
            return null;
        }
    }

    public void callSnappSupport() {
        BaseController controller = getController();
        if (controller != null && controller.getActivity() != null && !controller.getActivity().isFinishing() && a() != null) {
            g.getPermission(controller.getActivity(), new String[]{"android.permission.CALL_PHONE"}, new g.a() {
                public final void onPermissionGranted() {
                    a aVar = a.this;
                    a.a(aVar, aVar.a().getCallCenterNumber());
                }

                public final void onPermissionDenied(ArrayList<String> arrayList) {
                    a aVar = a.this;
                    a.b(aVar, aVar.a().getCallCenterNumber());
                }
            }, new String[0]);
        }
    }

    public void callSnappBoxSupport() {
        BaseController controller = getController();
        if (controller != null && controller.getActivity() != null && !controller.getActivity().isFinishing() && a() != null) {
            g.getPermission(controller.getActivity(), new String[]{"android.permission.CALL_PHONE"}, new g.a() {
                public final void onPermissionGranted() {
                    a aVar = a.this;
                    a.a(aVar, aVar.a().getCallCenterNumberBiker());
                }

                public final void onPermissionDenied(ArrayList<String> arrayList) {
                    a aVar = a.this;
                    a.b(aVar, aVar.a().getCallCenterNumberBiker());
                }
            }, new String[0]);
        }
    }

    public void handleTicketItemClick(TicketItemResponse ticketItemResponse) {
        if (ticketItemResponse != null) {
            if (ticketItemResponse.getChildList() == null || ticketItemResponse.getChildList().isEmpty()) {
                this.f.put(Integer.valueOf(this.f1324a), this.g);
                if (getRouter() != null) {
                    if (getActivity() != null) {
                        ((RootActivity) getActivity()).setShouldHandleBack(true);
                    }
                    Bundle bundle = new Bundle();
                    bundle.putInt(SupportController.KEY_SUPPORT_TYPE, this.e);
                    bundle.putString(SupportController.KEY_SUPPORT_RELATION, this.relation);
                    bundle.putParcelable(SupportController.KEY_RIDE_HISTORT_INFO, this.rideHistoryInfo);
                    bundle.putParcelable(TicketController.KEY_TICKET_ITEM, ticketItemResponse);
                    ((d) getRouter()).routeToTicketController(bundle);
                }
            } else if (getPresenter() != null) {
                this.f.put(Integer.valueOf(this.f1324a), this.g);
                this.g = ticketItemResponse.getChildList();
                this.f1324a++;
                ((c) getPresenter()).onShowTickets(this.g);
            }
        }
    }

    public void pressBack() {
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (getController() != null) {
                if (getController().getArguments() != null) {
                    Bundle arguments = getController().getArguments();
                    if (arguments.containsKey(SupportController.KEY_SUPPORT_TYPE) && arguments.containsKey(SupportController.KEY_SUPPORT_RELATION)) {
                        this.e = arguments.getInt(SupportController.KEY_SUPPORT_TYPE);
                        this.relation = arguments.getString(SupportController.KEY_SUPPORT_RELATION);
                    } else if (arguments.containsKey(SupportController.KEY_RIDE_HISTORT_INFO)) {
                        this.rideHistoryInfo = (RideHistoryInfo) arguments.getParcelable(SupportController.KEY_RIDE_HISTORT_INFO);
                        this.e = 3;
                        RideHistoryInfo rideHistoryInfo2 = this.rideHistoryInfo;
                        if (rideHistoryInfo2 != null) {
                            this.relation = rideHistoryInfo2.getHumanReadableID();
                        }
                    }
                }
                if (getRouter() != null) {
                    ((d) getRouter()).setNavigationController(getController().getOvertheMapNavigationController());
                }
            }
            if (this.f.isEmpty()) {
                BaseController controller = getController();
                if (controller != null && (controller instanceof SupportController)) {
                    if (this.e == 2) {
                        addDisposable(this.c.getTransactionTicketTree().subscribe(new io.reactivex.e.g() {
                            public final void accept(Object obj) {
                                a.this.b((TicketItemResponse) obj);
                            }
                        }, $$Lambda$a$aCAvFbwLTAo0O8epgl52_KeRdds.INSTANCE));
                    } else {
                        addDisposable(this.c.getTicketTree().subscribe(new io.reactivex.e.g() {
                            public final void accept(Object obj) {
                                a.this.a((TicketItemResponse) obj);
                            }
                        }, $$Lambda$a$dDoFrTJgE4oN5AjBy0TGxA3Ku4.INSTANCE));
                    }
                }
            } else if (getPresenter() != null) {
                this.g = this.f.get(Integer.valueOf(this.f1324a));
                ((c) getPresenter()).onShowTickets(this.g);
            }
            if (getPresenter() != null) {
                ((c) getPresenter()).setStatusBarColor();
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        if (getActivity() != null) {
            ((RootActivity) getActivity()).setShouldHandleBack(false);
        }
        this.d.reportScreenName("Support Page");
    }

    public void onApplicationRootBackPressed() {
        if (this.f1324a > 1) {
            if (getPresenter() != null) {
                this.f1324a--;
                this.g = this.f.get(Integer.valueOf(this.f1324a));
                ((c) getPresenter()).onShowTickets(this.g);
                this.f.remove(Integer.valueOf(this.f1324a));
            }
        } else if (getActivity() != null) {
            Map<Integer, List<TicketItemResponse>> map = this.f;
            if (map != null) {
                map.clear();
            }
            ((RootActivity) getActivity()).setShouldHandleBack(true);
            getActivity().onBackPressed();
        }
    }

    static /* synthetic */ void a(a aVar, String str) {
        BaseController controller = aVar.getController();
        if (!(controller == null || controller.getActivity() == null || controller.getActivity().isFinishing())) {
            try {
                controller.getActivity().startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:".concat(String.valueOf(str)))));
            } catch (Exception e2) {
                controller.getActivity().startActivity(new Intent("android.intent.action.DIAL", Uri.parse("tel:".concat(String.valueOf(str)))));
                com.a.a.a.logException(e2);
            }
        }
    }

    static /* synthetic */ void b(a aVar, String str) {
        BaseController controller = aVar.getController();
        if (controller != null && controller.getActivity() != null && !controller.getActivity().isFinishing()) {
            controller.getActivity().startActivity(new Intent("android.intent.action.DIAL", Uri.parse("tel:".concat(String.valueOf(str)))));
        }
    }
}
