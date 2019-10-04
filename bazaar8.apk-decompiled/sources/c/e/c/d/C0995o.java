package c.e.c.d;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Base64;
import android.util.Log;
import c.e.a.b.d.g.n;
import com.google.firebase.FirebaseApp;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

/* renamed from: c.e.c.d.o  reason: case insensitive filesystem */
public final class C0995o {

    /* renamed from: a  reason: collision with root package name */
    public final Context f11664a;

    /* renamed from: b  reason: collision with root package name */
    public String f11665b;

    /* renamed from: c  reason: collision with root package name */
    public String f11666c;

    /* renamed from: d  reason: collision with root package name */
    public int f11667d;

    /* renamed from: e  reason: collision with root package name */
    public int f11668e = 0;

    public C0995o(Context context) {
        this.f11664a = context;
    }

    public final synchronized int a() {
        if (this.f11668e != 0) {
            return this.f11668e;
        }
        PackageManager packageManager = this.f11664a.getPackageManager();
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            Log.e("FirebaseInstanceId", "Google Play services missing or without correct permission.");
            return 0;
        }
        if (!n.i()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (queryIntentServices != null && queryIntentServices.size() > 0) {
                this.f11668e = 1;
                return this.f11668e;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (queryBroadcastReceivers == null || queryBroadcastReceivers.size() <= 0) {
            Log.w("FirebaseInstanceId", "Failed to resolve IID implementation package, falling back");
            if (n.i()) {
                this.f11668e = 2;
            } else {
                this.f11668e = 1;
            }
            return this.f11668e;
        }
        this.f11668e = 2;
        return this.f11668e;
    }

    public final synchronized String b() {
        if (this.f11665b == null) {
            e();
        }
        return this.f11665b;
    }

    public final synchronized String c() {
        if (this.f11666c == null) {
            e();
        }
        return this.f11666c;
    }

    public final synchronized int d() {
        if (this.f11667d == 0) {
            PackageInfo a2 = a("com.google.android.gms");
            if (a2 != null) {
                this.f11667d = a2.versionCode;
            }
        }
        return this.f11667d;
    }

    public final synchronized void e() {
        PackageInfo a2 = a(this.f11664a.getPackageName());
        if (a2 != null) {
            this.f11665b = Integer.toString(a2.versionCode);
            this.f11666c = a2.versionName;
        }
    }

    public static String a(FirebaseApp firebaseApp) {
        String b2 = firebaseApp.e().b();
        if (b2 != null) {
            return b2;
        }
        String a2 = firebaseApp.e().a();
        if (!a2.startsWith("1:")) {
            return a2;
        }
        String[] split = a2.split(":");
        if (split.length < 2) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    public static String a(KeyPair keyPair) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(keyPair.getPublic().getEncoded());
            digest[0] = (byte) ((digest[0] & 15) + 112);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            Log.w("FirebaseInstanceId", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    public final PackageInfo a(String str) {
        try {
            return this.f11664a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }
}
