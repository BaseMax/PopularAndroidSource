package com.google.android.gms.common.api.internal;

import androidx.collection.ArrayMap;
import com.google.android.gms.c.b;
import com.google.android.gms.c.f;
import com.google.android.gms.common.ConnectionResult;
import java.util.Collections;
import java.util.Map;

final class c implements b<Map<cp<?>, String>> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ b f2808a;

    private c(b bVar) {
        this.f2808a = bVar;
    }

    /* synthetic */ c(b bVar, byte b2) {
        this(bVar);
    }

    public final void onComplete(f<Map<cp<?>, String>> fVar) {
        this.f2808a.d.lock();
        try {
            if (this.f2808a.g) {
                if (fVar.isSuccessful()) {
                    this.f2808a.h = new ArrayMap(this.f2808a.f2784a.size());
                    for (dh<?> zzagn : this.f2808a.f2784a.values()) {
                        this.f2808a.h.put(zzagn.zzagn(), ConnectionResult.zzfkr);
                    }
                } else if (fVar.getException() instanceof com.google.android.gms.common.api.c) {
                    com.google.android.gms.common.api.c cVar = (com.google.android.gms.common.api.c) fVar.getException();
                    if (this.f2808a.f) {
                        this.f2808a.h = new ArrayMap(this.f2808a.f2784a.size());
                        for (dh next : this.f2808a.f2784a.values()) {
                            cp zzagn2 = next.zzagn();
                            ConnectionResult connectionResult = cVar.getConnectionResult(next);
                            if (b.a(this.f2808a, next, connectionResult)) {
                                this.f2808a.h.put(zzagn2, new ConnectionResult(16));
                            } else {
                                this.f2808a.h.put(zzagn2, connectionResult);
                            }
                        }
                    } else {
                        this.f2808a.h = cVar.zzagj();
                    }
                    this.f2808a.j = b.a(this.f2808a);
                } else {
                    fVar.getException();
                    this.f2808a.h = Collections.emptyMap();
                    this.f2808a.j = new ConnectionResult(8);
                }
                if (this.f2808a.i != null) {
                    this.f2808a.h.putAll(this.f2808a.i);
                    this.f2808a.j = b.a(this.f2808a);
                }
                if (this.f2808a.j == null) {
                    b.b(this.f2808a);
                    b.c(this.f2808a);
                } else {
                    this.f2808a.g = false;
                    this.f2808a.c.zzc(this.f2808a.j);
                }
                this.f2808a.e.signalAll();
                this.f2808a.d.unlock();
            }
        } finally {
            this.f2808a.d.unlock();
        }
    }
}
