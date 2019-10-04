package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import androidx.loader.content.AsyncTaskLoader;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.bs;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

public final class b extends AsyncTaskLoader<Void> implements bs {

    /* renamed from: a  reason: collision with root package name */
    private Semaphore f2665a = new Semaphore(0);

    /* renamed from: b  reason: collision with root package name */
    private Set<f> f2666b;

    public b(Context context, Set<f> set) {
        super(context);
        this.f2666b = set;
    }

    /* access modifiers changed from: private */
    /* renamed from: a */
    public final Void loadInBackground() {
        int i = 0;
        for (f zza : this.f2666b) {
            if (zza.zza((bs) this)) {
                i++;
            }
        }
        try {
            this.f2665a.tryAcquire(i, 5, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
        return null;
    }

    public final void onStartLoading() {
        this.f2665a.drainPermits();
        forceLoad();
    }

    public final void zzabi() {
        this.f2665a.release();
    }
}
