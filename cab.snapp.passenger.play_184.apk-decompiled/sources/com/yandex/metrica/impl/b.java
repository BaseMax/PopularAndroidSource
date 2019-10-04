package com.yandex.metrica.impl;

import android.util.Pair;
import com.yandex.metrica.impl.ob.on;
import org.a.c;

public class b {

    /* renamed from: a  reason: collision with root package name */
    private c f5733a = new c();

    /* renamed from: b  reason: collision with root package name */
    private long f5734b;
    private boolean c;
    private on d = new on(30, 50, 100, "App Environment");

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f5735a;

        /* renamed from: b  reason: collision with root package name */
        public final long f5736b;

        public a(String str, long j) {
            this.f5735a = str;
            this.f5736b = j;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                a aVar = (a) obj;
                if (this.f5736b != aVar.f5736b) {
                    return false;
                }
                String str = this.f5735a;
                String str2 = aVar.f5735a;
                return str == null ? str2 == null : str.equals(str2);
            }
        }

        public final int hashCode() {
            String str = this.f5735a;
            int hashCode = str != null ? str.hashCode() : 0;
            long j = this.f5736b;
            return (hashCode * 31) + ((int) (j ^ (j >>> 32)));
        }
    }

    public b(String str, long j) {
        this.f5734b = j;
        try {
            this.f5733a = new c(str);
        } catch (org.a.b unused) {
            this.f5733a = new c();
            this.f5734b = 0;
        }
    }

    public synchronized void a() {
        this.f5733a = new c();
        this.f5734b = 0;
    }

    public synchronized void a(Pair<String, String> pair) {
        b((String) pair.first, (String) pair.second);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002f, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0036, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x003b, code lost:
        return;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void b(java.lang.String r2, java.lang.String r3) {
        /*
            r1 = this;
            monitor-enter(r1)
            com.yandex.metrica.impl.ob.on r0 = r1.d     // Catch:{ b -> 0x003a, all -> 0x0037 }
            com.yandex.metrica.impl.ob.oq r0 = r0.a()     // Catch:{ b -> 0x003a, all -> 0x0037 }
            java.lang.String r2 = r0.a((java.lang.String) r2)     // Catch:{ b -> 0x003a, all -> 0x0037 }
            com.yandex.metrica.impl.ob.on r0 = r1.d     // Catch:{ b -> 0x003a, all -> 0x0037 }
            com.yandex.metrica.impl.ob.oq r0 = r0.b()     // Catch:{ b -> 0x003a, all -> 0x0037 }
            java.lang.String r3 = r0.a((java.lang.String) r3)     // Catch:{ b -> 0x003a, all -> 0x0037 }
            org.a.c r0 = r1.f5733a     // Catch:{ b -> 0x003a, all -> 0x0037 }
            boolean r0 = r0.has(r2)     // Catch:{ b -> 0x003a, all -> 0x0037 }
            if (r0 == 0) goto L_0x0030
            org.a.c r0 = r1.f5733a     // Catch:{ b -> 0x003a, all -> 0x0037 }
            java.lang.String r0 = r0.getString(r2)     // Catch:{ b -> 0x003a, all -> 0x0037 }
            if (r3 == 0) goto L_0x002b
            boolean r0 = r3.equals(r0)     // Catch:{ b -> 0x003a, all -> 0x0037 }
            if (r0 != 0) goto L_0x002e
        L_0x002b:
            r1.a(r2, r3)     // Catch:{ b -> 0x003a, all -> 0x0037 }
        L_0x002e:
            monitor-exit(r1)
            return
        L_0x0030:
            if (r3 == 0) goto L_0x0035
            r1.a(r2, r3)     // Catch:{ b -> 0x003a, all -> 0x0037 }
        L_0x0035:
            monitor-exit(r1)
            return
        L_0x0037:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        L_0x003a:
            monitor-exit(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.b.b(java.lang.String, java.lang.String):void");
    }

    /* access modifiers changed from: package-private */
    public synchronized void a(String str, String str2) throws org.a.b {
        if (this.f5733a.length() >= this.d.c().a()) {
            if (this.d.c().a() != this.f5733a.length() || !this.f5733a.has(str)) {
                this.d.a(str);
                return;
            }
        }
        this.f5733a.put(str, (Object) str2);
        this.c = true;
    }

    public synchronized a b() {
        if (this.c) {
            this.f5734b++;
            this.c = false;
        }
        return new a(this.f5733a.toString(), this.f5734b);
    }

    public synchronized String toString() {
        return "Map size " + this.f5733a.length() + ". Is changed " + this.c + ". Current revision " + this.f5734b;
    }
}
