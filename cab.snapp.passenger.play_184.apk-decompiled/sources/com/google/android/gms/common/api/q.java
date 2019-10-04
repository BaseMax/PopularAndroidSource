package com.google.android.gms.common.api;

import com.google.android.gms.common.api.m;

public abstract class q<R extends m> {
    public abstract void andFinally(o<? super R> oVar);

    public abstract <S extends m> q<S> then(p<? super R, ? extends S> pVar);
}
