package c.e.a.a.o;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: SystemHandlerWrapper */
public final class D implements o {

    /* renamed from: a  reason: collision with root package name */
    public final Handler f9557a;

    public D(Handler handler) {
        this.f9557a = handler;
    }

    public Looper a() {
        return this.f9557a.getLooper();
    }

    public void b(int i2) {
        this.f9557a.removeMessages(i2);
    }

    public Message a(int i2, Object obj) {
        return this.f9557a.obtainMessage(i2, obj);
    }

    public Message a(int i2, int i3, int i4) {
        return this.f9557a.obtainMessage(i2, i3, i4);
    }

    public Message a(int i2, int i3, int i4, Object obj) {
        return this.f9557a.obtainMessage(i2, i3, i4, obj);
    }

    public boolean a(int i2) {
        return this.f9557a.sendEmptyMessage(i2);
    }

    public boolean a(int i2, long j2) {
        return this.f9557a.sendEmptyMessageAtTime(i2, j2);
    }
}
