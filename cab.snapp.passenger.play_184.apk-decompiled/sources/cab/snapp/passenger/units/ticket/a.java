package cab.snapp.passenger.units.ticket;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data.models.RideHistoryInfo;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.requests.SendTicketRequest;
import cab.snapp.passenger.data_access_layer.network.responses.TicketItemResponse;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.support.SupportController;
import cab.snapp.snappnetwork.model.f;
import io.reactivex.e.g;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    d f1333a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    c f1334b;
    public String relation;
    public RideHistoryInfo rideHistoryInfo;
    public TicketItemResponse ticketItem;
    public int ticketType;

    public void handleIssueDescLength(CharSequence charSequence) {
        BaseController controller = getController();
        if (controller != null && controller.getActivity() != null && !controller.getActivity().isFinishing() && charSequence != null) {
            String string = controller.getActivity().getResources().getString(R.string.character_counter_0_500);
            if (cab.snapp.c.d.convertPersianToEnglishNumbers(charSequence.toString()) != null) {
                string = r4.length() + controller.getActivity().getResources().getString(R.string.character_counter_500);
            }
            if (getPresenter() != null) {
                ((c) getPresenter()).onShowIssueDescCounts(string);
            }
        }
    }

    public void sendTicket(String str) {
        SendTicketRequest sendTicketRequest = new SendTicketRequest();
        sendTicketRequest.setRelation(this.relation);
        sendTicketRequest.setTicketType(this.ticketType);
        TicketItemResponse ticketItemResponse = this.ticketItem;
        if (ticketItemResponse != null) {
            sendTicketRequest.setType(ticketItemResponse.getId());
        }
        sendTicketRequest.setText(str);
        addDisposable(this.f1333a.sendTicket(sendTicketRequest).subscribe(new g() {
            public final void accept(Object obj) {
                a.this.a((f) obj);
            }
        }, new g() {
            public final void accept(Object obj) {
                a.this.a((Throwable) obj);
            }
        }));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(f fVar) throws Exception {
        if (getActivity() != null && !getActivity().isFinishing()) {
            if (getPresenter() != null) {
                ((c) getPresenter()).onSendSuccess(getActivity().getResources().getString(R.string.ticket_sent));
            }
            pressBack();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        if (getActivity() != null && !getActivity().isFinishing() && getPresenter() != null) {
            ((c) getPresenter()).onSendFail(getActivity().getResources().getString(R.string.error));
        }
    }

    public void pressBack() {
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }

    public void onUnitCreated() {
        String str;
        String str2;
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (getPresenter() != null) {
                ((c) getPresenter()).onInitialize();
            }
            BaseController controller = getController();
            if (controller != null) {
                if (controller.getArguments() != null) {
                    Bundle arguments = controller.getArguments();
                    if (arguments.containsKey(SupportController.KEY_SUPPORT_TYPE)) {
                        this.ticketType = arguments.getInt(SupportController.KEY_SUPPORT_TYPE);
                    }
                    if (arguments.containsKey(SupportController.KEY_SUPPORT_RELATION)) {
                        this.relation = arguments.getString(SupportController.KEY_SUPPORT_RELATION);
                    }
                    if (arguments.containsKey(SupportController.KEY_RIDE_HISTORT_INFO)) {
                        this.rideHistoryInfo = (RideHistoryInfo) arguments.getParcelable(SupportController.KEY_RIDE_HISTORT_INFO);
                    }
                    if (arguments.containsKey(TicketController.KEY_TICKET_ITEM)) {
                        this.ticketItem = (TicketItemResponse) arguments.getParcelable(TicketController.KEY_TICKET_ITEM);
                    }
                }
                TicketItemResponse ticketItemResponse = this.ticketItem;
                String str3 = "";
                String text = ticketItemResponse != null ? ticketItemResponse.getText() : str3;
                TicketItemResponse ticketItemResponse2 = this.ticketItem;
                String description = ticketItemResponse2 != null ? ticketItemResponse2.getDescription() : str3;
                boolean z = this.rideHistoryInfo != null;
                if (this.rideHistoryInfo != null) {
                    str = this.rideHistoryInfo.getTitle() + " - " + this.rideHistoryInfo.getHumanReadableID();
                } else {
                    str = str3;
                }
                if (this.rideHistoryInfo == null || controller.getActivity() == null) {
                    str2 = str3;
                } else {
                    str2 = controller.getActivity().getString(R.string.from) + " " + this.rideHistoryInfo.getOriginFormattedAddress() + "\n";
                }
                if (!(this.rideHistoryInfo == null || controller.getActivity() == null)) {
                    str3 = controller.getActivity().getString(R.string.to) + " " + this.rideHistoryInfo.getDestinationFormattedAddress();
                }
                String str4 = str2 + str3;
                if (getPresenter() != null) {
                    ((c) getPresenter()).onShowTicketDetails(text, description, str, str4, z);
                }
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.f1334b.reportScreenName("Support Page");
    }
}
