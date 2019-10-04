package c.e.a.b.d;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import c.e.a.b.d.d.r;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class a implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    public boolean f9791a = false;

    /* renamed from: b  reason: collision with root package name */
    public final BlockingQueue<IBinder> f9792b = new LinkedBlockingQueue();

    public IBinder a(long j2, TimeUnit timeUnit) {
        r.c("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (!this.f9791a) {
            this.f9791a = true;
            IBinder poll = this.f9792b.poll(j2, timeUnit);
            if (poll != null) {
                return poll;
            }
            throw new TimeoutException("Timed out waiting for the service connection");
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f9792b.add(iBinder);
    }

    public void onServiceDisconnected(ComponentName componentName) {
    }
}
