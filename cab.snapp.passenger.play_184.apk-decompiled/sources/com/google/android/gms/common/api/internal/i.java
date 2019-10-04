package com.google.android.gms.common.api.internal;

import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.h;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;

public class i extends f {

    /* renamed from: a  reason: collision with root package name */
    private final String f2859a;

    public i(String str) {
        this.f2859a = str;
    }

    public ConnectionResult blockingConnect() {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public h<Status> clearDefaultAccountAndReconnect() {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public void connect() {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public void disconnect() {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public ConnectionResult getConnectionResult(a<?> aVar) {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public boolean hasConnectedApi(a<?> aVar) {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public boolean isConnected() {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public boolean isConnecting() {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public boolean isConnectionCallbacksRegistered(f.b bVar) {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public boolean isConnectionFailedListenerRegistered(f.c cVar) {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public void reconnect() {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public void registerConnectionCallbacks(f.b bVar) {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public void registerConnectionFailedListener(f.c cVar) {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public void stopAutoManage(FragmentActivity fragmentActivity) {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public void unregisterConnectionCallbacks(f.b bVar) {
        throw new UnsupportedOperationException(this.f2859a);
    }

    public void unregisterConnectionFailedListener(f.c cVar) {
        throw new UnsupportedOperationException(this.f2859a);
    }
}
