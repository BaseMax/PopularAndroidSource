package c.e.c.d;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.util.Log;
import b.f.i;
import c.e.a.b.j.h;
import c.e.a.b.j.j;
import com.crashlytics.android.core.CrashlyticsController;
import com.google.firebase.iid.zzak;
import com.google.firebase.iid.zzm;
import java.util.concurrent.ExecutionException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: c.e.c.d.u  reason: case insensitive filesystem */
public final class C1000u {

    /* renamed from: a  reason: collision with root package name */
    public static int f11675a;

    /* renamed from: b  reason: collision with root package name */
    public static PendingIntent f11676b;

    /* renamed from: c  reason: collision with root package name */
    public final i<String, h<Bundle>> f11677c = new i<>();

    /* renamed from: d  reason: collision with root package name */
    public final Context f11678d;

    /* renamed from: e  reason: collision with root package name */
    public final C0995o f11679e;

    /* renamed from: f  reason: collision with root package name */
    public Messenger f11680f;

    /* renamed from: g  reason: collision with root package name */
    public Messenger f11681g;

    /* renamed from: h  reason: collision with root package name */
    public zzm f11682h;

    public C1000u(Context context, C0995o oVar) {
        this.f11678d = context;
        this.f11679e = oVar;
        this.f11680f = new Messenger(new C1003x(this, Looper.getMainLooper()));
    }

