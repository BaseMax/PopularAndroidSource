package ir.cafebazaar.inline.ux.audio;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import f.a.a.d;
import f.a.a.e;
import f.a.a.f;

public class PlayPauseView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public ImageView f15058a;

    /* renamed from: b  reason: collision with root package name */
    public ProgressBar f15059b;

    /* renamed from: c  reason: collision with root package name */
    public State f15060c;

    public enum State {
        BUFFERING,
        PLAYING,
        STOPPED,
        ERROR,
        PAUSED
    }

    public interface a {
        void a();
    }

    public PlayPauseView(Context context) {
        super(context);
        a(context);
    }

    public final void a(State state) {
        int i2 = o.f14419a[state.ordinal()];
        if (i2 == 1) {
            this.f15058a.setImageResource(d.ic_pause_circle_filled_black);
            this.f15059b.setVisibility(8);
            this.f15058a.setEnabled(true);
        } else if (i2 == 2) {
            this.f15059b.setVisibility(0);
            this.f15058a.setEnabled(false);
        } else if (i2 == 3 || i2 == 4 || i2 == 5) {
            this.f15058a.setImageResource(d.ic_play_circle_filled_black);
            this.f15059b.setVisibility(8);
            this.f15058a.setEnabled(true);
        }
    }

    public State getState() {
        return this.f15060c;
    }

    public void setOnClickListener(a aVar) {
        this.f15058a.setOnClickListener(new n(this, aVar));
    }

    public void setState(State state) {
        this.f15060c = state;
        a(state);
    }

    public PlayPauseView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public final void a(Context context) {
        FrameLayout.inflate(context, f.play_pause_view, this);
        this.f15058a = (ImageView) findViewById(e.playPauseIcon);
        this.f15059b = (ProgressBar) findViewById(e.progressBar);
    }
}
