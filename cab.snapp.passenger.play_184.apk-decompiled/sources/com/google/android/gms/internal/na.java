package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.d;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.fabric.sdk.android.services.b.b;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.security.auth.x500.X500Principal;

public final class na extends kw {

    /* renamed from: a  reason: collision with root package name */
    private static String[] f3412a = {"firebase_"};

    /* renamed from: b  reason: collision with root package name */
    private SecureRandom f3413b;
    private final AtomicLong c = new AtomicLong(0);
    private int d;

    na(jx jxVar) {
        super(jxVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0032  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int a(java.lang.String r9, java.lang.Object r10, boolean r11) {
        /*
            r8 = this;
            r0 = 0
            if (r11 == 0) goto L_0x0035
            boolean r1 = r10 instanceof android.os.Parcelable[]
            r2 = 1
            if (r1 == 0) goto L_0x000d
            r1 = r10
            android.os.Parcelable[] r1 = (android.os.Parcelable[]) r1
            int r1 = r1.length
            goto L_0x0018
        L_0x000d:
            boolean r1 = r10 instanceof java.util.ArrayList
            if (r1 == 0) goto L_0x0030
            r1 = r10
            java.util.ArrayList r1 = (java.util.ArrayList) r1
            int r1 = r1.size()
        L_0x0018:
            r3 = 1000(0x3e8, float:1.401E-42)
            if (r1 <= r3) goto L_0x0030
            com.google.android.gms.internal.iz r2 = r8.zzawy()
            com.google.android.gms.internal.jb r2 = r2.zzazf()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.String r3 = "param"
            java.lang.String r4 = "Parameter array is too long; discarded. Value kind, name, array length"
            r2.zzd(r4, r3, r9, r1)
            r2 = 0
        L_0x0030:
            if (r2 != 0) goto L_0x0035
            r9 = 17
            return r9
        L_0x0035:
            boolean r1 = zzki(r9)
            if (r1 == 0) goto L_0x0048
            r5 = 256(0x100, float:3.59E-43)
            java.lang.String r3 = "param"
            r2 = r8
            r4 = r9
            r6 = r10
            r7 = r11
            boolean r9 = r2.a(r3, r4, r5, r6, r7)
            goto L_0x0054
        L_0x0048:
            r4 = 100
            java.lang.String r2 = "param"
            r1 = r8
            r3 = r9
            r5 = r10
            r6 = r11
            boolean r9 = r1.a(r2, r3, r4, r5, r6)
        L_0x0054:
            if (r9 == 0) goto L_0x0057
            return r0
        L_0x0057:
            r9 = 4
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.na.a(java.lang.String, java.lang.Object, boolean):int");
    }

    static long a(byte[] bArr) {
        ap.checkNotNull(bArr);
        int i = 0;
        ap.checkState(bArr.length > 0);
        long j = 0;
        int length = bArr.length - 1;
        while (length >= 0 && length >= bArr.length - 8) {
            j += (((long) bArr[length]) & 255) << i;
            i += 8;
            length--;
        }
        return j;
    }

    private static Object a(int i, Object obj, boolean z) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf((long) ((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf((long) ((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf((long) ((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(((Boolean) obj).booleanValue() ? 1 : 0);
        } else if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        } else {
            if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
                return zza(String.valueOf(obj), i, z);
            }
            return null;
        }
    }

    private static void a(Bundle bundle, Object obj) {
        ap.checkNotNull(bundle);
        if (obj == null) {
            return;
        }
        if ((obj instanceof String) || (obj instanceof CharSequence)) {
            bundle.putLong("_el", (long) String.valueOf(obj).length());
        }
    }

    private static boolean a(Bundle bundle, int i) {
        if (bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", (long) i);
        return true;
    }

    static boolean a(zzcha zzcha, zzcgi zzcgi) {
        ap.checkNotNull(zzcha);
        ap.checkNotNull(zzcgi);
        return !TextUtils.isEmpty(zzcgi.zzixs);
    }

    static boolean a(String str) {
        ap.zzgm(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    private final boolean a(String str, int i, String str2) {
        if (str2 == null) {
            zzawy().zzazd().zzj("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        } else {
            zzawy().zzazd().zzd("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
            return false;
        }
    }

    private final boolean a(String str, String str2) {
        if (str2 == null) {
            zzawy().zzazd().zzj("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            zzawy().zzazd().zzj("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                zzawy().zzazd().zze("Name must start with a letter. Type, name", str, str2);
                return false;
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                    charCount += Character.charCount(codePointAt2);
                } else {
                    zzawy().zzazd().zze("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
            }
            return true;
        }
    }

    private final boolean a(String str, String str2, int i, Object obj, boolean z) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
                String valueOf = String.valueOf(obj);
                if (valueOf.codePointCount(0, valueOf.length()) > i) {
                    zzawy().zzazf().zzd("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
                    return false;
                }
            } else if ((obj instanceof Bundle) && z) {
                return true;
            } else {
                if ((obj instanceof Parcelable[]) && z) {
                    for (Parcelable parcelable : (Parcelable[]) obj) {
                        if (!(parcelable instanceof Bundle)) {
                            zzawy().zzazf().zze("All Parcelable[] elements must be of type Bundle. Value type, name", parcelable.getClass(), str2);
                            return false;
                        }
                    }
                    return true;
                } else if (!(obj instanceof ArrayList) || !z) {
                    return false;
                } else {
                    ArrayList arrayList = (ArrayList) obj;
                    int size = arrayList.size();
                    int i2 = 0;
                    while (i2 < size) {
                        Object obj2 = arrayList.get(i2);
                        i2++;
                        if (!(obj2 instanceof Bundle)) {
                            zzawy().zzazf().zze("All ArrayList elements must be of type Bundle. Value type, name", obj2.getClass(), str2);
                            return false;
                        }
                    }
                    return true;
                }
            }
        }
        return true;
    }

    private final boolean a(String str, String[] strArr, String str2) {
        boolean z;
        boolean z2;
        if (str2 == null) {
            zzawy().zzazd().zzj("Name is required and can't be null. Type", str);
            return false;
        }
        ap.checkNotNull(str2);
        int i = 0;
        while (true) {
            String[] strArr2 = f3412a;
            if (i >= strArr2.length) {
                z = false;
                break;
            } else if (str2.startsWith(strArr2[i])) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            zzawy().zzazd().zze("Name starts with reserved prefix. Type, name", str, str2);
            return false;
        }
        if (strArr != null) {
            ap.checkNotNull(strArr);
            int i2 = 0;
            while (true) {
                if (i2 >= strArr.length) {
                    z2 = false;
                    break;
                } else if (zzas(str2, strArr[i2])) {
                    z2 = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (z2) {
                zzawy().zzazd().zze("Name is reserved. Type, name", str, str2);
                return false;
            }
        }
        return true;
    }

    static byte[] a(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    static nm[] a(nm[] nmVarArr, String str, Object obj) {
        for (nm nmVar : nmVarArr) {
            if (Objects.equals(nmVar.name, str)) {
                nmVar.zzjll = null;
                nmVar.zzgcc = null;
                nmVar.zzjjl = null;
                if (obj instanceof Long) {
                    nmVar.zzjll = (Long) obj;
                }
                return nmVarArr;
            }
        }
        nm[] nmVarArr2 = new nm[(nmVarArr.length + 1)];
        System.arraycopy(nmVarArr, 0, nmVarArr2, 0, nmVarArr.length);
        nm nmVar2 = new nm();
        nmVar2.name = str;
        if (obj instanceof Long) {
            nmVar2.zzjll = (Long) obj;
        }
        nmVarArr2[nmVarArr.length] = nmVar2;
        return nmVarArr2;
    }

    static MessageDigest b(String str) {
        int i = 0;
        while (i < 2) {
            try {
                MessageDigest instance = MessageDigest.getInstance(str);
                if (instance != null) {
                    return instance;
                }
                i++;
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return null;
    }

    private final boolean b(Context context, String str) {
        jb jbVar;
        String str2;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfo = fr.zzdb(context).getPackageInfo(str, 64);
            if (!(packageInfo == null || packageInfo.signatures == null || packageInfo.signatures.length <= 0)) {
                return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(packageInfo.signatures[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
            }
        } catch (CertificateException e) {
            e = e;
            jbVar = zzawy().zzazd();
            str2 = "Error obtaining certificate";
            jbVar.zzj(str2, e);
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            e = e2;
            jbVar = zzawy().zzazd();
            str2 = "Package name not found";
            jbVar.zzj(str2, e);
            return true;
        }
        return true;
    }

    private final boolean b(String str, String str2) {
        if (str2 == null) {
            zzawy().zzazd().zzj("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            zzawy().zzazd().zzj("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (Character.isLetter(codePointAt) || codePointAt == 95) {
                int length = str2.length();
                int charCount = Character.charCount(codePointAt);
                while (charCount < length) {
                    int codePointAt2 = str2.codePointAt(charCount);
                    if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                        charCount += Character.charCount(codePointAt2);
                    } else {
                        zzawy().zzazd().zze("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                        return false;
                    }
                }
                return true;
            }
            zzawy().zzazd().zze("Name must start with a letter or _ (underscore). Type, name", str, str2);
            return false;
        }
    }

    static boolean c(String str) {
        return str != null && str.matches("(\\+|-)?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x003b A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static boolean f(java.lang.String r5) {
        /*
            com.google.android.gms.common.internal.ap.zzgm(r5)
            int r0 = r5.hashCode()
            r1 = 94660(0x171c4, float:1.32647E-40)
            r2 = 0
            r3 = 2
            r4 = 1
            if (r0 == r1) goto L_0x002e
            r1 = 95025(0x17331, float:1.33158E-40)
            if (r0 == r1) goto L_0x0024
            r1 = 95027(0x17333, float:1.33161E-40)
            if (r0 == r1) goto L_0x001a
            goto L_0x0038
        L_0x001a:
            java.lang.String r0 = "_ui"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0038
            r5 = 1
            goto L_0x0039
        L_0x0024:
            java.lang.String r0 = "_ug"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0038
            r5 = 2
            goto L_0x0039
        L_0x002e:
            java.lang.String r0 = "_in"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0038
            r5 = 0
            goto L_0x0039
        L_0x0038:
            r5 = -1
        L_0x0039:
            if (r5 == 0) goto L_0x0040
            if (r5 == r4) goto L_0x0040
            if (r5 == r3) goto L_0x0040
            return r2
        L_0x0040:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.na.f(java.lang.String):boolean");
    }

    private final int g(String str) {
        if (!a("event param", str)) {
            return 3;
        }
        if (!a("event param", (String[]) null, str)) {
            return 14;
        }
        return !a("event param", 40, str) ? 3 : 0;
    }

    private final int h(String str) {
        if (!b("event param", str)) {
            return 3;
        }
        if (!a("event param", (String[]) null, str)) {
            return 14;
        }
        return !a("event param", 40, str) ? 3 : 0;
    }

    private static int i(String str) {
        return "_ldl".equals(str) ? 2048 : 36;
    }

    public static Object zza(nl nlVar, String str) {
        for (nm nmVar : nlVar.zzjlh) {
            if (nmVar.name.equals(str)) {
                if (nmVar.zzgcc != null) {
                    return nmVar.zzgcc;
                }
                if (nmVar.zzjll != null) {
                    return nmVar.zzjll;
                }
                if (nmVar.zzjjl != null) {
                    return nmVar.zzjjl;
                }
            }
        }
        return null;
    }

    public static String zza(String str, int i, boolean z) {
        if (str.codePointCount(0, str.length()) > i) {
            if (z) {
                return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i))).concat("...");
            }
            str = null;
        }
        return str;
    }

    public static String zza(String str, String[] strArr, String[] strArr2) {
        ap.checkNotNull(strArr);
        ap.checkNotNull(strArr2);
        int min = Math.min(strArr.length, strArr2.length);
        for (int i = 0; i < min; i++) {
            if (zzas(str, strArr[i])) {
                return strArr2[i];
            }
        }
        return null;
    }

    public static boolean zza(long[] jArr, int i) {
        if (i >= (jArr.length << 6)) {
            return false;
        }
        return ((1 << (i % 64)) & jArr[i / 64]) != 0;
    }

    public static long[] zza(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i << 6) + i2;
                if (i3 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i3)) {
                    jArr[i] = jArr[i] | (1 << i2);
                }
            }
        }
        return jArr;
    }

    public static Bundle[] zzaf(Object obj) {
        Object[] array;
        if (obj instanceof Bundle) {
            return new Bundle[]{(Bundle) obj};
        }
        if (obj instanceof Parcelable[]) {
            Parcelable[] parcelableArr = (Parcelable[]) obj;
            array = Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
        } else if (!(obj instanceof ArrayList)) {
            return null;
        } else {
            ArrayList arrayList = (ArrayList) obj;
            array = arrayList.toArray(new Bundle[arrayList.size()]);
        }
        return (Bundle[]) array;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0037 A[Catch:{ IOException | ClassNotFoundException -> 0x0040 }] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x003c A[Catch:{ IOException | ClassNotFoundException -> 0x0040 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.Object zzag(java.lang.Object r4) {
        /*
            r0 = 0
            if (r4 != 0) goto L_0x0004
            return r0
        L_0x0004:
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch:{ all -> 0x0032 }
            r1.<init>()     // Catch:{ all -> 0x0032 }
            java.io.ObjectOutputStream r2 = new java.io.ObjectOutputStream     // Catch:{ all -> 0x0032 }
            r2.<init>(r1)     // Catch:{ all -> 0x0032 }
            r2.writeObject(r4)     // Catch:{ all -> 0x002f }
            r2.flush()     // Catch:{ all -> 0x002f }
            java.io.ObjectInputStream r4 = new java.io.ObjectInputStream     // Catch:{ all -> 0x002f }
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream     // Catch:{ all -> 0x002f }
            byte[] r1 = r1.toByteArray()     // Catch:{ all -> 0x002f }
            r3.<init>(r1)     // Catch:{ all -> 0x002f }
            r4.<init>(r3)     // Catch:{ all -> 0x002f }
            java.lang.Object r1 = r4.readObject()     // Catch:{ all -> 0x002d }
            r2.close()     // Catch:{ IOException | ClassNotFoundException -> 0x0040 }
            r4.close()     // Catch:{ IOException | ClassNotFoundException -> 0x0040 }
            return r1
        L_0x002d:
            r1 = move-exception
            goto L_0x0035
        L_0x002f:
            r1 = move-exception
            r4 = r0
            goto L_0x0035
        L_0x0032:
            r1 = move-exception
            r4 = r0
            r2 = r4
        L_0x0035:
            if (r2 == 0) goto L_0x003a
            r2.close()     // Catch:{ IOException | ClassNotFoundException -> 0x0040 }
        L_0x003a:
            if (r4 == 0) goto L_0x003f
            r4.close()     // Catch:{ IOException | ClassNotFoundException -> 0x0040 }
        L_0x003f:
            throw r1     // Catch:{ IOException | ClassNotFoundException -> 0x0040 }
        L_0x0040:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.na.zzag(java.lang.Object):java.lang.Object");
    }

    public static boolean zzas(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null) {
            return false;
        }
        return str.equals(str2);
    }

    public static boolean zzki(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith(b.ROLL_OVER_FILE_NAME_SEPARATOR);
    }

    public static boolean zzo(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        return "android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra);
    }

    public static boolean zzt(Context context, String str) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 4);
            if (serviceInfo != null && serviceInfo.enabled) {
                return true;
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    /* access modifiers changed from: package-private */
    public final long a(Context context, String str) {
        zzve();
        ap.checkNotNull(context);
        ap.zzgm(str);
        PackageManager packageManager = context.getPackageManager();
        MessageDigest b2 = b("MD5");
        if (b2 == null) {
            zzawy().zzazd().log("Could not get MD5 instance");
            return -1;
        }
        if (packageManager != null) {
            try {
                if (!b(context, str)) {
                    PackageInfo packageInfo = fr.zzdb(context).getPackageInfo(getContext().getPackageName(), 64);
                    if (packageInfo.signatures != null && packageInfo.signatures.length > 0) {
                        return a(b2.digest(packageInfo.signatures[0].toByteArray()));
                    }
                    zzawy().zzazf().log("Could not get signatures");
                    return -1;
                }
            } catch (PackageManager.NameNotFoundException e) {
                zzawy().zzazd().zzj("Package name not found", e);
            }
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final Bundle a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object zzk = zzk(str, bundle.get(str));
                if (zzk == null) {
                    zzawy().zzazf().zzj("Param value can't be null", zzawt().b(str));
                } else {
                    zza(bundle2, str, zzk);
                }
            }
        }
        return bundle2;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:10:?, code lost:
        zzawy().zzazd().log("Failed to load parcelable from buffer");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x002c, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002d, code lost:
        r1.recycle();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0030, code lost:
        throw r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x001a, code lost:
        r5 = move-exception;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x001c */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final <T extends android.os.Parcelable> T a(byte[] r5, android.os.Parcelable.Creator<T> r6) {
        /*
            r4 = this;
            r0 = 0
            if (r5 != 0) goto L_0x0004
            return r0
        L_0x0004:
            android.os.Parcel r1 = android.os.Parcel.obtain()
            int r2 = r5.length     // Catch:{ ek -> 0x001c }
            r3 = 0
            r1.unmarshall(r5, r3, r2)     // Catch:{ ek -> 0x001c }
            r1.setDataPosition(r3)     // Catch:{ ek -> 0x001c }
            java.lang.Object r5 = r6.createFromParcel(r1)     // Catch:{ ek -> 0x001c }
            android.os.Parcelable r5 = (android.os.Parcelable) r5     // Catch:{ ek -> 0x001c }
            r1.recycle()
            return r5
        L_0x001a:
            r5 = move-exception
            goto L_0x002d
        L_0x001c:
            com.google.android.gms.internal.iz r5 = r4.zzawy()     // Catch:{ all -> 0x001a }
            com.google.android.gms.internal.jb r5 = r5.zzazd()     // Catch:{ all -> 0x001a }
            java.lang.String r6 = "Failed to load parcelable from buffer"
            r5.log(r6)     // Catch:{ all -> 0x001a }
            r1.recycle()
            return r0
        L_0x002d:
            r1.recycle()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.na.a(byte[], android.os.Parcelable$Creator):android.os.Parcelable");
    }

    /* access modifiers changed from: package-private */
    public final zzcha a(String str, Bundle bundle, String str2, long j) {
        Bundle bundle2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (zzkb(str) == 0) {
            if (bundle != null) {
                bundle2 = new Bundle(bundle);
            } else {
                bundle2 = new Bundle();
            }
            Bundle bundle3 = bundle2;
            bundle3.putString("_o", str2);
            String str3 = str;
            zzcha zzcha = new zzcha(str3, new zzcgx(a(zza(str, bundle3, (List<String>) Collections.singletonList("_o"), false, false))), str2, j);
            return zzcha;
        }
        zzawy().zzazd().zzj("Invalid conditional property event name", zzawt().c(str));
        throw new IllegalArgumentException();
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        return true;
    }

    /* access modifiers changed from: protected */
    public final void a_() {
        zzve();
        SecureRandom secureRandom = new SecureRandom();
        long nextLong = secureRandom.nextLong();
        if (nextLong == 0) {
            nextLong = secureRandom.nextLong();
            if (nextLong == 0) {
                zzawy().zzazf().log("Utils falling back to Random for random id");
            }
        }
        this.c.set(nextLong);
    }

    /* access modifiers changed from: package-private */
    public final SecureRandom c() {
        zzve();
        if (this.f3413b == null) {
            this.f3413b = new SecureRandom();
        }
        return this.f3413b;
    }

    /* access modifiers changed from: package-private */
    public final boolean d(String str) {
        return "1".equals(zzawv().a(str, "measurement.upload.blacklist_internal"));
    }

    /* access modifiers changed from: package-private */
    public final boolean e(String str) {
        return "1".equals(zzawv().a(str, "measurement.upload.blacklist_public"));
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public final Bundle zza(String str, Bundle bundle, List<String> list, boolean z, boolean z2) {
        int i;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = new Bundle(bundle);
        int i2 = 0;
        for (String str2 : bundle.keySet()) {
            if (list == null || !list.contains(str2)) {
                i = z ? g(str2) : 0;
                if (i == 0) {
                    i = h(str2);
                }
            } else {
                i = 0;
            }
            if (i == 0) {
                int a2 = a(str2, bundle.get(str2), z2);
                if (a2 == 0 || "_ev".equals(str2)) {
                    if (a(str2)) {
                        i2++;
                        if (i2 > 25) {
                            StringBuilder sb = new StringBuilder(48);
                            sb.append("Event can't contain more then 25 params");
                            zzawy().zzazd().zze(sb.toString(), zzawt().a(str), zzawt().a(bundle));
                            a(bundle2, 5);
                        }
                    }
                } else if (a(bundle2, a2)) {
                    bundle2.putString("_ev", zza(str2, 40, true));
                    a(bundle2, bundle.get(str2));
                }
            } else if (a(bundle2, i)) {
                bundle2.putString("_ev", zza(str2, 40, true));
                if (i == 3) {
                    a(bundle2, (Object) str2);
                }
            }
            bundle2.remove(str2);
        }
        return bundle2;
    }

    public final void zza(int i, String str, String str2, int i2) {
        zza((String) null, i, str, str2, i2);
    }

    public final void zza(Bundle bundle, String str, Object obj) {
        if (bundle != null) {
            if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof String) {
                bundle.putString(str, String.valueOf(obj));
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else {
                if (str != null) {
                    zzawy().zzazg().zze("Not putting event parameter. Invalid value type. name, type", zzawt().b(str), obj != null ? obj.getClass().getSimpleName() : null);
                }
            }
        }
    }

    public final void zza(nm nmVar, Object obj) {
        ap.checkNotNull(obj);
        nmVar.zzgcc = null;
        nmVar.zzjll = null;
        nmVar.zzjjl = null;
        if (obj instanceof String) {
            nmVar.zzgcc = (String) obj;
        } else if (obj instanceof Long) {
            nmVar.zzjll = (Long) obj;
        } else if (obj instanceof Double) {
            nmVar.zzjjl = (Double) obj;
        } else {
            zzawy().zzazd().zzj("Ignoring invalid (type) event param value", obj);
        }
    }

    public final void zza(nq nqVar, Object obj) {
        ap.checkNotNull(obj);
        nqVar.zzgcc = null;
        nqVar.zzjll = null;
        nqVar.zzjjl = null;
        if (obj instanceof String) {
            nqVar.zzgcc = (String) obj;
        } else if (obj instanceof Long) {
            nqVar.zzjll = (Long) obj;
        } else if (obj instanceof Double) {
            nqVar.zzjjl = (Double) obj;
        } else {
            zzawy().zzazd().zzj("Ignoring invalid (type) user attribute value", obj);
        }
    }

    public final void zza(String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        a(bundle, i);
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", (long) i2);
        }
        this.e.zzawm().zzc("auto", "_err", bundle);
    }

    public final /* bridge */ /* synthetic */ void zzawi() {
        super.zzawi();
    }

    public final /* bridge */ /* synthetic */ void zzawj() {
        super.zzawj();
    }

    public final /* bridge */ /* synthetic */ hu zzawk() {
        return super.zzawk();
    }

    public final /* bridge */ /* synthetic */ ia zzawl() {
        return super.zzawl();
    }

    public final /* bridge */ /* synthetic */ ky zzawm() {
        return super.zzawm();
    }

    public final /* bridge */ /* synthetic */ iu zzawn() {
        return super.zzawn();
    }

    public final /* bridge */ /* synthetic */ ij zzawo() {
        return super.zzawo();
    }

    public final /* bridge */ /* synthetic */ lr zzawp() {
        return super.zzawp();
    }

    public final /* bridge */ /* synthetic */ ln zzawq() {
        return super.zzawq();
    }

    public final /* bridge */ /* synthetic */ iv zzawr() {
        return super.zzawr();
    }

    public final /* bridge */ /* synthetic */ id zzaws() {
        return super.zzaws();
    }

    public final /* bridge */ /* synthetic */ ix zzawt() {
        return super.zzawt();
    }

    public final /* bridge */ /* synthetic */ na zzawu() {
        return super.zzawu();
    }

    public final /* bridge */ /* synthetic */ jr zzawv() {
        return super.zzawv();
    }

    public final /* bridge */ /* synthetic */ mq zzaww() {
        return super.zzaww();
    }

    public final /* bridge */ /* synthetic */ js zzawx() {
        return super.zzawx();
    }

    public final /* bridge */ /* synthetic */ iz zzawy() {
        return super.zzawy();
    }

    public final /* bridge */ /* synthetic */ jj zzawz() {
        return super.zzawz();
    }

    public final /* bridge */ /* synthetic */ ic zzaxa() {
        return super.zzaxa();
    }

    public final byte[] zzb(nn nnVar) {
        try {
            byte[] bArr = new byte[nnVar.zzho()];
            sp zzo = sp.zzo(bArr, 0, bArr.length);
            nnVar.zza(zzo);
            zzo.zzcwt();
            return bArr;
        } catch (IOException e) {
            zzawy().zzazd().zzj("Data loss. Failed to serialize batch", e);
            return null;
        }
    }

    public final long zzbay() {
        int i = (this.c.get() > 0 ? 1 : (this.c.get() == 0 ? 0 : -1));
        synchronized (this.c) {
            if (i == 0) {
                long nextLong = new Random(System.nanoTime() ^ zzws().currentTimeMillis()).nextLong();
                int i2 = this.d + 1;
                this.d = i2;
                long j = nextLong + ((long) i2);
                return j;
            }
            this.c.compareAndSet(-1, 1);
            long andIncrement = this.c.getAndIncrement();
            return andIncrement;
        }
    }

    public final boolean zzeb(String str) {
        zzve();
        if (fr.zzdb(getContext()).checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        zzawy().zzazi().zzj("Permission not granted", str);
        return false;
    }

    public final boolean zzf(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(zzws().currentTimeMillis() - j) > j2;
    }

    public final Object zzk(String str, Object obj) {
        boolean z;
        int i = 256;
        if ("_ev".equals(str)) {
            z = true;
        } else {
            if (!zzki(str)) {
                i = 100;
            }
            z = false;
        }
        return a(i, obj, z);
    }

    public final int zzka(String str) {
        if (!a(NotificationCompat.CATEGORY_EVENT, str)) {
            return 2;
        }
        if (!a(NotificationCompat.CATEGORY_EVENT, AppMeasurement.a.zziwg, str)) {
            return 13;
        }
        return !a(NotificationCompat.CATEGORY_EVENT, 40, str) ? 2 : 0;
    }

    public final int zzkb(String str) {
        if (!b(NotificationCompat.CATEGORY_EVENT, str)) {
            return 2;
        }
        if (!a(NotificationCompat.CATEGORY_EVENT, AppMeasurement.a.zziwg, str)) {
            return 13;
        }
        return !a(NotificationCompat.CATEGORY_EVENT, 40, str) ? 2 : 0;
    }

    public final int zzkc(String str) {
        if (!a("user property", str)) {
            return 6;
        }
        if (!a("user property", AppMeasurement.e.zziwn, str)) {
            return 15;
        }
        return !a("user property", 24, str) ? 6 : 0;
    }

    public final int zzkd(String str) {
        if (!b("user property", str)) {
            return 6;
        }
        if (!a("user property", AppMeasurement.e.zziwn, str)) {
            return 15;
        }
        return !a("user property", 24, str) ? 6 : 0;
    }

    public final boolean zzkg(String str) {
        if (TextUtils.isEmpty(str)) {
            zzawy().zzazd().log("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            return false;
        }
        ap.checkNotNull(str);
        if (str.matches("^1:\\d+:android:[a-f0-9]+$")) {
            return true;
        }
        zzawy().zzazd().zzj("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", str);
        return false;
    }

    public final boolean zzkj(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return zzaxa().zzayd().equals(str);
    }

    public final int zzl(String str, Object obj) {
        return "_ldl".equals(str) ? a("user property referrer", str, i(str), obj, false) : a("user property", str, i(str), obj, false) ? 0 : 7;
    }

    public final Object zzm(String str, Object obj) {
        return a(i(str), obj, "_ldl".equals(str));
    }

    public final Bundle zzp(Uri uri) {
        String str;
        String str2;
        String str3;
        String str4;
        if (uri == null) {
            return null;
        }
        try {
            if (uri.isHierarchical()) {
                str4 = uri.getQueryParameter("utm_campaign");
                str3 = uri.getQueryParameter("utm_source");
                str2 = uri.getQueryParameter("utm_medium");
                str = uri.getQueryParameter("gclid");
            } else {
                str4 = null;
                str3 = null;
                str2 = null;
                str = null;
            }
            if (TextUtils.isEmpty(str4) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str)) {
                return null;
            }
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(str4)) {
                bundle.putString(FirebaseAnalytics.b.CAMPAIGN, str4);
            }
            if (!TextUtils.isEmpty(str3)) {
                bundle.putString("source", str3);
            }
            if (!TextUtils.isEmpty(str2)) {
                bundle.putString("medium", str2);
            }
            if (!TextUtils.isEmpty(str)) {
                bundle.putString("gclid", str);
            }
            String queryParameter = uri.getQueryParameter("utm_term");
            if (!TextUtils.isEmpty(queryParameter)) {
                bundle.putString(FirebaseAnalytics.b.TERM, queryParameter);
            }
            String queryParameter2 = uri.getQueryParameter("utm_content");
            if (!TextUtils.isEmpty(queryParameter2)) {
                bundle.putString(FirebaseAnalytics.b.CONTENT, queryParameter2);
            }
            String queryParameter3 = uri.getQueryParameter(FirebaseAnalytics.b.ACLID);
            if (!TextUtils.isEmpty(queryParameter3)) {
                bundle.putString(FirebaseAnalytics.b.ACLID, queryParameter3);
            }
            String queryParameter4 = uri.getQueryParameter(FirebaseAnalytics.b.CP1);
            if (!TextUtils.isEmpty(queryParameter4)) {
                bundle.putString(FirebaseAnalytics.b.CP1, queryParameter4);
            }
            String queryParameter5 = uri.getQueryParameter("anid");
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString("anid", queryParameter5);
            }
            return bundle;
        } catch (UnsupportedOperationException e) {
            zzawy().zzazf().zzj("Install referrer url isn't a hierarchical URI", e);
            return null;
        }
    }

    public final byte[] zzq(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            zzawy().zzazd().zzj("Failed to gzip content", e);
            throw e;
        }
    }

    public final byte[] zzr(byte[] bArr) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr2, 0, read);
                } else {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            zzawy().zzazd().zzj("Failed to ungzip content", e);
            throw e;
        }
    }

    public final /* bridge */ /* synthetic */ void zzve() {
        super.zzve();
    }

    public final /* bridge */ /* synthetic */ d zzws() {
        return super.zzws();
    }
}
