package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzdp;

public class Ab {

    /* renamed from: a  reason: collision with root package name */
    public static final C0808cb f10128a = C0808cb.c();

    /* renamed from: b  reason: collision with root package name */
    public zzdp f10129b;

    /* renamed from: c  reason: collision with root package name */
    public volatile Sb f10130c;

    /* renamed from: d  reason: collision with root package name */
    public volatile zzdp f10131d;

    /* JADX WARNING: Can't wrap try/catch for region: R(6:7|8|9|10|11|12) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0012 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final c.e.a.b.g.f.Sb a(c.e.a.b.g.f.Sb r2) {
        /*
            r1 = this;
            c.e.a.b.g.f.Sb r0 = r1.f10130c
            if (r0 != 0) goto L_0x001d
            monitor-enter(r1)
            c.e.a.b.g.f.Sb r0 = r1.f10130c     // Catch:{ all -> 0x001a }
            if (r0 == 0) goto L_0x000b
            monitor-exit(r1)     // Catch:{ all -> 0x001a }
            goto L_0x001d
        L_0x000b:
            r1.f10130c = r2     // Catch:{ zzfh -> 0x0012 }
            com.google.android.gms.internal.measurement.zzdp r0 = com.google.android.gms.internal.measurement.zzdp.f13171a     // Catch:{ zzfh -> 0x0012 }
            r1.f10131d = r0     // Catch:{ zzfh -> 0x0012 }
            goto L_0x0018
        L_0x0012:
            r1.f10130c = r2     // Catch:{ all -> 0x001a }
            com.google.android.gms.internal.measurement.zzdp r2 = com.google.android.gms.internal.measurement.zzdp.f13171a     // Catch:{ all -> 0x001a }
            r1.f10131d = r2     // Catch:{ all -> 0x001a }
        L_0x0018:
            monitor-exit(r1)     // Catch:{ all -> 0x001a }
            goto L_0x001d
        L_0x001a:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x001a }
            throw r2
        L_0x001d:
            c.e.a.b.g.f.Sb r2 = r1.f10130c
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Ab.a(c.e.a.b.g.f.Sb):c.e.a.b.g.f.Sb");
    }

    public final Sb b(Sb sb) {
        Sb sb2 = this.f10130c;
        this.f10129b = null;
        this.f10131d = null;
        this.f10130c = sb;
        return sb2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ab)) {
            return false;
        }
        Ab ab = (Ab) obj;
        Sb sb = this.f10130c;
        Sb sb2 = ab.f10130c;
        if (sb == null && sb2 == null) {
            return a().equals(ab.a());
        }
        if (sb != null && sb2 != null) {
            return sb.equals(sb2);
        }
        if (sb != null) {
            return sb.equals(ab.a(sb.a()));
        }
        return a(sb2.a()).equals(sb2);
    }

    public int hashCode() {
        return 1;
    }

    public final int b() {
        if (this.f10131d != null) {
            return this.f10131d.size();
        }
        if (this.f10130c != null) {
            return this.f10130c.d();
        }
        return 0;
    }

    public final zzdp a() {
        if (this.f10131d != null) {
            return this.f10131d;
        }
        synchronized (this) {
            if (this.f10131d != null) {
                zzdp zzdp = this.f10131d;
                return zzdp;
            }
            if (this.f10130c == null) {
                this.f10131d = zzdp.f13171a;
            } else {
                this.f10131d = this.f10130c.f();
            }
            zzdp zzdp2 = this.f10131d;
            return zzdp2;
        }
    }
}
