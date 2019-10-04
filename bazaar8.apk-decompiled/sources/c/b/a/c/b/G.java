package c.b.a.c.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import c.b.a.i.k;

/* compiled from: ResourceRecycler */
public class G {

    /* renamed from: a  reason: collision with root package name */
    public boolean f3835a;

    /* renamed from: b  reason: collision with root package name */
    public final Handler f3836b = new Handler(Looper.getMainLooper(), new a());

    /* compiled from: ResourceRecycler */
    private static final class a implements Handler.Callback {
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((D) message.obj).a();
            return true;
        }
    }

    public void a(D<?> d2) {
        k.b();
        if (this.f3835a) {
            this.f3836b.obtainMessage(1, d2).sendToTarget();
            return;
        }
        this.f3835a = true;
        d2.a();
        this.f3835a = false;
    }
}
