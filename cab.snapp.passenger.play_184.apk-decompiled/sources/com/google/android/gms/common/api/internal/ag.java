package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.m;

public interface ag {
    void begin();

    void connect();

    boolean disconnect();

    void onConnected(Bundle bundle);

    void onConnectionSuspended(int i);

    void zza(ConnectionResult connectionResult, a<?> aVar, boolean z);

    <A extends a.c, R extends m, T extends cu<R, A>> T zzd(T t);

    <A extends a.c, T extends cu<? extends m, A>> T zze(T t);
}
