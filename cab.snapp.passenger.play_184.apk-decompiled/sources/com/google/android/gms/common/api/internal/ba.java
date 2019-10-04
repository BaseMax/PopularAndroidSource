package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.m;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;

public interface ba {
    ConnectionResult blockingConnect();

    ConnectionResult blockingConnect(long j, TimeUnit timeUnit);

    void connect();

    void disconnect();

    void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    ConnectionResult getConnectionResult(a<?> aVar);

    boolean isConnected();

    boolean isConnecting();

    boolean zza(bs bsVar);

    void zzags();

    void zzahk();

    <A extends a.c, R extends m, T extends cu<R, A>> T zzd(T t);

    <A extends a.c, T extends cu<? extends m, A>> T zze(T t);
}
