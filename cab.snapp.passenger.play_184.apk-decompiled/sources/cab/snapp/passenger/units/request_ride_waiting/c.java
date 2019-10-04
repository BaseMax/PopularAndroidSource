package cab.snapp.passenger.units.request_ride_waiting;

import android.app.Activity;
import android.content.Context;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;
import com.google.android.gms.common.ConnectionResult;
import javax.inject.Inject;

public final class c extends BasePresenter<RequestRideWaitingView, a> {

    /* renamed from: a  reason: collision with root package name */
    View.OnTouchListener f1068a;

    /* renamed from: b  reason: collision with root package name */
    View.OnTouchListener f1069b;
    long c = 0;
    @Inject
    cab.snapp.passenger.f.b.b.c d;
    /* access modifiers changed from: private */
    public MediaPlayer e;
    private boolean f;

    public final void onInitialize(boolean z, boolean z2, String str) {
        if (getView() != null && ((RequestRideWaitingView) getView()).getContext() != null) {
            BaseApplication.get(((RequestRideWaitingView) getView()).getContext()).getAppComponent().inject(this);
            this.f = z;
            this.f1068a = new View.OnTouchListener() {
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent == null) {
                        return false;
                    }
                    int action = motionEvent.getAction();
                    if (action == 0) {
                        c.a(c.this);
                    } else if (action == 1) {
                        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                            public final void run() {
                                if (c.this.e != null) {
                                    c.this.e.pause();
                                }
                            }
                        }, 70);
                    } else if (action == 3) {
                        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                            public final void run() {
                                if (c.this.e != null) {
                                    c.this.e.pause();
                                }
                            }
                        }, 70);
                    }
                    return true;
                }
            };
            this.f1069b = new View.OnTouchListener() {
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0) {
                        if (SystemClock.elapsedRealtime() - c.this.c < 600) {
                            return false;
                        }
                        c.this.c = SystemClock.elapsedRealtime();
                        if (c.this.getView() != null) {
                            ((RequestRideWaitingView) c.this.getView()).scaleUpCancelRequestWithAnimation(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
                            ((RequestRideWaitingView) c.this.getView()).showHoldToCancelWithAnimation(300);
                            ((RequestRideWaitingView) c.this.getView()).setCancelRequestBackground(R.drawable.shape_button_rounded_green_blue_pressed);
                        }
                    } else if ((motionEvent.getAction() == 1 || motionEvent.getAction() == 3 || motionEvent.getAction() == 10 || motionEvent.getAction() == 4) && c.this.getView() != null) {
                        ((RequestRideWaitingView) c.this.getView()).scaleDownCancelRequestWithAnimation(500);
                        ((RequestRideWaitingView) c.this.getView()).hideHoldToCancelWithAnimation(500);
                        ((RequestRideWaitingView) c.this.getView()).setCancelRequestBackground(R.drawable.shape_button_rounded_green_blue);
                    }
                    return true;
                }
            };
            if (getView() != null) {
                ((RequestRideWaitingView) getView()).setCancelRequestTouchListener(this.f1069b);
                ((RequestRideWaitingView) getView()).setWaitingGifTouchListener(this.f1068a);
                if (Build.VERSION.SDK_INT >= 24 && (((RequestRideWaitingView) getView()).getContext() instanceof Activity)) {
                    if (((Activity) ((RequestRideWaitingView) getView()).getContext()).isInMultiWindowMode()) {
                        ((RequestRideWaitingView) getView()).hideMessageTitle();
                        ((RequestRideWaitingView) getView()).hideMessageContent();
                    } else {
                        ((RequestRideWaitingView) getView()).showMessageTitle();
                        ((RequestRideWaitingView) getView()).showMessageContent();
                    }
                }
            }
            setStatusBarColor(false);
            onReallotment(z2, str);
        }
    }

    public final void onReallotment(boolean z, String str) {
        if (z) {
            onWaitingTitleAfterReallotmentReady();
        } else {
            onWaitingTitleReady(str);
        }
    }

    public final void setStatusBarColor(boolean z) {
        if (getView() != null && (((RequestRideWaitingView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((RequestRideWaitingView) getView()).getContext(), z ? R.color.colorPrimary : R.color.white);
        }
    }

    @Deprecated
    public final void onTitleReady(String str) {
        if (getView() != null) {
            ((RequestRideWaitingView) getView()).setTitle(str, false);
        }
    }

    public final void onWaitingTitleReady(String str) {
        if (getView() != null) {
            if (!str.isEmpty()) {
                ((RequestRideWaitingView) getView()).setTitle(String.format(((RequestRideWaitingView) getView()).getResources().getString(R.string.searching_snapp_for_you), new Object[]{str}), false);
                return;
            }
            ((RequestRideWaitingView) getView()).setTitle(String.format(((RequestRideWaitingView) getView()).getResources().getString(R.string.searching_snapp_for_you), new Object[]{((RequestRideWaitingView) getView()).getResources().getString(R.string.snapp)}), false);
        }
    }

    public final void onWaitingTitleAfterReallotmentReady() {
        if (getView() != null) {
            ((RequestRideWaitingView) getView()).setTitle(((RequestRideWaitingView) getView()).getResources().getString(R.string.searching_snapp_for_you_reallotment), true);
        }
    }

    public final void onWaitingMessageReady(String str, String str2) {
        if (getView() != null) {
            ((RequestRideWaitingView) getView()).setMessageTitle(str);
            ((RequestRideWaitingView) getView()).setMessageContent(str2);
        }
    }

    public final void onNightMode() {
        onDayMode();
    }

    public final void onDayMode() {
        RequestRideWaitingView requestRideWaitingView = (RequestRideWaitingView) getView();
        if (requestRideWaitingView != null && requestRideWaitingView.getContext() != null) {
            Context context = requestRideWaitingView.getContext();
            requestRideWaitingView.setBackgroundColor(context.getResources().getColor(R.color.pure_white_opacity_97));
            requestRideWaitingView.setTitleTextColor(context.getResources().getColor(R.color.colorPrimary));
            requestRideWaitingView.setHoldToCancelTextColor(context.getResources().getColor(R.color.colorPrimary));
            requestRideWaitingView.setMessageContentTextColor(context.getResources().getColor(R.color.brown_grey));
            requestRideWaitingView.setCancelRequestBackground(R.drawable.shape_button_rounded_green_blue);
            requestRideWaitingView.setCancelRequestTextColor(context.getResources().getColor(R.color.pure_white));
            setStatusBarColor(false);
        }
    }

    public final void onWaitingGifReady(String str) {
        if (getView() != null) {
            ((RequestRideWaitingView) getView()).showWaitingGif(str);
        }
    }

    public final void onRideRequestError(String str) {
        if (getView() != null) {
            ((RequestRideWaitingView) getView()).showToast(str, (int) R.color.cherry);
        }
    }

    public final void onCancelRideError(int i) {
        if (getView() != null) {
            ((RequestRideWaitingView) getView()).showToast(i, (int) R.color.cherry);
        }
    }

    public final void onCancelRideSuccessful(int i) {
        if (getView() != null) {
            ((RequestRideWaitingView) getView()).showToast(i, (int) R.color.colorPrimary);
        }
    }

    public final void onUnderMaintenance() {
        if (getView() != null) {
            ((RequestRideWaitingView) getView()).showUnderMaintenanceDialog();
        }
    }

    public final void onReleaseResources() {
        MediaPlayer mediaPlayer = this.e;
        if (mediaPlayer != null) {
            if (mediaPlayer.isPlaying()) {
                this.e.stop();
            }
            this.e = null;
        }
    }

    public final void onCancelRequestAnimationEnded() {
        if (getInteractor() != null) {
            ((a) getInteractor()).cancelRideRequest();
        }
    }

    public final void onCloseUnderMaintenanceDialog() {
        if (getView() != null) {
            ((RequestRideWaitingView) getView()).dismissUnderMaintenanceDialog();
        }
        if (getInteractor() != null) {
            ((a) getInteractor()).a();
        }
    }

    static /* synthetic */ void a(c cVar) {
        cVar.d.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_RIDE_REQUEST_BEEP, "before ride - waiting beep");
        cVar.d.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Beep on ride request");
        if (cVar.getView() != null && ((RequestRideWaitingView) cVar.getView()).getContext() != null) {
            Context context = ((RequestRideWaitingView) cVar.getView()).getContext();
            if (cVar.e == null) {
                if (cVar.f) {
                    cVar.e = MediaPlayer.create(context, R.raw.sound_motorcycle_horn);
                } else {
                    cVar.e = MediaPlayer.create(context, R.raw.sound_car_horn);
                }
            }
            if (!cVar.e.isPlaying()) {
                cVar.e.setLooping(true);
                cVar.e.start();
            }
        }
    }
}
