package e.a.a.a.a.d;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;

/* compiled from: TimeBasedFileRollOverRunnable */
public class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final Context f13750a;

    /* renamed from: b  reason: collision with root package name */
    public final f f13751b;

    public j(Context context, f fVar) {
        this.f13750a = context;
        this.f13751b = fVar;
    }

    public void run() {
        try {
            CommonUtils.c(this.f13750a, "Performing time based file roll over.");
            if (!this.f13751b.rollFileOver()) {
                this.f13751b.cancelTimeBasedFileRollOver();
            }
        } catch (Exception e2) {
            CommonUtils.a(this.f13750a, "Failed to roll over file", (Throwable) e2);
        }
    }
}
