package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.Parcel;
import com.yandex.metrica.impl.d;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;

public class hw implements d {

    /* renamed from: a  reason: collision with root package name */
    public static long f6132a = TimeUnit.MINUTES.toMillis(1);

    /* renamed from: b  reason: collision with root package name */
    private static volatile hw f6133b;
    private static final Object c = new Object();
    private final Context d;
    private hx e;
    private final WeakHashMap<Object, Object> f;
    private boolean g;
    private gf h;
    /* access modifiers changed from: private */
    public hq i;
    /* access modifiers changed from: private */
    public ma j;
    /* access modifiers changed from: private */
    public ie k;
    private a l;
    private Runnable m;
    private ft n;
    private fs o;

    static class a {
        a() {
        }

        public ie a(Context context, Looper looper, ma maVar, hq hqVar, ft ftVar, fs fsVar) {
            ie ieVar = new ie(context, maVar, looper, hqVar, ftVar, fsVar);
            return ieVar;
        }
    }

    public static hw a(Context context) {
        if (f6133b == null) {
            synchronized (c) {
                if (f6133b == null) {
                    f6133b = new hw(context.getApplicationContext());
                }
            }
        }
        return f6133b;
    }

    private hw(Context context) {
        this(context, new hx(), new gf(fq.a(context).c()), new a(), fq.a(context).g(), fq.a(context).h());
    }

    public void a() {
        this.e.execute(new Runnable() {
            public void run() {
                try {
                    ie a2 = hw.this.k;
                    if (a2 != null) {
                        a2.a();
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    public synchronized void a(Object obj) {
        this.f.put(obj, null);
        if (this.g) {
            f();
        }
    }

    public synchronized void b(Object obj) {
        this.f.remove(obj);
        b();
    }

    /* access modifiers changed from: package-private */
    public void b() {
        if (this.k != null && this.f.isEmpty()) {
            e();
        }
    }

    private void e() {
        ie ieVar = this.k;
        if (ieVar != null) {
            ieVar.f();
            this.k = null;
        }
        Runnable runnable = this.m;
        if (runnable != null) {
            this.e.a(runnable);
        }
    }

    private void f() {
        if (this.k == null) {
            this.k = this.l.a(this.d, this.e.a(), this.j, this.i, this.n, this.o);
        }
        this.k.e();
        if (this.m == null) {
            this.m = new Runnable() {
                public void run() {
                    ie a2 = hw.this.k;
                    if (a2 != null) {
                        a2.d();
                    }
                    hw.this.g();
                }
            };
            g();
        }
    }

    public Location c() {
        ie ieVar = this.k;
        if (ieVar == null) {
            return null;
        }
        return ieVar.b();
    }

    public Location d() {
        ie ieVar = this.k;
        if (ieVar == null) {
            return null;
        }
        return ieVar.c();
    }

    /* access modifiers changed from: private */
    public void g() {
        this.e.a(this.m, f6132a);
    }

    public static byte[] a(Location location) {
        if (location != null) {
            Parcel obtain = Parcel.obtain();
            try {
                obtain.writeValue(location);
                return obtain.marshall();
            } catch (Exception unused) {
            } finally {
                obtain.recycle();
            }
        }
        return null;
    }

    public static Location a(byte[] bArr) {
        if (bArr != null) {
            Parcel obtain = Parcel.obtain();
            try {
                obtain.unmarshall(bArr, 0, bArr.length);
                obtain.setDataPosition(0);
                return (Location) obtain.readValue(Location.class.getClassLoader());
            } catch (Exception unused) {
            } finally {
                obtain.recycle();
            }
        }
        return null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0023, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void a(boolean r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.g     // Catch:{ all -> 0x0024 }
            if (r0 == r2) goto L_0x0022
            r1.g = r2     // Catch:{ all -> 0x0024 }
            com.yandex.metrica.impl.ob.gf r2 = r1.h     // Catch:{ all -> 0x0024 }
            boolean r0 = r1.g     // Catch:{ all -> 0x0024 }
            r2.a((boolean) r0)     // Catch:{ all -> 0x0024 }
            boolean r2 = r1.g     // Catch:{ all -> 0x0024 }
            if (r2 == 0) goto L_0x001f
            java.util.WeakHashMap<java.lang.Object, java.lang.Object> r2 = r1.f     // Catch:{ all -> 0x0024 }
            boolean r2 = r2.isEmpty()     // Catch:{ all -> 0x0024 }
            if (r2 != 0) goto L_0x0022
            r1.f()     // Catch:{ all -> 0x0024 }
            monitor-exit(r1)
            return
        L_0x001f:
            r1.e()     // Catch:{ all -> 0x0024 }
        L_0x0022:
            monitor-exit(r1)
            return
        L_0x0024:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.hw.a(boolean):void");
    }

    public void a(ma maVar, hq hqVar) {
        this.j = maVar;
        this.i = hqVar;
        this.e.execute(new Runnable() {
            public void run() {
                ie a2 = hw.this.k;
                if (a2 != null) {
                    a2.a(hw.this.j, hw.this.i);
                }
            }
        });
    }

    hw(Context context, hx hxVar, gf gfVar, a aVar, ft ftVar, fs fsVar) {
        this.g = false;
        this.d = context;
        this.e = hxVar;
        this.h = gfVar;
        this.f = new WeakHashMap<>();
        this.l = aVar;
        this.g = gfVar.g();
        this.n = ftVar;
        this.o = fsVar;
    }
}
