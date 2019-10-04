package cab.snapp.passenger.units.ticket;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;

public class TicketView_ViewBinding implements Unbinder {
    private TicketView target;
    private View view7f0a04aa;

    public TicketView_ViewBinding(TicketView ticketView) {
        this(ticketView, ticketView);
    }

    public TicketView_ViewBinding(final TicketView ticketView, View view) {
        this.target = ticketView;
        ticketView.ticketTitleTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ticket_title_tv, "field 'ticketTitleTv'", AppCompatTextView.class);
        ticketView.ticketDescTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ticket_desc_tv, "field 'ticketDescTv'", AppCompatTextView.class);
        ticketView.rideInfoLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_ticket_ride_layout, "field 'rideInfoLayout'", LinearLayout.class);
        ticketView.rideTitleAndCodeTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ticket_ride_title_and_code_tv, "field 'rideTitleAndCodeTv'", AppCompatTextView.class);
        ticketView.rideAddressTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ticket_ride_address_tv, "field 'rideAddressTv'", AppCompatTextView.class);
        ticketView.issueCharCounterTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ticket_issue_char_counter_tv, "field 'issueCharCounterTv'", AppCompatTextView.class);
        ticketView.issueDescEt = (AppCompatEditText) Utils.findRequiredViewAsType(view, R.id.view_ticket_issue_desc_et, "field 'issueDescEt'", AppCompatEditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_ticket_issue_send_btn, "field 'sendTicketBtn' and method 'onSendTicketClicked'");
        ticketView.sendTicketBtn = (SnappButton) Utils.castView(findRequiredView, R.id.view_ticket_issue_send_btn, "field 'sendTicketBtn'", SnappButton.class);
        this.view7f0a04aa = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                ticketView.onSendTicketClicked();
            }
        });
    }

    public void unbind() {
        TicketView ticketView = this.target;
        if (ticketView != null) {
            this.target = null;
            ticketView.ticketTitleTv = null;
            ticketView.ticketDescTv = null;
            ticketView.rideInfoLayout = null;
            ticketView.rideTitleAndCodeTv = null;
            ticketView.rideAddressTv = null;
            ticketView.issueCharCounterTv = null;
            ticketView.issueDescEt = null;
            ticketView.sendTicketBtn = null;
            this.view7f0a04aa.setOnClickListener(null);
            this.view7f0a04aa = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
