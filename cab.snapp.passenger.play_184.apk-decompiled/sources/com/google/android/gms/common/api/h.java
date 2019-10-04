package com.google.android.gms.common.api;

import com.google.android.gms.common.api.m;
import java.util.concurrent.TimeUnit;

public abstract class h<R extends m> {

    public interface a {
        void zzr(Status status);
    }

    public abstract R await();

    public abstract R await(long j, TimeUnit timeUnit);

    public abstract void cancel();

    public abstract boolean isCanceled();

    public abstract void setResultCallback(n<? super R> nVar);

    public abstract void setResultCallback(n<? super R> nVar, long j, TimeUnit timeUnit);

    public <S extends m> q<S> then(p<? super R, ? extends S> pVar) {
        throw new UnsupportedOperationException();
    }

    public void zza(a aVar) {
        throw new UnsupportedOperationException();
    }

    public Integer zzagv() {
        throw new UnsupportedOperationException();
    }
}
