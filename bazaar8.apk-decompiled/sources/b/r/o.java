package b.r;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.lifecycle.Lifecycle;

/* compiled from: LifecycleService */
public class o extends Service implements k {

    /* renamed from: a  reason: collision with root package name */
    public final B f3176a = new B(this);

    public Lifecycle b() {
        return this.f3176a.a();
    }

    public IBinder onBind(Intent intent) {
        this.f3176a.b();
        return null;
    }

    public void onCreate() {
        this.f3176a.c();
        super.onCreate();
    }

    public void onDestroy() {
        this.f3176a.d();
        super.onDestroy();
    }

    public void onStart(Intent intent, int i2) {
        this.f3176a.e();
        super.onStart(intent, i2);
    }

    public int onStartCommand(Intent intent, int i2, int i3) {
        return super.onStartCommand(intent, i2, i3);
    }
}
