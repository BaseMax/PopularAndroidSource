package cab.snapp.passenger.units.ticket;

import android.app.Activity;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;

public final class c extends BasePresenter<TicketView, a> {

    /* renamed from: a  reason: collision with root package name */
    TextWatcher f1337a;

    public final void onInitialize() {
        this.f1337a = new TextWatcher() {
            public final void afterTextChanged(Editable editable) {
            }

            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (c.this.getInteractor() != null) {
                    ((a) c.this.getInteractor()).handleIssueDescLength(charSequence);
                }
            }
        };
        TicketView ticketView = (TicketView) getView();
        if (ticketView != null) {
            ticketView.setIssueDescEtTextWatcher(this.f1337a);
        }
        setStatusBarColor();
    }

    public final void onShowTicketDetails(String str, String str2, String str3, String str4, boolean z) {
        TicketView ticketView = (TicketView) getView();
        if (ticketView != null) {
            ticketView.setTicketTitle(str);
            ticketView.setTicketDescription(str2);
            if (z) {
                ticketView.showRideInfoLayout();
                ticketView.setRideTitleAndCode(str3);
                ticketView.setRideAddress(str4);
                return;
            }
            ticketView.hideRideInfoLayout();
        }
    }

    public final void onShowIssueDescCounts(String str) {
        TicketView ticketView = (TicketView) getView();
        if (ticketView != null) {
            ticketView.setIssueDescCount(g.changeNumbersBasedOnCurrentLocale(str));
        }
    }

    public final void onSendFail(String str) {
        if (str != null && !str.isEmpty()) {
            TicketView ticketView = (TicketView) getView();
            if (ticketView != null) {
                ticketView.showToast(str, R.color.cherry);
            }
        }
    }

    public final void onSendSuccess(String str) {
        if (str != null && !str.isEmpty()) {
            TicketView ticketView = (TicketView) getView();
            if (ticketView != null) {
                ticketView.showToast(str, R.color.colorPrimary);
                if (ticketView.getContext() != null && (ticketView.getContext() instanceof Activity)) {
                    cab.snapp.c.c.hideKeyboard((Activity) ticketView.getContext(), ticketView.getIssueDescEt());
                }
            }
        }
    }

    public final void onSendTicketClicked() {
        TicketView ticketView = (TicketView) getView();
        if (ticketView != null && getInteractor() != null) {
            ((a) getInteractor()).sendTicket(ticketView.getIssueDescription());
        }
    }

    public final void onBackClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).pressBack();
        }
        if (getView() != null) {
            cab.snapp.c.c.tryHideKeyboard(((TicketView) getView()).getContext(), (View) getView());
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((TicketView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((TicketView) getView()).getContext(), R.color.colorPrimary);
        }
    }
}
