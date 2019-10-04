package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import com.google.android.gms.common.api.s;
import java.lang.ref.WeakReference;
import java.util.NoSuchElementException;

final class cj implements IBinder.DeathRecipient, ck {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<BasePendingResult<?>> f2819a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<s> f2820b;
    private final WeakReference<IBinder> c;

    private cj(BasePendingResult<?> basePendingResult, IBinder iBinder) {
        this.f2820b = new WeakReference<>(null);
        this.f2819a = new WeakReference<>(basePendingResult);
        this.c = new WeakReference<>(iBinder);
    }

    /* synthetic */ cj(BasePendingResult basePendingResult, IBinder iBinder, byte b2) {
        this(basePendingResult, iBinder);
    }

    private final void a() {
        BasePendingResult basePendingResult = (BasePendingResult) this.f2819a.get();
        s sVar = (s) this.f2820b.get();
        if (!(sVar == null || basePendingResult == null)) {
            sVar.remove(basePendingResult.zzagv().intValue());
        }
        IBinder iBinder = (IBinder) this.c.get();
        if (iBinder != null) {
            try {
                iBinder.unlinkToDeath(this, 0);
            } catch (NoSuchElementException unused) {
            }
        }
    }

    public final void binderDied() {
        a();
    }

    public final void zzc(BasePendingResult<?> basePendingResult) {
        a();
    }
}
