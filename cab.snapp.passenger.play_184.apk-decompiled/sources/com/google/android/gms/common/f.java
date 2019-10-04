package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.internal.ap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class f implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private boolean f2904a = false;

    /* renamed from: b  reason: collision with root package name */
    private final BlockingQueue<IBinder> f2905b = new LinkedBlockingQueue();

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f2905b.add(iBinder);
    }

    public final void onServiceDisconnected(ComponentName componentName) {
    }

    public final IBinder zza(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        ap.zzgn("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (!this.f2904a) {
            this.f2904a = true;
            IBinder poll = this.f2905b.poll(10000, timeUnit);
            if (poll != null) {
                return poll;
            }
            throw new TimeoutException("Timed out waiting for the service connection");
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    public final IBinder zzafw() throws InterruptedException {
        ap.zzgn("BlockingServiceConnection.getService() called on main thread");
        if (!this.f2904a) {
            this.f2904a = true;
            return this.f2905b.take();
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }
}
