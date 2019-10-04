package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.PowerManager;
import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;

final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final long f4056a;

    /* renamed from: b  reason: collision with root package name */
    private final PowerManager.WakeLock f4057b = ((PowerManager) a().getSystemService("power")).newWakeLock(1, "fiid-sync");
    private final FirebaseInstanceId c;
    private final v d;

    b(FirebaseInstanceId firebaseInstanceId, v vVar, long j) {
        this.c = firebaseInstanceId;
        this.d = vVar;
        this.f4056a = j;
        this.f4057b.setReferenceCounted(false);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0015, code lost:
        if (a(r1) != false) goto L_0x0019;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0018, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final boolean d() {
        /*
            r2 = this;
        L_0x0000:
            com.google.firebase.iid.FirebaseInstanceId r0 = r2.c
            monitor-enter(r0)
            com.google.firebase.iid.z r1 = com.google.firebase.iid.FirebaseInstanceId.c()     // Catch:{ all -> 0x0021 }
            java.lang.String r1 = r1.zzcjm()     // Catch:{ all -> 0x0021 }
            if (r1 != 0) goto L_0x0010
            r1 = 1
            monitor-exit(r0)     // Catch:{ all -> 0x0021 }
            return r1
        L_0x0010:
            monitor-exit(r0)     // Catch:{ all -> 0x0021 }
            boolean r0 = r2.a(r1)
            if (r0 != 0) goto L_0x0019
            r0 = 0
            return r0
        L_0x0019:
            com.google.firebase.iid.z r0 = com.google.firebase.iid.FirebaseInstanceId.c()
            r0.zzri(r1)
            goto L_0x0000
        L_0x0021:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0021 }
            goto L_0x0025
        L_0x0024:
            throw r1
        L_0x0025:
            goto L_0x0024
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.b.d():boolean");
    }

    /* access modifiers changed from: package-private */
    public final boolean b() {
        ConnectivityManager connectivityManager = (ConnectivityManager) a().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final void run() {
        FirebaseInstanceId firebaseInstanceId;
        this.f4057b.acquire();
        try {
            boolean z = true;
            this.c.a(true);
            if (this.d.zzcjf() == 0) {
                z = false;
            }
            if (!z) {
                firebaseInstanceId = this.c;
            } else {
                if (!b()) {
                    new c(this).zzcjq();
                } else if (!c() || !d()) {
                    this.c.a(this.f4056a);
                } else {
                    firebaseInstanceId = this.c;
                }
            }
            firebaseInstanceId.a(false);
        } finally {
            this.f4057b.release();
        }
    }

    private final boolean c() {
        aa b2 = this.c.b();
        if (b2 != null && !b2.b(this.d.zzcjg())) {
            return true;
        }
        try {
            FirebaseInstanceId firebaseInstanceId = this.c;
            String token = firebaseInstanceId.getToken(v.zzf(firebaseInstanceId.f4051b), "*");
            if (token == null) {
                return false;
            }
            if (b2 == null || (b2 != null && !token.equals(b2.f4055a))) {
                Context a2 = a();
                Intent intent = new Intent("com.google.firebase.iid.TOKEN_REFRESH");
                Intent intent2 = new Intent("com.google.firebase.INSTANCE_ID_EVENT");
                intent2.setClass(a2, FirebaseInstanceIdReceiver.class);
                intent2.putExtra("wrapped_intent", intent);
                a2.sendBroadcast(intent2);
            }
            return true;
        } catch (IOException | SecurityException e) {
            String valueOf = String.valueOf(e.getMessage());
            if (valueOf.length() != 0) {
                "Token retrieval failed: ".concat(valueOf);
            } else {
                new String("Token retrieval failed: ");
            }
            return false;
        }
    }

    private final boolean a(String str) {
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
                } else if (str2.equals(ExifInterface.LATITUDE_SOUTH)) {
                    c2 = 0;
                }
                if (c2 == 0) {
                    FirebaseInstanceId firebaseInstanceId = this.c;
                    aa b2 = firebaseInstanceId.b();
                    if (b2 == null || b2.b(firebaseInstanceId.c.zzcjg())) {
                        throw new IOException("token not available");
                    }
                    Bundle bundle = new Bundle();
                    String valueOf = String.valueOf(str3);
                    bundle.putString("gcm.topic", valueOf.length() != 0 ? "/topics/".concat(valueOf) : new String("/topics/"));
                    String str4 = b2.f4055a;
                    String valueOf2 = String.valueOf(str3);
                    firebaseInstanceId.a(str4, valueOf2.length() != 0 ? "/topics/".concat(valueOf2) : new String("/topics/"), bundle);
                    boolean d2 = FirebaseInstanceId.d();
                } else if (c2 == 1) {
                    FirebaseInstanceId firebaseInstanceId2 = this.c;
                    aa b3 = firebaseInstanceId2.b();
                    if (b3 == null || b3.b(firebaseInstanceId2.c.zzcjg())) {
                        throw new IOException("token not available");
                    }
                    Bundle bundle2 = new Bundle();
                    String valueOf3 = String.valueOf(str3);
                    bundle2.putString("gcm.topic", valueOf3.length() != 0 ? "/topics/".concat(valueOf3) : new String("/topics/"));
                    bundle2.putString("delete", "1");
                    String str5 = b3.f4055a;
                    String valueOf4 = String.valueOf(str3);
                    firebaseInstanceId2.a(str5, valueOf4.length() != 0 ? "/topics/".concat(valueOf4) : new String("/topics/"), bundle2);
                    FirebaseInstanceId.d();
                }
            } catch (IOException e) {
                String valueOf5 = String.valueOf(e.getMessage());
                if (valueOf5.length() != 0) {
                    "Topic sync failed: ".concat(valueOf5);
                } else {
                    new String("Topic sync failed: ");
                }
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public final Context a() {
        return this.c.f4051b.getApplicationContext();
    }
}
