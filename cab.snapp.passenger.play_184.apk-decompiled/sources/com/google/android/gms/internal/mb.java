package com.google.android.gms.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

final class mb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ AtomicReference f3370a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3371b;
    private /* synthetic */ String c;
    private /* synthetic */ String d;
    private /* synthetic */ zzcgi e;
    private /* synthetic */ lr f;

    mb(lr lrVar, AtomicReference atomicReference, String str, String str2, String str3, zzcgi zzcgi) {
        this.f = lrVar;
        this.f3370a = atomicReference;
        this.f3371b = str;
        this.c = str2;
        this.d = str3;
        this.e = zzcgi;
    }

    public final void run() {
        AtomicReference atomicReference;
        AtomicReference atomicReference2;
        List<zzcgl> zzj;
        synchronized (this.f3370a) {
            try {
                ir irVar = this.f.f3353b;
                if (irVar == null) {
                    this.f.zzawy().zzazd().zzd("Failed to get conditional properties", iz.a(this.f3371b), this.c, this.d);
                    this.f3370a.set(Collections.emptyList());
                    this.f3370a.notify();
                    return;
                }
                if (TextUtils.isEmpty(this.f3371b)) {
                    atomicReference2 = this.f3370a;
                    zzj = irVar.zza(this.c, this.d, this.e);
                } else {
                    atomicReference2 = this.f3370a;
                    zzj = irVar.zzj(this.f3371b, this.c, this.d);
                }
                atomicReference2.set(zzj);
                this.f.f();
                atomicReference = this.f3370a;
                atomicReference.notify();
            } catch (RemoteException e2) {
                try {
                    this.f.zzawy().zzazd().zzd("Failed to get conditional properties", iz.a(this.f3371b), this.c, e2);
                    this.f3370a.set(Collections.emptyList());
                    atomicReference = this.f3370a;
                } catch (Throwable th) {
                    this.f3370a.notify();
                    throw th;
                }
            }
        }
    }
}
