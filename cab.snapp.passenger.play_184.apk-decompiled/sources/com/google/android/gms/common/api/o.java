package com.google.android.gms.common.api;

import com.google.android.gms.common.api.m;

public abstract class o<R extends m> implements n<R> {
    public abstract void onFailure(Status status);

    public final void onResult(R r) {
        Status status = r.getStatus();
        if (status.isSuccess()) {
            onSuccess(r);
            return;
        }
        onFailure(status);
        if (r instanceof j) {
            try {
                ((j) r).release();
            } catch (RuntimeException unused) {
                String valueOf = String.valueOf(r);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
            }
        }
    }

    public abstract void onSuccess(R r);
}
