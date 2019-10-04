package com.google.android.gms.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

final class mc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ AtomicReference f3372a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3373b;
    private /* synthetic */ String c;
    private /* synthetic */ String d;
    private /* synthetic */ boolean e;
    private /* synthetic */ zzcgi f;
    private /* synthetic */ lr g;

    mc(lr lrVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z, zzcgi zzcgi) {
        this.g = lrVar;
        this.f3372a = atomicReference;
        this.f3373b = str;
        this.c = str2;
        this.d = str3;
        this.e = z;
        this.f = zzcgi;
    }

    public final void run() {
        AtomicReference atomicReference;
        AtomicReference atomicReference2;
        List<zzcln> zza;
        synchronized (this.f3372a) {
            try {
                ir irVar = this.g.f3353b;
                if (irVar == null) {
                    this.g.zzawy().zzazd().zzd("Failed to get user properties", iz.a(this.f3373b), this.c, this.d);
                    this.f3372a.set(Collections.emptyList());
                    this.f3372a.notify();
                    return;
                }
                if (TextUtils.isEmpty(this.f3373b)) {
                    atomicReference2 = this.f3372a;
                    zza = irVar.zza(this.c, this.d, this.e, this.f);
                } else {
                    atomicReference2 = this.f3372a;
                    zza = irVar.zza(this.f3373b, this.c, this.d, this.e);
                }
                atomicReference2.set(zza);
                this.g.f();
                atomicReference = this.f3372a;
                atomicReference.notify();
            } catch (RemoteException e2) {
                try {
                    this.g.zzawy().zzazd().zzd("Failed to get user properties", iz.a(this.f3373b), this.c, e2);
                    this.f3372a.set(Collections.emptyList());
                    atomicReference = this.f3372a;
                } catch (Throwable th) {
                    this.f3372a.notify();
                    throw th;
                }
            }
        }
    }
}
