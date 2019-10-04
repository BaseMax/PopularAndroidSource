package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import b.f.j;
import b.z.C0357f;
import b.z.g;

public class MultiInstanceInvalidationService extends Service {

    /* renamed from: a  reason: collision with root package name */
    public int f933a = 0;

    /* renamed from: b  reason: collision with root package name */
    public final j<String> f934b = new j<>();

    /* renamed from: c  reason: collision with root package name */
    public final RemoteCallbackList<C0357f> f935c = new s(this);

    /* renamed from: d  reason: collision with root package name */
    public final g.a f936d = new t(this);

    public IBinder onBind(Intent intent) {
        return this.f936d;
    }
}
