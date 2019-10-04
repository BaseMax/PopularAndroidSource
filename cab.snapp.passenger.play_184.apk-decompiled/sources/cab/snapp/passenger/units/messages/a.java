package cab.snapp.passenger.units.messages;

import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data.models.Messages;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.responses.MessagesResponse;
import cab.snapp.passenger.f.b.b.c;
import io.reactivex.e.g;
import java.util.List;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    d f969a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    c f970b;

    /* access modifiers changed from: private */
    public /* synthetic */ void a(MessagesResponse messagesResponse) throws Exception {
        List<Messages> messages = messagesResponse.getMessages();
        c cVar = (c) getPresenter();
        if (cVar != null) {
            cVar.onAfterDataRequest();
            cVar.onDataRequestSucceed(messages);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        String message = th.getMessage();
        c cVar = (c) getPresenter();
        if (cVar != null) {
            cVar.onAfterDataRequest();
            cVar.onDataRequestError(message);
        }
    }

    public void finish() {
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            c cVar = (c) getPresenter();
            if (cVar != null) {
                cVar.onBeforeDataRequest();
                addDisposable(this.f969a.getMessages().subscribe(new g() {
                    public final void accept(Object obj) {
                        a.this.a((MessagesResponse) obj);
                    }
                }, new g() {
                    public final void accept(Object obj) {
                        a.this.a((Throwable) obj);
                    }
                }));
            }
            if (!(getRouter() == null || getController() == null)) {
                ((d) getRouter()).setNavigationController(getController().getOvertheMapNavigationController());
            }
            if (getPresenter() != null) {
                ((c) getPresenter()).setStatusBarColor();
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.f970b.reportScreenName("Inbox Page");
    }
}
