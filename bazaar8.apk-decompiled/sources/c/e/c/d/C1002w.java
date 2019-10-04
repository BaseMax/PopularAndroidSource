package c.e.c.d;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import b.f.i;
import com.google.firebase.iid.FirebaseInstanceIdReceiver;
import java.util.ArrayDeque;
import java.util.Queue;

/* renamed from: c.e.c.d.w  reason: case insensitive filesystem */
public final class C1002w {

    /* renamed from: a  reason: collision with root package name */
    public static C1002w f11683a;

    /* renamed from: b  reason: collision with root package name */
    public final i<String, String> f11684b = new i<>();

    /* renamed from: c  reason: collision with root package name */
    public Boolean f11685c = null;

    /* renamed from: d  reason: collision with root package name */
    public Boolean f11686d = null;

    /* renamed from: e  reason: collision with root package name */
    public final Queue<Intent> f11687e = new ArrayDeque();

    /* renamed from: f  reason: collision with root package name */
    public final Queue<Intent> f11688f = new ArrayDeque();

    public static synchronized C1002w a() {
        C1002w wVar;
        synchronized (C1002w.class) {
            if (f11683a == null) {
                f11683a = new C1002w();
            }
            wVar = f11683a;
        }
        return wVar;
    }

    public static void b(Context context, Intent intent) {
        context.sendBroadcast(a(context, "com.google.firebase.MESSAGING_EVENT", intent));
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x00dc A[Catch:{ SecurityException -> 0x0122, IllegalStateException -> 0x00fa }] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00e1 A[Catch:{ SecurityException -> 0x0122, IllegalStateException -> 0x00fa }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00ee A[Catch:{ SecurityException -> 0x0122, IllegalStateException -> 0x00fa }] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00f8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int c(android.content.Context r5, android.content.Intent r6) {
        /*
            r4 = this;
            b.f.i<java.lang.String, java.lang.String> r0 = r4.f11684b
            monitor-enter(r0)
            b.f.i<java.lang.String, java.lang.String> r1 = r4.f11684b     // Catch:{ all -> 0x012d }
            java.lang.String r2 = r6.getAction()     // Catch:{ all -> 0x012d }
            java.lang.Object r1 = r1.get(r2)     // Catch:{ all -> 0x012d }
            java.lang.String r1 = (java.lang.String) r1     // Catch:{ all -> 0x012d }
            monitor-exit(r0)     // Catch:{ all -> 0x012d }
            if (r1 != 0) goto L_0x00aa
            android.content.pm.PackageManager r0 = r5.getPackageManager()
            r1 = 0
            android.content.pm.ResolveInfo r0 = r0.resolveService(r6, r1)
            if (r0 == 0) goto L_0x00a2
            android.content.pm.ServiceInfo r0 = r0.serviceInfo
            if (r0 != 0) goto L_0x0023
            goto L_0x00a2
        L_0x0023:
            java.lang.String r1 = r5.getPackageName()
            java.lang.String r2 = r0.packageName
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x006c
            java.lang.String r1 = r0.name
            if (r1 != 0) goto L_0x0034
            goto L_0x006c
        L_0x0034:
            java.lang.String r0 = r0.name
            java.lang.String r1 = "."
            boolean r1 = r0.startsWith(r1)
            if (r1 == 0) goto L_0x005a
            java.lang.String r1 = r5.getPackageName()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r2 = r0.length()
            if (r2 == 0) goto L_0x0055
            java.lang.String r0 = r1.concat(r0)
            goto L_0x005a
        L_0x0055:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r1)
        L_0x005a:
            r1 = r0
            b.f.i<java.lang.String, java.lang.String> r2 = r4.f11684b
            monitor-enter(r2)
            b.f.i<java.lang.String, java.lang.String> r0 = r4.f11684b     // Catch:{ all -> 0x0069 }
            java.lang.String r3 = r6.getAction()     // Catch:{ all -> 0x0069 }
            r0.put(r3, r1)     // Catch:{ all -> 0x0069 }
            monitor-exit(r2)     // Catch:{ all -> 0x0069 }
            goto L_0x00aa
        L_0x0069:
            r5 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0069 }
            throw r5
        L_0x006c:
            java.lang.String r1 = r0.packageName
            java.lang.String r0 = r0.name
            java.lang.String r2 = java.lang.String.valueOf(r1)
            int r2 = r2.length()
            int r2 = r2 + 94
            java.lang.String r3 = java.lang.String.valueOf(r0)
            int r3 = r3.length()
            int r2 = r2 + r3
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r2)
            java.lang.String r2 = "Error resolving target intent service, skipping classname enforcement. Resolved service was: "
            r3.append(r2)
            r3.append(r1)
            java.lang.String r1 = "/"
            r3.append(r1)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            java.lang.String r1 = "FirebaseInstanceId"
            android.util.Log.e(r1, r0)
            goto L_0x00d6
        L_0x00a2:
            java.lang.String r0 = "FirebaseInstanceId"
            java.lang.String r1 = "Failed to resolve target intent service, skipping classname enforcement"
            android.util.Log.e(r0, r1)
            goto L_0x00d6
        L_0x00aa:
            r0 = 3
            java.lang.String r2 = "FirebaseInstanceId"
            boolean r0 = android.util.Log.isLoggable(r2, r0)
            if (r0 == 0) goto L_0x00cf
            java.lang.String r0 = "Restricting intent to a specific service: "
            java.lang.String r2 = java.lang.String.valueOf(r1)
            int r3 = r2.length()
            if (r3 == 0) goto L_0x00c4
            java.lang.String r0 = r0.concat(r2)
            goto L_0x00ca
        L_0x00c4:
            java.lang.String r2 = new java.lang.String
            r2.<init>(r0)
            r0 = r2
        L_0x00ca:
            java.lang.String r2 = "FirebaseInstanceId"
            android.util.Log.d(r2, r0)
        L_0x00cf:
            java.lang.String r0 = r5.getPackageName()
            r6.setClassName(r0, r1)
        L_0x00d6:
            boolean r0 = r4.a(r5)     // Catch:{ SecurityException -> 0x0122, IllegalStateException -> 0x00fa }
            if (r0 == 0) goto L_0x00e1
            android.content.ComponentName r5 = b.q.a.a.b(r5, r6)     // Catch:{ SecurityException -> 0x0122, IllegalStateException -> 0x00fa }
            goto L_0x00ec
        L_0x00e1:
            android.content.ComponentName r5 = r5.startService(r6)     // Catch:{ SecurityException -> 0x0122, IllegalStateException -> 0x00fa }
            java.lang.String r6 = "FirebaseInstanceId"
            java.lang.String r0 = "Missing wake lock permission, service start may be delayed"
            android.util.Log.d(r6, r0)     // Catch:{ SecurityException -> 0x0122, IllegalStateException -> 0x00fa }
        L_0x00ec:
            if (r5 != 0) goto L_0x00f8
            java.lang.String r5 = "FirebaseInstanceId"
            java.lang.String r6 = "Error while delivering the message: ServiceIntent not found."
            android.util.Log.e(r5, r6)     // Catch:{ SecurityException -> 0x0122, IllegalStateException -> 0x00fa }
            r5 = 404(0x194, float:5.66E-43)
            return r5
        L_0x00f8:
            r5 = -1
            return r5
        L_0x00fa:
            r5 = move-exception
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.String r6 = java.lang.String.valueOf(r5)
            int r6 = r6.length()
            int r6 = r6 + 45
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r6)
            java.lang.String r6 = "Failed to start service while in background: "
            r0.append(r6)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            java.lang.String r6 = "FirebaseInstanceId"
            android.util.Log.e(r6, r5)
            r5 = 402(0x192, float:5.63E-43)
            return r5
        L_0x0122:
            r5 = move-exception
            java.lang.String r6 = "FirebaseInstanceId"
            java.lang.String r0 = "Error while delivering the message to the serviceIntent"
            android.util.Log.e(r6, r0, r5)
            r5 = 401(0x191, float:5.62E-43)
            return r5
        L_0x012d:
            r5 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x012d }
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.c.d.C1002w.c(android.content.Context, android.content.Intent):int");
    }

    public final Intent b() {
        return this.f11688f.poll();
    }

    public final int b(Context context, String str, Intent intent) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf = String.valueOf(str);
            Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Starting service: ".concat(valueOf) : new String("Starting service: "));
        }
        char c2 = 65535;
        int hashCode = str.hashCode();
        if (hashCode != -842411455) {
            if (hashCode == 41532704 && str.equals("com.google.firebase.MESSAGING_EVENT")) {
                c2 = 1;
            }
        } else if (str.equals("com.google.firebase.INSTANCE_ID_EVENT")) {
            c2 = 0;
        }
        if (c2 == 0) {
            this.f11687e.offer(intent);
        } else if (c2 != 1) {
            String valueOf2 = String.valueOf(str);
            Log.w("FirebaseInstanceId", valueOf2.length() != 0 ? "Unknown service action: ".concat(valueOf2) : new String("Unknown service action: "));
            return 500;
        } else {
            this.f11688f.offer(intent);
        }
        Intent intent2 = new Intent(str);
        intent2.setPackage(context.getPackageName());
        return c(context, intent2);
    }

    public static void a(Context context, Intent intent) {
        context.sendBroadcast(a(context, "com.google.firebase.INSTANCE_ID_EVENT", intent));
    }

    public static Intent a(Context context, String str, Intent intent) {
        Intent intent2 = new Intent(context, FirebaseInstanceIdReceiver.class);
        intent2.setAction(str);
        intent2.putExtra("wrapped_intent", intent);
        return intent2;
    }

    public final boolean a(Context context) {
        if (this.f11685c == null) {
            this.f11685c = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f11685c.booleanValue() && Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f11685c.booleanValue();
    }

    public final boolean b(Context context) {
        if (this.f11686d == null) {
            this.f11686d = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        if (!this.f11685c.booleanValue() && Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f11686d.booleanValue();
    }
}
