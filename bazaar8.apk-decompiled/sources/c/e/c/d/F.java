package c.e.c.d;

import android.content.Intent;
import android.util.Log;

public final /* synthetic */ class F implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final G f11597a;

    /* renamed from: b  reason: collision with root package name */
    public final Intent f11598b;

    public F(G g2, Intent intent) {
        this.f11597a = g2;
        this.f11598b = intent;
    }

    public final void run() {
        G g2 = this.f11597a;
        String action = this.f11598b.getAction();
        StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 61);
        sb.append("Service took too long to process intent: ");
        sb.append(action);
        sb.append(" App may get closed.");
        Log.w("EnhancedIntentService", sb.toString());
        g2.a();
    }
}
