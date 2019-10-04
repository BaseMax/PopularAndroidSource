package cab.snapp.passenger.units.request_ride_waiting;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;

public class RequestRideWaitingView_ViewBinding implements Unbinder {
    private RequestRideWaitingView target;

    public RequestRideWaitingView_ViewBinding(RequestRideWaitingView requestRideWaitingView) {
        this(requestRideWaitingView, requestRideWaitingView);
    }

    public RequestRideWaitingView_ViewBinding(RequestRideWaitingView requestRideWaitingView, View view) {
        this.target = requestRideWaitingView;
        requestRideWaitingView.waitingGifIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_request_ride_waiting_gif_iv, "field 'waitingGifIv'", ImageView.class);
        requestRideWaitingView.titleTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_request_ride_waiting_title_tv, "field 'titleTv'", AppCompatTextView.class);
        requestRideWaitingView.titleTvReallotement = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_request_ride_waiting_title_reallotement_tv, "field 'titleTvReallotement'", AppCompatTextView.class);
        requestRideWaitingView.holdToCancelTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_request_ride_waiting_hold_to_cancel_tv, "field 'holdToCancelTv'", AppCompatTextView.class);
        requestRideWaitingView.cancelRequestBtn = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.view_request_ride_waiting_cancel_request_btn, "field 'cancelRequestBtn'", FrameLayout.class);
        requestRideWaitingView.cancelRequestBackground = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.view_request_ride_waiting_cancel_request_background, "field 'cancelRequestBackground'", FrameLayout.class);
        requestRideWaitingView.cancelRequestTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_request_ride_waiting_cancel_request_tv, "field 'cancelRequestTv'", AppCompatTextView.class);
        requestRideWaitingView.messageTitleTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_request_ride_waiting_message_title_tv, "field 'messageTitleTv'", AppCompatTextView.class);
        requestRideWaitingView.messageContentTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_request_ride_waiting_message_content_tv, "field 'messageContentTv'", AppCompatTextView.class);
    }

    public void unbind() {
        RequestRideWaitingView requestRideWaitingView = this.target;
        if (requestRideWaitingView != null) {
            this.target = null;
            requestRideWaitingView.waitingGifIv = null;
            requestRideWaitingView.titleTv = null;
            requestRideWaitingView.titleTvReallotement = null;
            requestRideWaitingView.holdToCancelTv = null;
            requestRideWaitingView.cancelRequestBtn = null;
            requestRideWaitingView.cancelRequestBackground = null;
            requestRideWaitingView.cancelRequestTv = null;
            requestRideWaitingView.messageTitleTv = null;
            requestRideWaitingView.messageContentTv = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
