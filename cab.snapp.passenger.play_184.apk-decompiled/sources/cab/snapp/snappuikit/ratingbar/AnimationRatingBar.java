package cab.snapp.snappuikit.ratingbar;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import java.util.UUID;

public class AnimationRatingBar extends BaseRatingBar {

    /* renamed from: a  reason: collision with root package name */
    protected Handler f1641a;

    /* renamed from: b  reason: collision with root package name */
    protected Runnable f1642b;
    protected String c = UUID.randomUUID().toString();

    protected AnimationRatingBar(Context context) {
        super(context);
        a();
    }

    protected AnimationRatingBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    protected AnimationRatingBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        this.f1641a = new Handler();
    }

    /* access modifiers changed from: protected */
    public final void a(Runnable runnable) {
        if (this.f1641a == null) {
            this.f1641a = new Handler();
        }
        this.f1641a.postAtTime(runnable, this.c, SystemClock.uptimeMillis() + 15);
    }
}
