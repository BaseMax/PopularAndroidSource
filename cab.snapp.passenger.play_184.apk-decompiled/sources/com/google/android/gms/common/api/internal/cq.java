package com.google.android.gms.common.api.internal;

import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.ap;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class cq extends cw {

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<a> f2827b = new SparseArray<>();

    class a implements f.c {
        public final int zzfny;
        public final f zzfnz;
        public final f.c zzfoa;

        public a(int i, f fVar, f.c cVar) {
            this.zzfny = i;
            this.zzfnz = fVar;
            this.zzfoa = cVar;
            fVar.registerConnectionFailedListener(this);
        }

        public final void onConnectionFailed(ConnectionResult connectionResult) {
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("beginFailureResolution for ");
            sb.append(valueOf);
            cq.this.zzb(connectionResult, this.zzfny);
        }
    }

    private cq(bd bdVar) {
        super(bdVar);
        this.f2748a.zza("AutoManageHelper", (LifecycleCallback) this);
    }

    private final a a(int i) {
        if (this.f2827b.size() <= i) {
            return null;
        }
        SparseArray<a> sparseArray = this.f2827b;
        return sparseArray.get(sparseArray.keyAt(i));
    }

    public static cq zza(bc bcVar) {
        bd a2 = a(bcVar);
        cq cqVar = (cq) a2.zza("AutoManageHelper", cq.class);
        return cqVar != null ? cqVar : new cq(a2);
    }

    /* access modifiers changed from: protected */
    public final void a() {
        for (int i = 0; i < this.f2827b.size(); i++) {
            a a2 = a(i);
            if (a2 != null) {
                a2.zzfnz.connect();
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void a(ConnectionResult connectionResult, int i) {
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        a aVar = this.f2827b.get(i);
        if (aVar != null) {
            zzbr(i);
            f.c cVar = aVar.zzfoa;
            if (cVar != null) {
                cVar.onConnectionFailed(connectionResult);
            }
        }
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i = 0; i < this.f2827b.size(); i++) {
            a a2 = a(i);
            if (a2 != null) {
                printWriter.append(str).append("GoogleApiClient #").print(a2.zzfny);
                printWriter.println(":");
                a2.zzfnz.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
            }
        }
    }

    public final void onStart() {
        super.onStart();
        boolean z = this.c;
        String valueOf = String.valueOf(this.f2827b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14);
        sb.append("onStart ");
        sb.append(z);
        sb.append(" ");
        sb.append(valueOf);
        if (this.d.get() == null) {
            for (int i = 0; i < this.f2827b.size(); i++) {
                a a2 = a(i);
                if (a2 != null) {
                    a2.zzfnz.connect();
                }
            }
        }
    }

    public final void onStop() {
        super.onStop();
        for (int i = 0; i < this.f2827b.size(); i++) {
            a a2 = a(i);
            if (a2 != null) {
                a2.zzfnz.disconnect();
            }
        }
    }

    public final void zza(int i, f fVar, f.c cVar) {
        ap.checkNotNull(fVar, "GoogleApiClient instance cannot be null");
        boolean z = this.f2827b.indexOfKey(i) < 0;
        StringBuilder sb = new StringBuilder(54);
        sb.append("Already managing a GoogleApiClient with id ");
        sb.append(i);
        ap.zza(z, (Object) sb.toString());
        cx cxVar = (cx) this.d.get();
        boolean z2 = this.c;
        String valueOf = String.valueOf(cxVar);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 49);
        sb2.append("starting AutoManage for client ");
        sb2.append(i);
        sb2.append(" ");
        sb2.append(z2);
        sb2.append(" ");
        sb2.append(valueOf);
        this.f2827b.put(i, new a(i, fVar, cVar));
        if (this.c && cxVar == null) {
            String valueOf2 = String.valueOf(fVar);
            StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf2).length() + 11);
            sb3.append("connecting ");
            sb3.append(valueOf2);
            fVar.connect();
        }
    }

    public final void zzbr(int i) {
        a aVar = this.f2827b.get(i);
        this.f2827b.remove(i);
        if (aVar != null) {
            aVar.zzfnz.unregisterConnectionFailedListener(aVar);
            aVar.zzfnz.disconnect();
        }
    }
}
