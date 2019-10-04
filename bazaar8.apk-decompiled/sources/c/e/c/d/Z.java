package c.e.c.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import b.i.b.a;
import c.e.a.b.g.e.m;
import com.google.firebase.iid.zzz;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Properties;

public final class Z {
    public static File e(Context context, String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "com.google.InstanceId.properties";
        } else {
            try {
                String encodeToString = Base64.encodeToString(str.getBytes("UTF-8"), 11);
                StringBuilder sb = new StringBuilder(String.valueOf(encodeToString).length() + 33);
                sb.append("com.google.InstanceId_");
                sb.append(encodeToString);
                sb.append(".properties");
                str2 = sb.toString();
            } catch (UnsupportedEncodingException e2) {
                throw new AssertionError(e2);
            }
        }
        return new File(b(context), str2);
    }

    public final C0984d a(Context context, String str) {
        C0984d c2 = c(context, str);
        if (c2 != null) {
            return c2;
        }
        return b(context, str);
    }

    public final C0984d b(Context context, String str) {
        C0984d dVar = new C0984d(C0983c.a(), System.currentTimeMillis());
        C0984d a2 = a(context, str, dVar, true);
        if (a2 == null || a2.equals(dVar)) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "Generated new key");
            }
            a(context, str, dVar);
            return dVar;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Loaded key after generating new one, using loaded one");
        }
        return a2;
    }

    public final C0984d c(Context context, String str) {
        try {
            C0984d d2 = d(context, str);
            if (d2 != null) {
                a(context, str, d2);
                return d2;
            }
            e = null;
            try {
                C0984d a2 = a(context.getSharedPreferences("com.google.android.gms.appid", 0), str);
                if (a2 != null) {
                    a(context, str, a2, false);
                    return a2;
                }
            } catch (zzz e2) {
                e = e2;
            }
            if (e == null) {
                return null;
            }
            throw e;
        } catch (zzz e3) {
            e = e3;
        }
    }

    public final C0984d d(Context context, String str) {
        File e2 = e(context, str);
        if (!e2.exists()) {
            return null;
        }
        try {
            return a(e2);
        } catch (zzz | IOException e3) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(e3);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 40);
                sb.append("Failed to read key from file, retrying: ");
                sb.append(valueOf);
                Log.d("FirebaseInstanceId", sb.toString());
            }
            try {
                return a(e2);
            } catch (IOException e4) {
                String valueOf2 = String.valueOf(e4);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 45);
                sb2.append("IID file exists, but failed to read from it: ");
                sb2.append(valueOf2);
                Log.w("FirebaseInstanceId", sb2.toString());
                throw new zzz((Exception) e4);
            }
        }
    }

    public static void a(Context context) {
        for (File file : b(context).listFiles()) {
            if (file.getName().startsWith("com.google.InstanceId")) {
                file.delete();
            }
        }
    }

    public static KeyPair a(String str, String str2) {
        try {
            byte[] decode = Base64.decode(str, 8);
            byte[] decode2 = Base64.decode(str2, 8);
            try {
                KeyFactory instance = KeyFactory.getInstance("RSA");
                return new KeyPair(instance.generatePublic(new X509EncodedKeySpec(decode)), instance.generatePrivate(new PKCS8EncodedKeySpec(decode2)));
            } catch (NoSuchAlgorithmException | InvalidKeySpecException e2) {
                String valueOf = String.valueOf(e2);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 19);
                sb.append("Invalid key stored ");
                sb.append(valueOf);
                Log.w("FirebaseInstanceId", sb.toString());
                throw new zzz((Exception) e2);
            }
        } catch (IllegalArgumentException e3) {
            throw new zzz((Exception) e3);
        }
    }

    public static File b(Context context) {
        File c2 = a.c(context);
        if (c2 != null && c2.isDirectory()) {
            return c2;
        }
        Log.w("FirebaseInstanceId", "noBackupFilesDir doesn't exist, using regular files directory instead");
        return context.getFilesDir();
    }

    public static long b(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(C1005z.a(str, "cre"), null);
        if (string != null) {
            try {
                return Long.parseLong(string);
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00a2, code lost:
        r12 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00a3, code lost:
        r13 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00a7, code lost:
        r13 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00a8, code lost:
        r8 = r13;
        r13 = r12;
        r12 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00b1, code lost:
        r10 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00b2, code lost:
        r12 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00b6, code lost:
        r12 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00b7, code lost:
        r8 = r12;
        r12 = r10;
        r10 = r8;
     */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:19:0x0060=Splitter:B:19:0x0060, B:52:0x00ba=Splitter:B:52:0x00ba, B:31:0x009e=Splitter:B:31:0x009e} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final c.e.c.d.C0984d a(android.content.Context r10, java.lang.String r11, c.e.c.d.C0984d r12, boolean r13) {
        /*
            r9 = this;
            r0 = 3
            java.lang.String r1 = "FirebaseInstanceId"
            boolean r2 = android.util.Log.isLoggable(r1, r0)
            if (r2 == 0) goto L_0x000e
            java.lang.String r2 = "Writing key to properties file"
            android.util.Log.d(r1, r2)
        L_0x000e:
            java.util.Properties r2 = new java.util.Properties
            r2.<init>()
            java.lang.String r3 = r12.b()
            java.lang.String r4 = "pub"
            r2.setProperty(r4, r3)
            java.lang.String r3 = r12.c()
            java.lang.String r4 = "pri"
            r2.setProperty(r4, r3)
            long r3 = r12.f11641b
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r4 = "cre"
            r2.setProperty(r4, r3)
            java.io.File r10 = e(r10, r11)
            r11 = 0
            r10.createNewFile()     // Catch:{ IOException -> 0x00be }
            java.io.RandomAccessFile r3 = new java.io.RandomAccessFile     // Catch:{ IOException -> 0x00be }
            java.lang.String r4 = "rw"
            r3.<init>(r10, r4)     // Catch:{ IOException -> 0x00be }
            java.nio.channels.FileChannel r10 = r3.getChannel()     // Catch:{ Throwable -> 0x00b4, all -> 0x00b1 }
            r10.lock()     // Catch:{ Throwable -> 0x00a5, all -> 0x00a2 }
            r4 = 0
            if (r13 == 0) goto L_0x008f
            long r6 = r10.size()     // Catch:{ Throwable -> 0x00a5, all -> 0x00a2 }
            int r13 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r13 <= 0) goto L_0x008f
            r10.position(r4)     // Catch:{ IOException -> 0x0066, zzz -> 0x0064 }
            c.e.c.d.d r12 = a((java.nio.channels.FileChannel) r10)     // Catch:{ IOException -> 0x0066, zzz -> 0x0064 }
            if (r10 == 0) goto L_0x0060
            a((java.lang.Throwable) r11, (java.nio.channels.FileChannel) r10)     // Catch:{ Throwable -> 0x00b4, all -> 0x00b1 }
        L_0x0060:
            a((java.lang.Throwable) r11, (java.io.RandomAccessFile) r3)     // Catch:{ IOException -> 0x00be }
            return r12
        L_0x0064:
            r13 = move-exception
            goto L_0x0067
        L_0x0066:
            r13 = move-exception
        L_0x0067:
            boolean r0 = android.util.Log.isLoggable(r1, r0)     // Catch:{ Throwable -> 0x00a5, all -> 0x00a2 }
            if (r0 == 0) goto L_0x008f
            java.lang.String r13 = java.lang.String.valueOf(r13)     // Catch:{ Throwable -> 0x00a5, all -> 0x00a2 }
            java.lang.String r0 = java.lang.String.valueOf(r13)     // Catch:{ Throwable -> 0x00a5, all -> 0x00a2 }
            int r0 = r0.length()     // Catch:{ Throwable -> 0x00a5, all -> 0x00a2 }
            int r0 = r0 + 64
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00a5, all -> 0x00a2 }
            r6.<init>(r0)     // Catch:{ Throwable -> 0x00a5, all -> 0x00a2 }
            java.lang.String r0 = "Tried reading key pair before writing new one, but failed with: "
            r6.append(r0)     // Catch:{ Throwable -> 0x00a5, all -> 0x00a2 }
            r6.append(r13)     // Catch:{ Throwable -> 0x00a5, all -> 0x00a2 }
            java.lang.String r13 = r6.toString()     // Catch:{ Throwable -> 0x00a5, all -> 0x00a2 }
            android.util.Log.d(r1, r13)     // Catch:{ Throwable -> 0x00a5, all -> 0x00a2 }
        L_0x008f:
            r10.position(r4)     // Catch:{ Throwable -> 0x00a5, all -> 0x00a2 }
            java.io.OutputStream r13 = java.nio.channels.Channels.newOutputStream(r10)     // Catch:{ Throwable -> 0x00a5, all -> 0x00a2 }
            r2.store(r13, r11)     // Catch:{ Throwable -> 0x00a5, all -> 0x00a2 }
            if (r10 == 0) goto L_0x009e
            a((java.lang.Throwable) r11, (java.nio.channels.FileChannel) r10)     // Catch:{ Throwable -> 0x00b4, all -> 0x00b1 }
        L_0x009e:
            a((java.lang.Throwable) r11, (java.io.RandomAccessFile) r3)     // Catch:{ IOException -> 0x00be }
            return r12
        L_0x00a2:
            r12 = move-exception
            r13 = r11
            goto L_0x00ab
        L_0x00a5:
            r12 = move-exception
            throw r12     // Catch:{ all -> 0x00a7 }
        L_0x00a7:
            r13 = move-exception
            r8 = r13
            r13 = r12
            r12 = r8
        L_0x00ab:
            if (r10 == 0) goto L_0x00b0
            a((java.lang.Throwable) r13, (java.nio.channels.FileChannel) r10)     // Catch:{ Throwable -> 0x00b4, all -> 0x00b1 }
        L_0x00b0:
            throw r12     // Catch:{ Throwable -> 0x00b4, all -> 0x00b1 }
        L_0x00b1:
            r10 = move-exception
            r12 = r11
            goto L_0x00ba
        L_0x00b4:
            r10 = move-exception
            throw r10     // Catch:{ all -> 0x00b6 }
        L_0x00b6:
            r12 = move-exception
            r8 = r12
            r12 = r10
            r10 = r8
        L_0x00ba:
            a((java.lang.Throwable) r12, (java.io.RandomAccessFile) r3)     // Catch:{ IOException -> 0x00be }
            throw r10     // Catch:{ IOException -> 0x00be }
        L_0x00be:
            r10 = move-exception
            java.lang.String r10 = java.lang.String.valueOf(r10)
            java.lang.String r12 = java.lang.String.valueOf(r10)
            int r12 = r12.length()
            int r12 = r12 + 21
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>(r12)
            java.lang.String r12 = "Failed to write key: "
            r13.append(r12)
            r13.append(r10)
            java.lang.String r10 = r13.toString()
            android.util.Log.w(r1, r10)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.c.d.Z.a(android.content.Context, java.lang.String, c.e.c.d.d, boolean):c.e.c.d.d");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0023, code lost:
        r1 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0024, code lost:
        r2 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0028, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0029, code lost:
        r8 = r2;
        r2 = r1;
        r1 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0032, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0036, code lost:
        a(r10, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0039, code lost:
        throw r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final c.e.c.d.C0984d a(java.io.File r10) {
        /*
            r9 = this;
            java.io.FileInputStream r0 = new java.io.FileInputStream
            r0.<init>(r10)
            r10 = 0
            java.nio.channels.FileChannel r7 = r0.getChannel()     // Catch:{ Throwable -> 0x0034 }
            r2 = 0
            r4 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r6 = 1
            r1 = r7
            r1.lock(r2, r4, r6)     // Catch:{ Throwable -> 0x0026, all -> 0x0023 }
            c.e.c.d.d r1 = a((java.nio.channels.FileChannel) r7)     // Catch:{ Throwable -> 0x0026, all -> 0x0023 }
            if (r7 == 0) goto L_0x001f
            a((java.lang.Throwable) r10, (java.nio.channels.FileChannel) r7)     // Catch:{ Throwable -> 0x0034 }
        L_0x001f:
            a((java.lang.Throwable) r10, (java.io.FileInputStream) r0)
            return r1
        L_0x0023:
            r1 = move-exception
            r2 = r10
            goto L_0x002c
        L_0x0026:
            r1 = move-exception
            throw r1     // Catch:{ all -> 0x0028 }
        L_0x0028:
            r2 = move-exception
            r8 = r2
            r2 = r1
            r1 = r8
        L_0x002c:
            if (r7 == 0) goto L_0x0031
            a((java.lang.Throwable) r2, (java.nio.channels.FileChannel) r7)     // Catch:{ Throwable -> 0x0034 }
        L_0x0031:
            throw r1     // Catch:{ Throwable -> 0x0034 }
        L_0x0032:
            r1 = move-exception
            goto L_0x0036
        L_0x0034:
            r10 = move-exception
            throw r10     // Catch:{ all -> 0x0032 }
        L_0x0036:
            a((java.lang.Throwable) r10, (java.io.FileInputStream) r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.c.d.Z.a(java.io.File):c.e.c.d.d");
    }

    public static C0984d a(FileChannel fileChannel) {
        Properties properties = new Properties();
        properties.load(Channels.newInputStream(fileChannel));
        String property = properties.getProperty("pub");
        String property2 = properties.getProperty("pri");
        if (property == null || property2 == null) {
            throw new zzz("Invalid properties file");
        }
        try {
            return new C0984d(a(property, property2), Long.parseLong(properties.getProperty("cre")));
        } catch (NumberFormatException e2) {
            throw new zzz((Exception) e2);
        }
    }

    public static C0984d a(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(C1005z.a(str, "|P|"), null);
        String string2 = sharedPreferences.getString(C1005z.a(str, "|K|"), null);
        if (string == null || string2 == null) {
            return null;
        }
        return new C0984d(a(string, string2), b(sharedPreferences, str));
    }

    public final void a(Context context, String str, C0984d dVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        try {
            if (dVar.equals(a(sharedPreferences, str))) {
                return;
            }
        } catch (zzz unused) {
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Writing key to shared preferences");
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString(C1005z.a(str, "|P|"), dVar.b());
        edit.putString(C1005z.a(str, "|K|"), dVar.c());
        edit.putString(C1005z.a(str, "cre"), String.valueOf(dVar.f11641b));
        edit.commit();
    }

    public static /* synthetic */ void a(Throwable th, FileChannel fileChannel) {
        if (th != null) {
            try {
                fileChannel.close();
            } catch (Throwable th2) {
                m.a(th, th2);
            }
        } else {
            fileChannel.close();
        }
    }

    public static /* synthetic */ void a(Throwable th, RandomAccessFile randomAccessFile) {
        if (th != null) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                m.a(th, th2);
            }
        } else {
            randomAccessFile.close();
        }
    }

    public static /* synthetic */ void a(Throwable th, FileInputStream fileInputStream) {
        if (th != null) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                m.a(th, th2);
            }
        } else {
            fileInputStream.close();
        }
    }
}
