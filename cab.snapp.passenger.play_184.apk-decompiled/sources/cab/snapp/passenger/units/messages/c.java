package cab.snapp.passenger.units.messages;

import android.app.Activity;
import android.os.Bundle;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.data.models.Messages;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.messages.adapter.MessagesAdapter;
import com.raizlabs.android.dbflow.a;
import java.util.List;

public final class c extends BasePresenter<MessagesView, a> {

    /* renamed from: a  reason: collision with root package name */
    private MessagesAdapter f976a;

    public final void itemMoreClicked(int i) {
        Messages itemAtPosition = this.f976a.getItemAtPosition(i);
        if (itemAtPosition != null && getInteractor() != null) {
            a aVar = (a) getInteractor();
            String messageUrl = itemAtPosition.getMessageUrl();
            if (aVar.getRouter() != null && aVar.getActivity() != null && !a.isNullOrEmpty(messageUrl)) {
                Bundle bundle = new Bundle();
                bundle.putString(cab.snapp.passenger.units.webhost.a.CONTENT_URL_KEY, messageUrl);
                bundle.putBoolean(cab.snapp.passenger.units.webhost.a.IS_FROM_INBOX, true);
                ((d) aVar.getRouter()).routeToWebHost(bundle);
            }
        }
    }

    public final void onBackButtonClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).finish();
        }
    }

    public final void onDataRequestSucceed(List<Messages> list) {
        MessagesView messagesView = (MessagesView) getView();
        if (messagesView != null) {
            if (list == null || list.size() <= 0) {
                messagesView.showEmptyView();
                return;
            }
            messagesView.hideEmptyView();
            this.f976a = new MessagesAdapter(list);
            messagesView.setupRecyclerView(this.f976a);
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((MessagesView) getView()).getContext() instanceof Activity)) {
            cab.snapp.snappuikit.c.a.setStatusBarColorRes((Activity) ((MessagesView) getView()).getContext(), R.color.colorPrimary);
        }
    }

    public final void onBeforeDataRequest() {
        MessagesView messagesView = (MessagesView) getView();
        if (messagesView != null) {
            messagesView.showLoadingDialog();
        }
    }

    public final void onAfterDataRequest() {
        MessagesView messagesView = (MessagesView) getView();
        if (messagesView != null) {
            messagesView.hideLoadingDialog();
        }
    }

    public final void onDataRequestError(String str) {
        MessagesView messagesView = (MessagesView) getView();
        if (messagesView != null) {
            messagesView.showEmptyView();
        }
    }
}
