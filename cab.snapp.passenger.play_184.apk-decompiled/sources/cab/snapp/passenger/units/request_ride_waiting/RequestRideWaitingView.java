package cab.snapp.passenger.units.request_ride_waiting;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.g;
import com.koushikdutta.ion.Ion;
import com.koushikdutta.ion.builder.AnimateGifMode;
import com.koushikdutta.ion.builder.Builders;

public class RequestRideWaitingView extends RelativeLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f1059a;

    /* renamed from: b  reason: collision with root package name */
    private b f1060b;
    /* access modifiers changed from: private */
    public boolean c = false;
    @BindView(2131362788)
    FrameLayout cancelRequestBackground;
    @BindView(2131362789)
    FrameLayout cancelRequestBtn;
    @BindView(2131362790)
    AppCompatTextView cancelRequestTv;
    @BindView(2131362792)
    AppCompatTextView holdToCancelTv;
    @BindView(2131362793)
    AppCompatTextView messageContentTv;
    @BindView(2131362794)
    AppCompatTextView messageTitleTv;
    @BindView(2131362796)
    AppCompatTextView titleTv;
    @BindView(2131362795)
    AppCompatTextView titleTvReallotement;
    @BindView(2131362791)
    ImageView waitingGifIv;

    public RequestRideWaitingView(Context context) {
        super(context);
    }

    public RequestRideWaitingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RequestRideWaitingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void showWaitingGif(String str) {
        if (getContext() != null && str != null) {
            ((Builders.IV.F) ((Builders.IV.F) ((Builders.IV.F) Ion.with(this.waitingGifIv).animateGif(AnimateGifMode.ANIMATE)).placeholder((int) R.drawable.waiting_placeholder)).error((int) R.drawable.waiting_placeholder)).load(str);
        }
    }

    public void setTitle(String str, boolean z) {
        if (z) {
            this.titleTvReallotement.setText(str);
            this.titleTvReallotement.setVisibility(0);
            this.titleTv.setVisibility(8);
            return;
        }
        this.titleTv.setText(str);
        this.titleTv.setVisibility(0);
        this.titleTvReallotement.setVisibility(8);
    }

    public void setCancelRequestTouchListener(View.OnTouchListener onTouchListener) {
        this.cancelRequestBackground.setOnTouchListener(onTouchListener);
    }

    public void setWaitingGifTouchListener(View.OnTouchListener onTouchListener) {
        this.waitingGifIv.setOnTouchListener(onTouchListener);
    }

    public void setMessageTitle(String str) {
        this.messageTitleTv.setText(str);
    }

    public void hideMessageTitle() {
        this.messageTitleTv.setVisibility(8);
    }

    public void showMessageTitle() {
        this.messageTitleTv.setVisibility(0);
    }

    public void setMessageContent(String str) {
        this.messageContentTv.setText(str);
    }

    public void hideMessageContent() {
        this.messageContentTv.setVisibility(8);
    }

    public void showMessageContent() {
        this.messageContentTv.setVisibility(0);
    }

    public void showHoldToCancelWithAnimation(int i) {
        if (this.holdToCancelTv.getAnimation() != null) {
            this.holdToCancelTv.getAnimation().cancel();
        }
        this.holdToCancelTv.animate().alpha(1.0f).setDuration((long) i).start();
    }

    public void hideHoldToCancelWithAnimation(int i) {
        if (this.holdToCancelTv.getAnimation() != null) {
            this.holdToCancelTv.getAnimation().cancel();
        }
        this.holdToCancelTv.animate().alpha(0.0f).setInterpolator(new DecelerateInterpolator()).setDuration((long) i).start();
    }

    public void scaleDownCancelRequestWithAnimation(int i) {
        if (this.cancelRequestBackground.getAnimation() != null) {
            this.cancelRequestBackground.getAnimation().cancel();
        }
        this.cancelRequestBackground.animate().scaleX(1.0f).setInterpolator(new AccelerateInterpolator()).setDuration((long) i).setListener(new AnimatorListenerAdapter() {
            public final void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                boolean unused = RequestRideWaitingView.this.c = true;
            }
        }).start();
    }

    public void scaleUpCancelRequestWithAnimation(int i) {
        if (this.cancelRequestBackground.getAnimation() != null) {
            this.cancelRequestBackground.getAnimation().cancel();
        }
        this.cancelRequestBackground.animate().scaleX(2.0f).setInterpolator(new AccelerateInterpolator()).setDuration((long) i).setListener(new AnimatorListenerAdapter() {
            public final void onAnimationRepeat(Animator animator) {
            }

            public final void onAnimationStart(Animator animator) {
                boolean unused = RequestRideWaitingView.this.c = false;
            }

            public final void onAnimationEnd(Animator animator) {
                if (RequestRideWaitingView.this.f1059a != null && !RequestRideWaitingView.this.c) {
                    RequestRideWaitingView.this.f1059a.onCancelRequestAnimationEnded();
                }
            }

            public final void onAnimationCancel(Animator animator) {
                boolean unused = RequestRideWaitingView.this.c = true;
            }
        }).start();
    }

    public void setHoldToCancelTextColor(int i) {
        this.holdToCancelTv.setTextColor(i);
    }

    public void setTitleTextColor(int i) {
        this.titleTv.setTextColor(i);
    }

    public void setCancelRequestBackground(int i) {
        this.cancelRequestBackground.setBackgroundResource(i);
    }

    public void setCancelRequestTextColor(int i) {
        this.cancelRequestTv.setTextColor(i);
    }

    public void setMessageContentTextColor(int i) {
        this.messageContentTv.setTextColor(i);
    }

    public void showToast(String str, int i) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), str).textColor(getContext().getResources().getColor(i)).show();
        }
    }

    public void showToast(int i, int i2) {
        if (getContext() != null) {
            showToast(getContext().getString(i), i2);
        }
    }

    public void showUnderMaintenanceDialog() {
        dismissUnderMaintenanceDialog();
        this.f1060b = new b.a(getContext()).setTheme(0).setDialogTitle((int) R.string.message).setDialogViewType(new g.a().setMessage(getContext().getString(R.string.error_under_maintenance)).build()).setPositiveButton((int) R.string.close, (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                RequestRideWaitingView.this.a(view);
            }
        }).setCancelable(false).build();
        this.f1060b.show();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f1059a.onCloseUnderMaintenanceDialog();
    }

    public void dismissUnderMaintenanceDialog() {
        b bVar = this.f1060b;
        if (bVar != null) {
            bVar.dismiss();
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(c cVar) {
        this.f1059a = cVar;
    }
}
