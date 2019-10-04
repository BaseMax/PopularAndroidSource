package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Messenger;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.c.g;
import com.google.android.gms.c.i;
import com.google.android.gms.iid.MessengerCompat;
import io.fabric.sdk.android.services.settings.t;
import java.io.IOException;
import java.util.concurrent.ExecutionException;

final class w {

    /* renamed from: a  reason: collision with root package name */
    private static int f4088a;

    /* renamed from: b  reason: collision with root package name */
    private static PendingIntent f4089b;
    private final SimpleArrayMap<String, g<Bundle>> c = new SimpleArrayMap<>();
    private final Context d;
    private final v e;
    private Messenger f;
    private Messenger g;
    private MessengerCompat h;

    public w(Context context, v vVar) {
        this.d = context;
        this.e = vVar;
        this.f = new Messenger(new x(this, Looper.getMainLooper()));
    }

    private static synchronized String a() {
        String num;
        synchronized (w.class) {
            int i = f4088a;
            f4088a = i + 1;
            num = Integer.toString(i);
        }
        return num;
    }

    private static synchronized void a(Context context, Intent intent) {
        synchronized (w.class) {
            if (f4089b == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                f4089b = PendingIntent.getBroadcast(context, 0, intent2, 0);
            }
            intent.putExtra(t.APP_KEY, f4089b);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0047, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0051, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void a(java.lang.String r4, java.lang.String r5) {
        /*
            r3 = this;
            androidx.collection.SimpleArrayMap<java.lang.String, com.google.android.gms.c.g<android.os.Bundle>> r0 = r3.c
            monitor-enter(r0)
            if (r4 != 0) goto L_0x0027
            r4 = 0
        L_0x0006:
            androidx.collection.SimpleArrayMap<java.lang.String, com.google.android.gms.c.g<android.os.Bundle>> r1 = r3.c     // Catch:{ all -> 0x0052 }
            int r1 = r1.size()     // Catch:{ all -> 0x0052 }
            if (r4 >= r1) goto L_0x0021
            androidx.collection.SimpleArrayMap<java.lang.String, com.google.android.gms.c.g<android.os.Bundle>> r1 = r3.c     // Catch:{ all -> 0x0052 }
            java.lang.Object r1 = r1.valueAt(r4)     // Catch:{ all -> 0x0052 }
            com.google.android.gms.c.g r1 = (com.google.android.gms.c.g) r1     // Catch:{ all -> 0x0052 }
            java.io.IOException r2 = new java.io.IOException     // Catch:{ all -> 0x0052 }
            r2.<init>(r5)     // Catch:{ all -> 0x0052 }
            r1.setException(r2)     // Catch:{ all -> 0x0052 }
            int r4 = r4 + 1
            goto L_0x0006
        L_0x0021:
            androidx.collection.SimpleArrayMap<java.lang.String, com.google.android.gms.c.g<android.os.Bundle>> r4 = r3.c     // Catch:{ all -> 0x0052 }
            r4.clear()     // Catch:{ all -> 0x0052 }
            goto L_0x0050
        L_0x0027:
            androidx.collection.SimpleArrayMap<java.lang.String, com.google.android.gms.c.g<android.os.Bundle>> r1 = r3.c     // Catch:{ all -> 0x0052 }
            java.lang.Object r1 = r1.remove(r4)     // Catch:{ all -> 0x0052 }
            com.google.android.gms.c.g r1 = (com.google.android.gms.c.g) r1     // Catch:{ all -> 0x0052 }
            if (r1 != 0) goto L_0x0048
            java.lang.String r5 = "Missing callback for "
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch:{ all -> 0x0052 }
            int r1 = r4.length()     // Catch:{ all -> 0x0052 }
            if (r1 == 0) goto L_0x0041
            r5.concat(r4)     // Catch:{ all -> 0x0052 }
            goto L_0x0046
        L_0x0041:
            java.lang.String r4 = new java.lang.String     // Catch:{ all -> 0x0052 }
            r4.<init>(r5)     // Catch:{ all -> 0x0052 }
        L_0x0046:
            monitor-exit(r0)     // Catch:{ all -> 0x0052 }
            return
        L_0x0048:
            java.io.IOException r4 = new java.io.IOException     // Catch:{ all -> 0x0052 }
            r4.<init>(r5)     // Catch:{ all -> 0x0052 }
            r1.setException(r4)     // Catch:{ all -> 0x0052 }
        L_0x0050:
            monitor-exit(r0)     // Catch:{ all -> 0x0052 }
            return
        L_0x0052:
            r4 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0052 }
            goto L_0x0056
        L_0x0055:
            throw r4
        L_0x0056:
            goto L_0x0055
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.w.a(java.lang.String, java.lang.String):void");
    }

    private final Bundle b(Bundle bundle) throws IOException {
        Bundle c2 = c(bundle);
        if (c2 == null || !c2.containsKey("google.messenger")) {
            return c2;
        }
        Bundle c3 = c(bundle);
        if (c3 == null || !c3.containsKey("google.messenger")) {
            return c3;
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x00d4 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final android.os.Bundle c(android.os.Bundle r7) throws java.io.IOException {
        /*
            r6 = this;
            java.lang.String r0 = a()
            com.google.android.gms.c.g r1 = new com.google.android.gms.c.g
            r1.<init>()
            androidx.collection.SimpleArrayMap<java.lang.String, com.google.android.gms.c.g<android.os.Bundle>> r2 = r6.c
            monitor-enter(r2)
            androidx.collection.SimpleArrayMap<java.lang.String, com.google.android.gms.c.g<android.os.Bundle>> r3 = r6.c     // Catch:{ all -> 0x010f }
            r3.put(r0, r1)     // Catch:{ all -> 0x010f }
            monitor-exit(r2)     // Catch:{ all -> 0x010f }
            com.google.firebase.iid.v r2 = r6.e
            int r2 = r2.zzcjf()
            if (r2 == 0) goto L_0x0107
            android.content.Intent r2 = new android.content.Intent
            r2.<init>()
            java.lang.String r3 = "com.google.android.gms"
            r2.setPackage(r3)
            com.google.firebase.iid.v r3 = r6.e
            int r3 = r3.zzcjf()
            r4 = 2
            if (r3 != r4) goto L_0x0030
            java.lang.String r3 = "com.google.iid.TOKEN_REQUEST"
            goto L_0x0032
        L_0x0030:
            java.lang.String r3 = "com.google.android.c2dm.intent.REGISTER"
        L_0x0032:
            r2.setAction(r3)
            r2.putExtras(r7)
            android.content.Context r7 = r6.d
            a((android.content.Context) r7, (android.content.Intent) r2)
            java.lang.String r7 = java.lang.String.valueOf(r0)
            int r7 = r7.length()
            int r7 = r7 + 5
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r7)
            java.lang.String r7 = "|ID|"
            r3.append(r7)
            r3.append(r0)
            java.lang.String r7 = "|"
            r3.append(r7)
            java.lang.String r7 = r3.toString()
            java.lang.String r3 = "kid"
            r2.putExtra(r3, r7)
            r7 = 3
            java.lang.String r3 = "FirebaseInstanceId"
            boolean r7 = android.util.Log.isLoggable(r3, r7)
            if (r7 == 0) goto L_0x008a
            android.os.Bundle r7 = r2.getExtras()
            java.lang.String r7 = java.lang.String.valueOf(r7)
            java.lang.String r3 = java.lang.String.valueOf(r7)
            int r3 = r3.length()
            int r3 = r3 + 8
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>(r3)
            java.lang.String r3 = "Sending "
            r5.append(r3)
            r5.append(r7)
        L_0x008a:
            android.os.Messenger r7 = r6.f
            java.lang.String r3 = "google.messenger"
            r2.putExtra(r3, r7)
            android.os.Messenger r7 = r6.g
            if (r7 != 0) goto L_0x0099
            com.google.android.gms.iid.MessengerCompat r7 = r6.h
            if (r7 == 0) goto L_0x00b0
        L_0x0099:
            android.os.Message r7 = android.os.Message.obtain()
            r7.obj = r2
            android.os.Messenger r3 = r6.g     // Catch:{ RemoteException -> 0x00af }
            if (r3 == 0) goto L_0x00a9
            android.os.Messenger r3 = r6.g     // Catch:{ RemoteException -> 0x00af }
            r3.send(r7)     // Catch:{ RemoteException -> 0x00af }
            goto L_0x00c3
        L_0x00a9:
            com.google.android.gms.iid.MessengerCompat r3 = r6.h     // Catch:{ RemoteException -> 0x00af }
            r3.send(r7)     // Catch:{ RemoteException -> 0x00af }
            goto L_0x00c3
        L_0x00af:
        L_0x00b0:
            com.google.firebase.iid.v r7 = r6.e
            int r7 = r7.zzcjf()
            if (r7 != r4) goto L_0x00be
            android.content.Context r7 = r6.d
            r7.sendBroadcast(r2)
            goto L_0x00c3
        L_0x00be:
            android.content.Context r7 = r6.d
            r7.startService(r2)
        L_0x00c3:
            com.google.android.gms.c.f r7 = r1.getTask()     // Catch:{ InterruptedException | TimeoutException -> 0x00f2, ExecutionException -> 0x00e0 }
            r1 = 30000(0x7530, double:1.4822E-319)
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch:{ InterruptedException | TimeoutException -> 0x00f2, ExecutionException -> 0x00e0 }
            java.lang.Object r7 = com.google.android.gms.c.i.await(r7, r1, r3)     // Catch:{ InterruptedException | TimeoutException -> 0x00f2, ExecutionException -> 0x00e0 }
            android.os.Bundle r7 = (android.os.Bundle) r7     // Catch:{ InterruptedException | TimeoutException -> 0x00f2, ExecutionException -> 0x00e0 }
            androidx.collection.SimpleArrayMap<java.lang.String, com.google.android.gms.c.g<android.os.Bundle>> r1 = r6.c
            monitor-enter(r1)
            androidx.collection.SimpleArrayMap<java.lang.String, com.google.android.gms.c.g<android.os.Bundle>> r2 = r6.c     // Catch:{ all -> 0x00db }
            r2.remove(r0)     // Catch:{ all -> 0x00db }
            monitor-exit(r1)     // Catch:{ all -> 0x00db }
            return r7
        L_0x00db:
            r7 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x00db }
            throw r7
        L_0x00de:
            r7 = move-exception
            goto L_0x00fa
        L_0x00e0:
            r7 = move-exception
            java.lang.Throwable r7 = r7.getCause()     // Catch:{ all -> 0x00de }
            boolean r1 = r7 instanceof java.io.IOException     // Catch:{ all -> 0x00de }
            if (r1 == 0) goto L_0x00ec
            java.io.IOException r7 = (java.io.IOException) r7     // Catch:{ all -> 0x00de }
            throw r7     // Catch:{ all -> 0x00de }
        L_0x00ec:
            java.io.IOException r1 = new java.io.IOException     // Catch:{ all -> 0x00de }
            r1.<init>(r7)     // Catch:{ all -> 0x00de }
            throw r1     // Catch:{ all -> 0x00de }
        L_0x00f2:
            java.io.IOException r7 = new java.io.IOException     // Catch:{ all -> 0x00de }
            java.lang.String r1 = "TIMEOUT"
            r7.<init>(r1)     // Catch:{ all -> 0x00de }
            throw r7     // Catch:{ all -> 0x00de }
        L_0x00fa:
            androidx.collection.SimpleArrayMap<java.lang.String, com.google.android.gms.c.g<android.os.Bundle>> r1 = r6.c
            monitor-enter(r1)
            androidx.collection.SimpleArrayMap<java.lang.String, com.google.android.gms.c.g<android.os.Bundle>> r2 = r6.c     // Catch:{ all -> 0x0104 }
            r2.remove(r0)     // Catch:{ all -> 0x0104 }
            monitor-exit(r1)     // Catch:{ all -> 0x0104 }
            throw r7
        L_0x0104:
            r7 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0104 }
            throw r7
        L_0x0107:
            java.io.IOException r7 = new java.io.IOException
            java.lang.String r0 = "MISSING_INSTANCEID_SERVICE"
            r7.<init>(r0)
            throw r7
        L_0x010f:
            r7 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x010f }
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.w.c(android.os.Bundle):android.os.Bundle");
    }

    /* access modifiers changed from: package-private */
    public final Bundle a(Bundle bundle) throws IOException {
        if (this.e.zzcji() < 12000000) {
            return b(bundle);
        }
        try {
            return (Bundle) i.await(k.zzev(this.d).zzi(1, bundle));
        } catch (InterruptedException | ExecutionException e2) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(e2);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
                sb.append("Error making request: ");
                sb.append(valueOf);
            }
            if (!(e2.getCause() instanceof t) || ((t) e2.getCause()).getErrorCode() != 4) {
                return null;
            }
            return b(bundle);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:74:0x016b, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void a(com.google.firebase.iid.w r8, android.os.Message r9) {
        /*
            if (r9 == 0) goto L_0x0174
            java.lang.Object r0 = r9.obj
            boolean r0 = r0 instanceof android.content.Intent
            if (r0 == 0) goto L_0x0174
            java.lang.Object r0 = r9.obj
            android.content.Intent r0 = (android.content.Intent) r0
            java.lang.Class<com.google.android.gms.iid.MessengerCompat> r1 = com.google.android.gms.iid.MessengerCompat.class
            java.lang.ClassLoader r1 = r1.getClassLoader()
            r0.setExtrasClassLoader(r1)
            java.lang.String r1 = "google.messenger"
            boolean r1 = r0.hasExtra(r1)
            if (r1 == 0) goto L_0x0034
            java.lang.String r1 = "google.messenger"
            android.os.Parcelable r0 = r0.getParcelableExtra(r1)
            boolean r1 = r0 instanceof com.google.android.gms.iid.MessengerCompat
            if (r1 == 0) goto L_0x002c
            r1 = r0
            com.google.android.gms.iid.MessengerCompat r1 = (com.google.android.gms.iid.MessengerCompat) r1
            r8.h = r1
        L_0x002c:
            boolean r1 = r0 instanceof android.os.Messenger
            if (r1 == 0) goto L_0x0034
            android.os.Messenger r0 = (android.os.Messenger) r0
            r8.g = r0
        L_0x0034:
            java.lang.Object r9 = r9.obj
            android.content.Intent r9 = (android.content.Intent) r9
            java.lang.String r0 = r9.getAction()
            java.lang.String r1 = "com.google.android.c2dm.intent.REGISTRATION"
            boolean r1 = r1.equals(r0)
            r2 = 3
            if (r1 != 0) goto L_0x0063
            java.lang.String r8 = "FirebaseInstanceId"
            boolean r8 = android.util.Log.isLoggable(r8, r2)
            if (r8 == 0) goto L_0x0062
            java.lang.String r8 = "Unexpected response action: "
            java.lang.String r9 = java.lang.String.valueOf(r0)
            int r0 = r9.length()
            if (r0 == 0) goto L_0x005d
            r8.concat(r9)
            return
        L_0x005d:
            java.lang.String r9 = new java.lang.String
            r9.<init>(r8)
        L_0x0062:
            return
        L_0x0063:
            java.lang.String r0 = "registration_id"
            java.lang.String r0 = r9.getStringExtra(r0)
            if (r0 != 0) goto L_0x0071
            java.lang.String r0 = "unregistered"
            java.lang.String r0 = r9.getStringExtra(r0)
        L_0x0071:
            r1 = 2
            r3 = 1
            if (r0 != 0) goto L_0x0109
            java.lang.String r0 = "error"
            java.lang.String r0 = r9.getStringExtra(r0)
            if (r0 != 0) goto L_0x009d
            android.os.Bundle r8 = r9.getExtras()
            java.lang.String r8 = java.lang.String.valueOf(r8)
            java.lang.String r9 = java.lang.String.valueOf(r8)
            int r9 = r9.length()
            int r9 = r9 + 49
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r9)
            java.lang.String r9 = "Unexpected response, no error or registration id "
            r0.append(r9)
            r0.append(r8)
            return
        L_0x009d:
            java.lang.String r4 = "FirebaseInstanceId"
            boolean r4 = android.util.Log.isLoggable(r4, r2)
            if (r4 == 0) goto L_0x00ba
            java.lang.String r4 = "Received InstanceID error "
            java.lang.String r5 = java.lang.String.valueOf(r0)
            int r6 = r5.length()
            if (r6 == 0) goto L_0x00b5
            r4.concat(r5)
            goto L_0x00ba
        L_0x00b5:
            java.lang.String r5 = new java.lang.String
            r5.<init>(r4)
        L_0x00ba:
            r4 = 0
            java.lang.String r5 = "|"
            boolean r5 = r0.startsWith(r5)
            if (r5 == 0) goto L_0x0105
            java.lang.String r5 = "\\|"
            java.lang.String[] r5 = r0.split(r5)
            r6 = r5[r3]
            java.lang.String r7 = "ID"
            boolean r6 = r7.equals(r6)
            if (r6 != 0) goto L_0x00e8
            java.lang.String r6 = "Unexpected structured response "
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r7 = r0.length()
            if (r7 == 0) goto L_0x00e3
            r6.concat(r0)
            goto L_0x00e8
        L_0x00e3:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r6)
        L_0x00e8:
            int r0 = r5.length
            if (r0 <= r1) goto L_0x00fe
            r0 = r5[r1]
            r1 = r5[r2]
            java.lang.String r2 = ":"
            boolean r2 = r1.startsWith(r2)
            if (r2 == 0) goto L_0x00fb
            java.lang.String r1 = r1.substring(r3)
        L_0x00fb:
            r4 = r0
            r0 = r1
            goto L_0x0100
        L_0x00fe:
            java.lang.String r0 = "UNKNOWN"
        L_0x0100:
            java.lang.String r1 = "error"
            r9.putExtra(r1, r0)
        L_0x0105:
            r8.a((java.lang.String) r4, (java.lang.String) r0)
            return
        L_0x0109:
            java.lang.String r4 = "\\|ID\\|([^|]+)\\|:?+(.*)"
            java.util.regex.Pattern r4 = java.util.regex.Pattern.compile(r4)
            java.util.regex.Matcher r4 = r4.matcher(r0)
            boolean r5 = r4.matches()
            if (r5 != 0) goto L_0x0137
            java.lang.String r8 = "FirebaseInstanceId"
            boolean r8 = android.util.Log.isLoggable(r8, r2)
            if (r8 == 0) goto L_0x0136
            java.lang.String r8 = "Unexpected response string: "
            java.lang.String r9 = java.lang.String.valueOf(r0)
            int r0 = r9.length()
            if (r0 == 0) goto L_0x0131
            r8.concat(r9)
            return
        L_0x0131:
            java.lang.String r9 = new java.lang.String
            r9.<init>(r8)
        L_0x0136:
            return
        L_0x0137:
            java.lang.String r0 = r4.group(r3)
            java.lang.String r1 = r4.group(r1)
            android.os.Bundle r9 = r9.getExtras()
            java.lang.String r2 = "registration_id"
            r9.putString(r2, r1)
            androidx.collection.SimpleArrayMap<java.lang.String, com.google.android.gms.c.g<android.os.Bundle>> r1 = r8.c
            monitor-enter(r1)
            androidx.collection.SimpleArrayMap<java.lang.String, com.google.android.gms.c.g<android.os.Bundle>> r8 = r8.c     // Catch:{ all -> 0x0171 }
            java.lang.Object r8 = r8.remove(r0)     // Catch:{ all -> 0x0171 }
            com.google.android.gms.c.g r8 = (com.google.android.gms.c.g) r8     // Catch:{ all -> 0x0171 }
            if (r8 != 0) goto L_0x016c
            java.lang.String r8 = "Missing callback for "
            java.lang.String r9 = java.lang.String.valueOf(r0)     // Catch:{ all -> 0x0171 }
            int r0 = r9.length()     // Catch:{ all -> 0x0171 }
            if (r0 == 0) goto L_0x0165
            r8.concat(r9)     // Catch:{ all -> 0x0171 }
            goto L_0x016a
        L_0x0165:
            java.lang.String r9 = new java.lang.String     // Catch:{ all -> 0x0171 }
            r9.<init>(r8)     // Catch:{ all -> 0x0171 }
        L_0x016a:
            monitor-exit(r1)     // Catch:{ all -> 0x0171 }
            return
        L_0x016c:
            r8.setResult(r9)     // Catch:{ all -> 0x0171 }
            monitor-exit(r1)     // Catch:{ all -> 0x0171 }
            return
        L_0x0171:
            r8 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0171 }
            throw r8
        L_0x0174:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.w.a(com.google.firebase.iid.w, android.os.Message):void");
    }
}
