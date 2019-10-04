package com.google.android.gms.internal;

public class qd {

    /* renamed from: a  reason: collision with root package name */
    private static final pk f3466a = pk.zzcxb();

    /* renamed from: b  reason: collision with root package name */
    private ou f3467b;
    private volatile qr c;
    private volatile ou d;

    /* JADX WARNING: Can't wrap try/catch for region: R(4:7|8|9|10) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0012 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.google.android.gms.internal.qr a(com.google.android.gms.internal.qr r2) {
        /*
            r1 = this;
            com.google.android.gms.internal.qr r0 = r1.c
            if (r0 != 0) goto L_0x001c
            monitor-enter(r1)
            com.google.android.gms.internal.qr r0 = r1.c     // Catch:{ all -> 0x0019 }
            if (r0 == 0) goto L_0x000b
        L_0x0009:
            monitor-exit(r1)     // Catch:{ all -> 0x0019 }
            goto L_0x001c
        L_0x000b:
            r1.c = r2     // Catch:{ py -> 0x0012 }
            com.google.android.gms.internal.ou r0 = com.google.android.gms.internal.ou.zzpfg     // Catch:{ py -> 0x0012 }
            r1.d = r0     // Catch:{ py -> 0x0012 }
            goto L_0x0009
        L_0x0012:
            r1.c = r2     // Catch:{ all -> 0x0019 }
            com.google.android.gms.internal.ou r2 = com.google.android.gms.internal.ou.zzpfg     // Catch:{ all -> 0x0019 }
            r1.d = r2     // Catch:{ all -> 0x0019 }
            goto L_0x0009
        L_0x0019:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0019 }
            throw r2
        L_0x001c:
            com.google.android.gms.internal.qr r2 = r1.c
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.qd.a(com.google.android.gms.internal.qr):com.google.android.gms.internal.qr");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qd)) {
            return false;
        }
        qd qdVar = (qd) obj;
        qr qrVar = this.c;
        qr qrVar2 = qdVar.c;
        return (qrVar == null && qrVar2 == null) ? toByteString().equals(qdVar.toByteString()) : (qrVar == null || qrVar2 == null) ? qrVar != null ? qrVar.equals(qdVar.a(qrVar.zzcxq())) : a(qrVar2.zzcxq()).equals(qrVar2) : qrVar.equals(qrVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final ou toByteString() {
        if (this.d != null) {
            return this.d;
        }
        synchronized (this) {
            if (this.d != null) {
                ou ouVar = this.d;
                return ouVar;
            }
            this.d = this.c == null ? ou.zzpfg : this.c.toByteString();
            ou ouVar2 = this.d;
            return ouVar2;
        }
    }

    public final int zzho() {
        if (this.d != null) {
            return this.d.size();
        }
        if (this.c != null) {
            return this.c.zzho();
        }
        return 0;
    }

    public final qr zzk(qr qrVar) {
        qr qrVar2 = this.c;
        this.f3467b = null;
        this.d = null;
        this.c = qrVar;
        return qrVar2;
    }
}
