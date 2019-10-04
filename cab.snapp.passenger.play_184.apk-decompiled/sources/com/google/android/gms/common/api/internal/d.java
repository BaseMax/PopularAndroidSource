package com.google.android.gms.common.api.internal;

import androidx.collection.ArrayMap;
import com.google.android.gms.c.b;
import com.google.android.gms.c.f;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.c;
import java.util.Collections;
import java.util.Map;

final class d implements b<Map<cp<?>, String>> {

    /* renamed from: a  reason: collision with root package name */
    private bs f2842a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ b f2843b;

    d(b bVar, bs bsVar) {
        this.f2843b = bVar;
        this.f2842a = bsVar;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.f2842a.zzabi();
    }

    public final void onComplete(f<Map<cp<?>, String>> fVar) {
        this.f2843b.d.lock();
        try {
            if (!this.f2843b.g) {
                this.f2842a.zzabi();
                return;
            }
            if (fVar.isSuccessful()) {
                this.f2843b.i = new ArrayMap(this.f2843b.f2785b.size());
                for (dh<?> zzagn : this.f2843b.f2785b.values()) {
                    this.f2843b.i.put(zzagn.zzagn(), ConnectionResult.zzfkr);
                }
            } else if (fVar.getException() instanceof c) {
                c cVar = (c) fVar.getException();
                if (this.f2843b.f) {
                    this.f2843b.i = new ArrayMap(this.f2843b.f2785b.size());
                    for (dh next : this.f2843b.f2785b.values()) {
                        cp zzagn2 = next.zzagn();
                        ConnectionResult connectionResult = cVar.getConnectionResult(next);
                        if (b.a(this.f2843b, next, connectionResult)) {
                            this.f2843b.i.put(zzagn2, new ConnectionResult(16));
                        } else {
                            this.f2843b.i.put(zzagn2, connectionResult);
                        }
                    }
                } else {
                    this.f2843b.i = cVar.zzagj();
                }
            } else {
                fVar.getException();
                this.f2843b.i = Collections.emptyMap();
            }
            if (this.f2843b.isConnected()) {
                this.f2843b.h.putAll(this.f2843b.i);
                if (b.a(this.f2843b) == null) {
                    b.b(this.f2843b);
                    b.c(this.f2843b);
                    this.f2843b.e.signalAll();
                }
            }
            this.f2842a.zzabi();
            this.f2843b.d.unlock();
        } finally {
            this.f2843b.d.unlock();
        }
    }
}