    public final void a(Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new zzm.a());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof zzm) {
                        this.f11682h = (zzm) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        this.f11681g = (Messenger) parcelableExtra;
                    }
                }
                Intent intent2 = (Intent) message.obj;
                String action = intent2.getAction();
                if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
                    if (Log.isLoggable("FirebaseInstanceId", 3)) {
                        String valueOf = String.valueOf(action);
                        Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Unexpected response action: ".concat(valueOf) : new String("Unexpected response action: "));
                    }
                    return;
                }
                String stringExtra = intent2.getStringExtra("registration_id");
                if (stringExtra == null) {
                    stringExtra = intent2.getStringExtra("unregistered");
                }
                if (stringExtra == null) {
                    String stringExtra2 = intent2.getStringExtra(CrashlyticsController.EVENT_TYPE_LOGGED);
                    if (stringExtra2 == null) {
                        String valueOf2 = String.valueOf(intent2.getExtras());
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 49);
                        sb.append("Unexpected response, no error or registration id ");
                        sb.append(valueOf2);
                        Log.w("FirebaseInstanceId", sb.toString());
                    } else {
                        if (Log.isLoggable("FirebaseInstanceId", 3)) {
                            String valueOf3 = String.valueOf(stringExtra2);
                            Log.d("FirebaseInstanceId", valueOf3.length() != 0 ? "Received InstanceID error ".concat(valueOf3) : new String("Received InstanceID error "));
                        }
                        if (stringExtra2.startsWith("|")) {
                            String[] split = stringExtra2.split("\\|");
                            if (split.length <= 2 || !"ID".equals(split[1])) {
                                String valueOf4 = String.valueOf(stringExtra2);
                                Log.w("FirebaseInstanceId", valueOf4.length() != 0 ? "Unexpected structured response ".concat(valueOf4) : new String("Unexpected structured response "));
                            } else {
                                String str = split[2];
                                String str2 = split[3];
                                if (str2.startsWith(":")) {
                                    str2 = str2.substring(1);
                                }
                                a(str, intent2.putExtra(CrashlyticsController.EVENT_TYPE_LOGGED, str2).getExtras());
                            }
                        } else {
                            synchronized (this.f11677c) {
                                for (int i2 = 0; i2 < this.f11677c.size(); i2++) {
                                    a(this.f11677c.c(i2), intent2.getExtras());
                                }
                            }
                        }
                    }
                }
                Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(stringExtra);
                if (!matcher.matches()) {
                    if (Log.isLoggable("FirebaseInstanceId", 3)) {
                        String valueOf5 = String.valueOf(stringExtra);
                        Log.d("FirebaseInstanceId", valueOf5.length() != 0 ? "Unexpected response string: ".concat(valueOf5) : new String("Unexpected response string: "));
                    }
                    return;
                }
                String group = matcher.group(1);
                String group2 = matcher.group(2);
                Bundle extras = intent2.getExtras();
                extras.putString("registration_id", group2);
                a(group, extras);
                return;
            }
        }
        Log.w("FirebaseInstanceId", "Dropping invalid message");
    }

    public final Bundle b(Bundle bundle) {
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

    /* JADX WARNING: Removed duplicated region for block: B:36:0x00ef A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.os.Bundle c(android.os.Bundle r8) {
        /*
            r7 = this;
            java.lang.String r0 = a()
            c.e.a.b.j.h r1 = new c.e.a.b.j.h
            r1.<init>()
            b.f.i<java.lang.String, c.e.a.b.j.h<android.os.Bundle>> r2 = r7.f11677c
            monitor-enter(r2)
            b.f.i<java.lang.String, c.e.a.b.j.h<android.os.Bundle>> r3 = r7.f11677c     // Catch:{ all -> 0x0126 }
            r3.put(r0, r1)     // Catch:{ all -> 0x0126 }
            monitor-exit(r2)     // Catch:{ all -> 0x0126 }
            c.e.c.d.o r2 = r7.f11679e
            int r2 = r2.a()
            if (r2 == 0) goto L_0x011e
            android.content.Intent r2 = new android.content.Intent
            r2.<init>()
            java.lang.String r3 = "com.google.android.gms"
            r2.setPackage(r3)
            c.e.c.d.o r3 = r7.f11679e
            int r3 = r3.a()
            r4 = 2
            if (r3 != r4) goto L_0x0033
            java.lang.String r3 = "com.google.iid.TOKEN_REQUEST"
            r2.setAction(r3)
            goto L_0x0038
        L_0x0033:
            java.lang.String r3 = "com.google.android.c2dm.intent.REGISTER"
            r2.setAction(r3)
        L_0x0038:
            r2.putExtras(r8)
            android.content.Context r8 = r7.f11678d
            a((android.content.Context) r8, (android.content.Intent) r2)
            java.lang.String r8 = java.lang.String.valueOf(r0)
            int r8 = r8.length()
            int r8 = r8 + 5
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r8)
            java.lang.String r8 = "|ID|"
            r3.append(r8)
            r3.append(r0)
            java.lang.String r8 = "|"
            r3.append(r8)
            java.lang.String r8 = r3.toString()
            java.lang.String r3 = "kid"
            r2.putExtra(r3, r8)
            r8 = 3
            java.lang.String r3 = "FirebaseInstanceId"
            boolean r3 = android.util.Log.isLoggable(r3, r8)
            if (r3 == 0) goto L_0x0096
            android.os.Bundle r3 = r2.getExtras()
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r5 = java.lang.String.valueOf(r3)
            int r5 = r5.length()
            int r5 = r5 + 8
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>(r5)
            java.lang.String r5 = "Sending "
            r6.append(r5)
            r6.append(r3)
            java.lang.String r3 = r6.toString()
            java.lang.String r5 = "FirebaseInstanceId"
            android.util.Log.d(r5, r3)
        L_0x0096:
            android.os.Messenger r3 = r7.f11680f
            java.lang.String r5 = "google.messenger"
            r2.putExtra(r5, r3)
            android.os.Messenger r3 = r7.f11681g
            if (r3 != 0) goto L_0x00a5
            com.google.firebase.iid.zzm r3 = r7.f11682h
            if (r3 == 0) goto L_0x00cb
        L_0x00a5:
            android.os.Message r3 = android.os.Message.obtain()
            r3.obj = r2
            android.os.Messenger r5 = r7.f11681g     // Catch:{ RemoteException -> 0x00bb }
            if (r5 == 0) goto L_0x00b5
            android.os.Messenger r5 = r7.f11681g     // Catch:{ RemoteException -> 0x00bb }
            r5.send(r3)     // Catch:{ RemoteException -> 0x00bb }
            goto L_0x00de
        L_0x00b5:
            com.google.firebase.iid.zzm r5 = r7.f11682h     // Catch:{ RemoteException -> 0x00bb }
            r5.a(r3)     // Catch:{ RemoteException -> 0x00bb }
            goto L_0x00de
        L_0x00bb:
            java.lang.String r3 = "FirebaseInstanceId"
            boolean r8 = android.util.Log.isLoggable(r3, r8)
            if (r8 == 0) goto L_0x00cb
            java.lang.String r8 = "FirebaseInstanceId"
            java.lang.String r3 = "Messenger failed, fallback to startService"
            android.util.Log.d(r8, r3)
        L_0x00cb:
            c.e.c.d.o r8 = r7.f11679e
            int r8 = r8.a()
            if (r8 != r4) goto L_0x00d9
            android.content.Context r8 = r7.f11678d
            r8.sendBroadcast(r2)
            goto L_0x00de
        L_0x00d9:
            android.content.Context r8 = r7.f11678d
            r8.startService(r2)
        L_0x00de:
            c.e.a.b.j.g r8 = r1.a()     // Catch:{ InterruptedException | TimeoutException -> 0x0102, ExecutionException -> 0x00fb }
            r1 = 30000(0x7530, double:1.4822E-319)
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch:{ InterruptedException | TimeoutException -> 0x0102, ExecutionException -> 0x00fb }
            java.lang.Object r8 = c.e.a.b.j.j.a(r8, r1, r3)     // Catch:{ InterruptedException | TimeoutException -> 0x0102, ExecutionException -> 0x00fb }
            android.os.Bundle r8 = (android.os.Bundle) r8     // Catch:{ InterruptedException | TimeoutException -> 0x0102, ExecutionException -> 0x00fb }
            b.f.i<java.lang.String, c.e.a.b.j.h<android.os.Bundle>> r1 = r7.f11677c
            monitor-enter(r1)
            b.f.i<java.lang.String, c.e.a.b.j.h<android.os.Bundle>> r2 = r7.f11677c     // Catch:{ all -> 0x00f6 }
            r2.remove(r0)     // Catch:{ all -> 0x00f6 }
            monitor-exit(r1)     // Catch:{ all -> 0x00f6 }
            return r8
        L_0x00f6:
            r8 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x00f6 }
            throw r8
        L_0x00f9:
            r8 = move-exception
            goto L_0x0111
        L_0x00fb:
            r8 = move-exception
            java.io.IOException r1 = new java.io.IOException     // Catch:{ all -> 0x00f9 }
            r1.<init>(r8)     // Catch:{ all -> 0x00f9 }
            throw r1     // Catch:{ all -> 0x00f9 }
        L_0x0102:
            java.lang.String r8 = "FirebaseInstanceId"
            java.lang.String r1 = "No response"
            android.util.Log.w(r8, r1)     // Catch:{ all -> 0x00f9 }
            java.io.IOException r8 = new java.io.IOException     // Catch:{ all -> 0x00f9 }
            java.lang.String r1 = "TIMEOUT"
            r8.<init>(r1)     // Catch:{ all -> 0x00f9 }
            throw r8     // Catch:{ all -> 0x00f9 }
        L_0x0111:
            b.f.i<java.lang.String, c.e.a.b.j.h<android.os.Bundle>> r1 = r7.f11677c
            monitor-enter(r1)
            b.f.i<java.lang.String, c.e.a.b.j.h<android.os.Bundle>> r2 = r7.f11677c     // Catch:{ all -> 0x011b }
            r2.remove(r0)     // Catch:{ all -> 0x011b }
            monitor-exit(r1)     // Catch:{ all -> 0x011b }
            throw r8
        L_0x011b:
            r8 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x011b }
            throw r8
        L_0x011e:
            java.io.IOException r8 = new java.io.IOException
            java.lang.String r0 = "MISSING_INSTANCEID_SERVICE"
            r8.<init>(r0)
            throw r8
        L_0x0126:
            r8 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0126 }
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.c.d.C1000u.c(android.os.Bundle):android.os.Bundle");
    }

    public static synchronized void a(Context context, Intent intent) {
        synchronized (C1000u.class) {
            if (f11676b == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                f11676b = PendingIntent.getBroadcast(context, 0, intent2, 0);
            }
            intent.putExtra("app", f11676b);
        }
    }

    public final void a(String str, Bundle bundle) {
        synchronized (this.f11677c) {
            h remove = this.f11677c.remove(str);
            if (remove == null) {
                String valueOf = String.valueOf(str);
                Log.w("FirebaseInstanceId", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
                return;
            }
            remove.a(bundle);
        }
    }

    public final Bundle a(Bundle bundle) {
        if (this.f11679e.d() < 12000000) {
            return b(bundle);
        }
        try {
            return (Bundle) j.a(C0985e.a(this.f11678d).b(1, bundle));
        } catch (InterruptedException | ExecutionException e2) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(e2);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
                sb.append("Error making request: ");
                sb.append(valueOf);
                Log.d("FirebaseInstanceId", sb.toString());
            }
            if (!(e2.getCause() instanceof zzak) || ((zzak) e2.getCause()).a() != 4) {
                return null;
            }
            return b(bundle);
        }
    }

    public static synchronized String a() {
        String num;
        synchronized (C1000u.class) {
            int i2 = f11675a;
            f11675a = i2 + 1;
            num = Integer.toString(i2);
        }
        return num;
    }
}
