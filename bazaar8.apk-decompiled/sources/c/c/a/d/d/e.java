package c.c.a.d.d;

import android.app.Activity;
import android.content.Context;
import android.net.NetworkInfo;
import android.os.Build;
import c.c.a.d.b.d;
import c.c.a.d.e.b;
import c.c.a.e.d.i.r;
import com.crashlytics.android.answers.SessionEvent;
import h.f.b.f;
import h.f.b.j;
import i.a.b.t;

/* compiled from: NetworkManager.kt */
public final class e implements r {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4772a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final Context f4773b;

    /* compiled from: NetworkManager.kt */
    public static final class a {
        public a() {
        }

        public final boolean a(Context context) {
            j.b(context, "context");
            NetworkInfo activeNetworkInfo = d.b(context).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnected();
            }
            return false;
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public e(Context context) {
        j.b(context, "context");
        this.f4773b = context;
    }

    public t<Boolean> a() {
        if (Build.VERSION.SDK_INT >= 21) {
            return c.c.a.d.e.a.f4782c.b();
        }
        return b.f4784b.a();
    }

    public boolean b() {
        return f4772a.a(this.f4773b);
    }

    public void b(Activity activity) {
        j.b(activity, SessionEvent.ACTIVITY_KEY);
        b.f4769b.a(activity);
    }

    public void a(Activity activity) {
        j.b(activity, SessionEvent.ACTIVITY_KEY);
        b.f4769b.b(activity);
    }
}
