package c.e.c.d;

import android.text.TextUtils;
import android.util.Log;
import b.f.C0243b;
import c.e.a.b.j.h;
import com.google.firebase.iid.FirebaseInstanceId;
import java.io.IOException;
import java.util.Map;

public final class D {

    /* renamed from: a  reason: collision with root package name */
    public int f11589a = 0;

    /* renamed from: b  reason: collision with root package name */
    public final Map<Integer, h<Void>> f11590b = new C0243b();

    /* renamed from: c  reason: collision with root package name */
    public final C1005z f11591c;

    public D(C1005z zVar) {
        this.f11591c = zVar;
    }

    public final synchronized boolean a() {
        return b() != null;
    }

    public final String b() {
        String b2;
        synchronized (this.f11591c) {
            b2 = this.f11591c.b();
        }
        if (!TextUtils.isEmpty(b2)) {
            String[] split = b2.split(",");
            if (split.length > 1 && !TextUtils.isEmpty(split[1])) {
                return split[1];
            }
        }
        return null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001c, code lost:
        if (a(r5, r0) != false) goto L_0x0020;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x001f, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0020, code lost:
        monitor-enter(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
        r2 = r4.f11590b.remove(java.lang.Integer.valueOf(r4.f11589a));
        a(r0);
        r4.f11589a++;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0037, code lost:
        monitor-exit(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0038, code lost:
        if (r2 == null) goto L_0x0000;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x003a, code lost:
        r2.a(null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0016, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(com.google.firebase.iid.FirebaseInstanceId r5) {
        /*
            r4 = this;
        L_0x0000:
            monitor-enter(r4)
            java.lang.String r0 = r4.b()     // Catch:{ all -> 0x0042 }
            r1 = 1
            if (r0 != 0) goto L_0x0017
            boolean r5 = com.google.firebase.iid.FirebaseInstanceId.i()     // Catch:{ all -> 0x0042 }
            if (r5 == 0) goto L_0x0015
            java.lang.String r5 = "FirebaseInstanceId"
            java.lang.String r0 = "topic sync succeeded"
            android.util.Log.d(r5, r0)     // Catch:{ all -> 0x0042 }
        L_0x0015:
            monitor-exit(r4)     // Catch:{ all -> 0x0042 }
            return r1
        L_0x0017:
            monitor-exit(r4)     // Catch:{ all -> 0x0042 }
            boolean r2 = a(r5, r0)
            if (r2 != 0) goto L_0x0020
            r5 = 0
            return r5
        L_0x0020:
            monitor-enter(r4)
            java.util.Map<java.lang.Integer, c.e.a.b.j.h<java.lang.Void>> r2 = r4.f11590b     // Catch:{ all -> 0x003f }
            int r3 = r4.f11589a     // Catch:{ all -> 0x003f }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ all -> 0x003f }
            java.lang.Object r2 = r2.remove(r3)     // Catch:{ all -> 0x003f }
            c.e.a.b.j.h r2 = (c.e.a.b.j.h) r2     // Catch:{ all -> 0x003f }
            r4.a((java.lang.String) r0)     // Catch:{ all -> 0x003f }
            int r0 = r4.f11589a     // Catch:{ all -> 0x003f }
            int r0 = r0 + r1
            r4.f11589a = r0     // Catch:{ all -> 0x003f }
            monitor-exit(r4)     // Catch:{ all -> 0x003f }
            if (r2 == 0) goto L_0x0000
            r0 = 0
            r2.a(r0)
            goto L_0x0000
        L_0x003f:
            r5 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x003f }
            throw r5
        L_0x0042:
            r5 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x0042 }
            goto L_0x0046
        L_0x0045:
            throw r5
        L_0x0046:
            goto L_0x0045
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.c.d.D.a(com.google.firebase.iid.FirebaseInstanceId):boolean");
    }

    public final synchronized boolean a(String str) {
        synchronized (this.f11591c) {
            String b2 = this.f11591c.b();
            String valueOf = String.valueOf(str);
            if (!b2.startsWith(valueOf.length() != 0 ? ",".concat(valueOf) : new String(","))) {
                return false;
            }
            String valueOf2 = String.valueOf(str);
            this.f11591c.a(b2.substring((valueOf2.length() != 0 ? ",".concat(valueOf2) : new String(",")).length()));
            return true;
        }
    }

    public static boolean a(FirebaseInstanceId firebaseInstanceId, String str) {
        String[] split = str.split("!");
        if (split.length == 2) {
            String str2 = split[0];
            String str3 = split[1];
            char c2 = 65535;
            try {
                int hashCode = str2.hashCode();
                if (hashCode != 83) {
                    if (hashCode == 85) {
                        if (str2.equals("U")) {
                            c2 = 1;
                        }
                    }
                } else if (str2.equals("S")) {
                    c2 = 0;
                }
                if (c2 == 0) {
                    firebaseInstanceId.a(str3);
                    if (FirebaseInstanceId.i()) {
                        Log.d("FirebaseInstanceId", "subscribe operation succeeded");
                    }
                } else if (c2 == 1) {
                    firebaseInstanceId.b(str3);
                    if (FirebaseInstanceId.i()) {
                        Log.d("FirebaseInstanceId", "unsubscribe operation succeeded");
                    }
                }
            } catch (IOException e2) {
                String valueOf = String.valueOf(e2.getMessage());
                Log.e("FirebaseInstanceId", valueOf.length() != 0 ? "Topic sync failed: ".concat(valueOf) : new String("Topic sync failed: "));
                return false;
            }
        }
        return true;
    }
}
