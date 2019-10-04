package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Base64;
import com.google.android.gms.common.util.m;
import com.google.firebase.b;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

final class v {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4086a;

    /* renamed from: b  reason: collision with root package name */
    private String f4087b;
    private String c;
    private int d;
    private int e = 0;

    public v(Context context) {
        this.f4086a = context;
    }

    private final PackageInfo a(String str) {
        try {
            return this.f4086a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            return null;
        }
    }

    private final synchronized void a() {
        PackageInfo a2 = a(this.f4086a.getPackageName());
        if (a2 != null) {
            this.f4087b = Integer.toString(a2.versionCode);
            this.c = a2.versionName;
        }
    }

    public static String zzb(KeyPair keyPair) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(keyPair.getPublic().getEncoded());
            digest[0] = (byte) ((digest[0] & 15) + 112);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static String zzf(b bVar) {
        String gcmSenderId = bVar.getOptions().getGcmSenderId();
        if (gcmSenderId != null) {
            return gcmSenderId;
        }
        String applicationId = bVar.getOptions().getApplicationId();
        if (!applicationId.startsWith("1:")) {
            return applicationId;
        }
        String[] split = applicationId.split(":");
        if (split.length < 2) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    public final synchronized int zzcjf() {
        if (this.e != 0) {
            return this.e;
        }
        PackageManager packageManager = this.f4086a.getPackageManager();
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            return 0;
        }
        if (!m.isAtLeastO()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (queryIntentServices != null && queryIntentServices.size() > 0) {
                this.e = 1;
                return this.e;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (queryBroadcastReceivers == null || queryBroadcastReceivers.size() <= 0) {
            if (m.isAtLeastO()) {
                this.e = 2;
            } else {
                this.e = 1;
            }
            return this.e;
        }
        this.e = 2;
        return this.e;
    }

    public final synchronized String zzcjg() {
        if (this.f4087b == null) {
            a();
        }
        return this.f4087b;
    }

    public final synchronized String zzcjh() {
        if (this.c == null) {
            a();
        }
        return this.c;
    }

    public final synchronized int zzcji() {
        if (this.d == 0) {
            PackageInfo a2 = a("com.google.android.gms");
            if (a2 != null) {
                this.d = a2.versionCode;
            }
        }
        return this.d;
    }
}
