package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.p;
import java.io.File;
import java.io.IOException;
import java.security.KeyPair;

final class z {

    /* renamed from: a  reason: collision with root package name */
    private SharedPreferences f4093a;

    /* renamed from: b  reason: collision with root package name */
    private Context f4094b;

    public z(Context context) {
        this(context, "com.google.android.gms.appid");
    }

    private z(Context context, String str) {
        this.f4094b = context;
        this.f4093a = context.getSharedPreferences(str, 0);
        String valueOf = String.valueOf(str);
        File file = new File(p.getNoBackupFilesDir(this.f4094b), "-no-backup".length() != 0 ? valueOf.concat("-no-backup") : new String(valueOf));
        if (!file.exists()) {
            try {
                if (file.createNewFile() && !a()) {
                    zzavj();
                    FirebaseInstanceId.getInstance().e();
                }
            } catch (IOException e) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf2 = String.valueOf(e.getMessage());
                    if (valueOf2.length() != 0) {
                        "Error creating file in no backup dir: ".concat(valueOf2);
                        return;
                    }
                    new String("Error creating file in no backup dir: ");
                }
            }
        }
    }

    private static String a(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + "|S|".length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|S|");
        sb.append(str2);
        return sb.toString();
    }

    private static String a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + "|T|".length() + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    private final synchronized boolean a() {
        return this.f4093a.getAll().isEmpty();
    }

    private final void c(String str) {
        SharedPreferences.Editor edit = this.f4093a.edit();
        for (String next : this.f4093a.getAll().keySet()) {
            if (next.startsWith(str)) {
                edit.remove(next);
            }
        }
        edit.commit();
    }

    /* access modifiers changed from: package-private */
    public final synchronized KeyPair a(String str) {
        KeyPair zzavc;
        zzavc = a.zzavc();
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor edit = this.f4093a.edit();
        edit.putString(a(str, "|P|"), Base64.encodeToString(zzavc.getPublic().getEncoded(), 11));
        edit.putString(a(str, "|K|"), Base64.encodeToString(zzavc.getPrivate().getEncoded(), 11));
        edit.putString(a(str, "cre"), Long.toString(currentTimeMillis));
        edit.commit();
        return zzavc;
    }

    /* access modifiers changed from: package-private */
    public final synchronized void b(String str) {
        c(String.valueOf(str).concat("|"));
    }

    public final synchronized void zza(String str, String str2, String str3, String str4, String str5) {
        String a2 = aa.a(str4, str5, System.currentTimeMillis());
        if (a2 != null) {
            SharedPreferences.Editor edit = this.f4093a.edit();
            edit.putString(a(str, str2, str3), a2);
            edit.commit();
        }
    }

    public final synchronized void zzavj() {
        this.f4093a.edit().clear().commit();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0023, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized java.lang.String zzcjm() {
        /*
            r4 = this;
            monitor-enter(r4)
            android.content.SharedPreferences r0 = r4.f4093a     // Catch:{ all -> 0x0024 }
            java.lang.String r1 = "topic_operaion_queue"
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)     // Catch:{ all -> 0x0024 }
            if (r0 == 0) goto L_0x0022
            java.lang.String r1 = ","
            java.lang.String[] r0 = r0.split(r1)     // Catch:{ all -> 0x0024 }
            int r1 = r0.length     // Catch:{ all -> 0x0024 }
            r3 = 1
            if (r1 <= r3) goto L_0x0022
            r1 = r0[r3]     // Catch:{ all -> 0x0024 }
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch:{ all -> 0x0024 }
            if (r1 != 0) goto L_0x0022
            r0 = r0[r3]     // Catch:{ all -> 0x0024 }
            monitor-exit(r4)
            return r0
        L_0x0022:
            monitor-exit(r4)
            return r2
        L_0x0024:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.z.zzcjm():java.lang.String");
    }

    public final synchronized void zzf(String str, String str2, String str3) {
        String a2 = a(str, str2, str3);
        SharedPreferences.Editor edit = this.f4093a.edit();
        edit.remove(a2);
        edit.commit();
    }

    public final synchronized void zzia(String str) {
        c(String.valueOf(str).concat("|T|"));
    }

    public final synchronized aa zzp(String str, String str2, String str3) {
        return aa.a(this.f4093a.getString(a(str, str2, str3), null));
    }

    public final synchronized void zzrf(String str) {
        String string = this.f4093a.getString("topic_operaion_queue", "");
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + ",".length() + String.valueOf(str).length());
        sb.append(string);
        sb.append(",");
        sb.append(str);
        this.f4093a.edit().putString("topic_operaion_queue", sb.toString()).apply();
    }

    public final synchronized boolean zzri(String str) {
        boolean z;
        String string = this.f4093a.getString("topic_operaion_queue", "");
        String valueOf = String.valueOf(str);
        if (string.startsWith(valueOf.length() != 0 ? ",".concat(valueOf) : new String(","))) {
            String valueOf2 = String.valueOf(str);
            this.f4093a.edit().putString("topic_operaion_queue", string.substring((valueOf2.length() != 0 ? ",".concat(valueOf2) : new String(",")).length())).apply();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public final synchronized long zzrj(String str) {
        String string = this.f4093a.getString(a(str, "cre"), null);
        if (string != null) {
            try {
                return Long.parseLong(string);
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0070, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized java.security.KeyPair zzrm(java.lang.String r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            android.content.SharedPreferences r0 = r4.f4093a     // Catch:{ all -> 0x0071 }
            java.lang.String r1 = "|P|"
            java.lang.String r1 = a(r5, r1)     // Catch:{ all -> 0x0071 }
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)     // Catch:{ all -> 0x0071 }
            android.content.SharedPreferences r1 = r4.f4093a     // Catch:{ all -> 0x0071 }
            java.lang.String r3 = "|K|"
            java.lang.String r5 = a(r5, r3)     // Catch:{ all -> 0x0071 }
            java.lang.String r5 = r1.getString(r5, r2)     // Catch:{ all -> 0x0071 }
            if (r0 == 0) goto L_0x006f
            if (r5 != 0) goto L_0x001f
            goto L_0x006f
        L_0x001f:
            r1 = 8
            byte[] r0 = android.util.Base64.decode(r0, r1)     // Catch:{ InvalidKeySpecException -> 0x004a, NoSuchAlgorithmException -> 0x0048 }
            byte[] r5 = android.util.Base64.decode(r5, r1)     // Catch:{ InvalidKeySpecException -> 0x004a, NoSuchAlgorithmException -> 0x0048 }
            java.lang.String r1 = "RSA"
            java.security.KeyFactory r1 = java.security.KeyFactory.getInstance(r1)     // Catch:{ InvalidKeySpecException -> 0x004a, NoSuchAlgorithmException -> 0x0048 }
            java.security.spec.X509EncodedKeySpec r3 = new java.security.spec.X509EncodedKeySpec     // Catch:{ InvalidKeySpecException -> 0x004a, NoSuchAlgorithmException -> 0x0048 }
            r3.<init>(r0)     // Catch:{ InvalidKeySpecException -> 0x004a, NoSuchAlgorithmException -> 0x0048 }
            java.security.PublicKey r0 = r1.generatePublic(r3)     // Catch:{ InvalidKeySpecException -> 0x004a, NoSuchAlgorithmException -> 0x0048 }
            java.security.spec.PKCS8EncodedKeySpec r3 = new java.security.spec.PKCS8EncodedKeySpec     // Catch:{ InvalidKeySpecException -> 0x004a, NoSuchAlgorithmException -> 0x0048 }
            r3.<init>(r5)     // Catch:{ InvalidKeySpecException -> 0x004a, NoSuchAlgorithmException -> 0x0048 }
            java.security.PrivateKey r5 = r1.generatePrivate(r3)     // Catch:{ InvalidKeySpecException -> 0x004a, NoSuchAlgorithmException -> 0x0048 }
            java.security.KeyPair r1 = new java.security.KeyPair     // Catch:{ InvalidKeySpecException -> 0x004a, NoSuchAlgorithmException -> 0x0048 }
            r1.<init>(r0, r5)     // Catch:{ InvalidKeySpecException -> 0x004a, NoSuchAlgorithmException -> 0x0048 }
            monitor-exit(r4)
            return r1
        L_0x0048:
            r5 = move-exception
            goto L_0x004b
        L_0x004a:
            r5 = move-exception
        L_0x004b:
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch:{ all -> 0x0071 }
            java.lang.String r0 = java.lang.String.valueOf(r5)     // Catch:{ all -> 0x0071 }
            int r0 = r0.length()     // Catch:{ all -> 0x0071 }
            int r0 = r0 + 19
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x0071 }
            r1.<init>(r0)     // Catch:{ all -> 0x0071 }
            java.lang.String r0 = "Invalid key stored "
            r1.append(r0)     // Catch:{ all -> 0x0071 }
            r1.append(r5)     // Catch:{ all -> 0x0071 }
            com.google.firebase.iid.FirebaseInstanceId r5 = com.google.firebase.iid.FirebaseInstanceId.getInstance()     // Catch:{ all -> 0x0071 }
            r5.e()     // Catch:{ all -> 0x0071 }
            monitor-exit(r4)
            return r2
        L_0x006f:
            monitor-exit(r4)
            return r2
        L_0x0071:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.z.zzrm(java.lang.String):java.security.KeyPair");
    }
}
