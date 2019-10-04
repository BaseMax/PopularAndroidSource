package c.e.c.d;

import android.util.Log;

public final class H implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ G f11603a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ I f11604b;

    public H(I i2, G g2) {
        this.f11604b = i2;
        this.f11603a = g2;
    }

    public final void run() {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "bg processing of the intent starting now");
        }
        this.f11604b.f11605a.d(this.f11603a.f11599a);
        this.f11603a.a();
    }
}
