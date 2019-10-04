package c.e.a.b.h.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import c.e.a.b.d.d;
import c.e.a.b.d.d.r;
import c.e.a.b.d.e;
import c.e.a.b.d.g.f;
import c.e.a.b.g.f.fd;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.google.android.gms.measurement.internal.zzag;
import com.google.android.gms.measurement.internal.zzaj;
import com.google.android.gms.measurement.internal.zzga;
import com.google.android.gms.measurement.internal.zzr;
import e.a.a.a.a.d.c;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;

public final class cc extends C0964va {

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f10845c = {"firebase_", "google_", "ga_"};

    /* renamed from: d  reason: collision with root package name */
    public SecureRandom f10846d;

    /* renamed from: e  reason: collision with root package name */
    public final AtomicLong f10847e = new AtomicLong(0);

    /* renamed from: f  reason: collision with root package name */
    public int f10848f;

    /* renamed from: g  reason: collision with root package name */
    public Integer f10849g = null;

    public cc(Y y) {
        super(y);
    }

    public static boolean a(String str) {
        r.b(str);
        if (str.charAt(0) != '_' || str.equals("_ep")) {
            return true;
        }
        return false;
    }

    public static int e(String str) {
        if ("_ldl".equals(str)) {
            return 2048;
        }
        return "_id".equals(str) ? 256 : 36;
    }

    public static boolean g(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith(c.ROLL_OVER_FILE_NAME_SEPARATOR);
    }

    public static MessageDigest t() {
        int i2 = 0;
        while (i2 < 2) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                if (instance != null) {
                    return instance;
                }
                i2++;
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return null;
    }

    public final boolean b(String str, String str2) {
        if (str2 == null) {
            e().t().a("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            e().t().a("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                e().t().a("Name must start with a letter. Type, name", str, str2);
                return false;
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                    charCount += Character.charCount(codePointAt2);
                } else {
                    e().t().a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
            }
            return true;
        }
    }

    public final boolean c(String str, String str2) {
        if (str2 == null) {
            e().t().a("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            e().t().a("Name is required and can't be empty. Type", str);
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
                        e().t().a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                        return false;
                    }
                }
                return true;
            }
            e().t().a("Name must start with a letter or _ (underscore). Type, name", str, str2);
            return false;
        }
    }

    public final boolean d(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (!d(str)) {
                if (this.f11077a.p()) {
                    e().t().a("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", C0957t.a(str));
                }
                return false;
            }
        } else if (TextUtils.isEmpty(str2)) {
            if (this.f11077a.p()) {
                e().t().a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            }
            return false;
        } else if (!d(str2)) {
            e().t().a("Invalid admob_app_id. Analytics disabled.", C0957t.a(str2));
            return false;
        }
        return true;
    }

    public final boolean f(String str) {
        l();
        if (c.e.a.b.d.h.c.a(b()).a(str) == 0) {
            return true;
        }
        e().A().a("Permission not granted", str);
        return false;
    }

    public final boolean h(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String u = i().u();
        a();
        return u.equals(str);
    }

    public final boolean r() {
        return true;
    }

    public final void s() {
        l();
        SecureRandom secureRandom = new SecureRandom();
        long nextLong = secureRandom.nextLong();
        if (nextLong == 0) {
            nextLong = secureRandom.nextLong();
            if (nextLong == 0) {
                e().w().a("Utils falling back to Random for random id");
            }
        }
        this.f10847e.set(nextLong);
    }

    public final long u() {
        long andIncrement;
        long j2;
        if (this.f10847e.get() == 0) {
            synchronized (this.f10847e) {
                long nextLong = new Random(System.nanoTime() ^ c().c()).nextLong();
                int i2 = this.f10848f + 1;
                this.f10848f = i2;
                j2 = nextLong + ((long) i2);
            }
            return j2;
        }
        synchronized (this.f10847e) {
            this.f10847e.compareAndSet(-1, 1);
            andIncrement = this.f10847e.getAndIncrement();
        }
        return andIncrement;
    }

    public final SecureRandom v() {
        l();
        if (this.f10846d == null) {
            this.f10846d = new SecureRandom();
        }
        return this.f10846d;
    }

    public final int w() {
        if (this.f10849g == null) {
            this.f10849g = Integer.valueOf(d.a().a(b()) / AnswersRetryFilesSender.BACKOFF_MS);
        }
        return this.f10849g.intValue();
    }

    public final String x() {
        byte[] bArr = new byte[16];
        v().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new Object[]{new BigInteger(1, bArr)});
    }

    public static boolean e(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null) {
            return false;
        }
        return str.equals(str2);
    }

    public final Bundle a(Uri uri) {
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
                bundle.putString("campaign", str4);
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
                bundle.putString("term", queryParameter);
            }
            String queryParameter2 = uri.getQueryParameter("utm_content");
            if (!TextUtils.isEmpty(queryParameter2)) {
                bundle.putString("content", queryParameter2);
            }
            String queryParameter3 = uri.getQueryParameter("aclid");
            if (!TextUtils.isEmpty(queryParameter3)) {
                bundle.putString("aclid", queryParameter3);
            }
            String queryParameter4 = uri.getQueryParameter("cp1");
            if (!TextUtils.isEmpty(queryParameter4)) {
                bundle.putString("cp1", queryParameter4);
            }
            String queryParameter5 = uri.getQueryParameter("anid");
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString("anid", queryParameter5);
            }
            return bundle;
        } catch (UnsupportedOperationException e2) {
            e().w().a("Install referrer url isn't a hierarchical URI", e2);
            return null;
        }
    }

    public final int b(String str) {
        if (!c("event", str)) {
            return 2;
        }
        if (!a("event", C0973ya.f11107a, str)) {
            return 13;
        }
        if (!a("event", 40, str)) {
            return 2;
        }
        return 0;
    }

    public static boolean d(String str) {
        r.a(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    public final int c(String str) {
        if (!c("user property", str)) {
            return 6;
        }
        if (!a("user property", Aa.f10574a, str)) {
            return 15;
        }
        if (!a("user property", 24, str)) {
            return 6;
        }
        return 0;
    }

    public final int b(String str, Object obj) {
        boolean z;
        if ("_ldl".equals(str)) {
            z = a("user property referrer", str, e(str), obj, false);
        } else {
            z = a("user property", str, e(str), obj, false);
        }
        return z ? 0 : 7;
    }

    public final Object c(String str, Object obj) {
        if ("_ldl".equals(str)) {
            return a(e(str), obj, true);
        }
        return a(e(str), obj, false);
    }

    public final long b(Context context, String str) {
        l();
        r.a(context);
        r.b(str);
        PackageManager packageManager = context.getPackageManager();
        MessageDigest t = t();
        if (t == null) {
            e().t().a("Could not get MD5 instance");
            return -1;
        }
        if (packageManager != null) {
            try {
                if (!c(context, str)) {
                    PackageInfo b2 = c.e.a.b.d.h.c.a(context).b(b().getPackageName(), 64);
                    if (b2.signatures != null && b2.signatures.length > 0) {
                        return a(t.digest(b2.signatures[0].toByteArray()));
                    }
                    e().w().a("Could not get signatures");
                    return -1;
                }
            } catch (PackageManager.NameNotFoundException e2) {
                e().t().a("Package name not found", e2);
            }
        }
        return 0;
    }

    public final boolean c(Context context, String str) {
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo b2 = c.e.a.b.d.h.c.a(context).b(str, 64);
            if (!(b2 == null || b2.signatures == null || b2.signatures.length <= 0)) {
                return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(b2.signatures[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
            }
        } catch (CertificateException e2) {
            e().t().a("Error obtaining certificate", e2);
        } catch (PackageManager.NameNotFoundException e3) {
            e().t().a("Package name not found", e3);
        }
        return true;
    }

    public static boolean a(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        return "android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra);
    }

    public static Bundle b(Bundle bundle) {
        if (bundle == null) {
            return new Bundle();
        }
        Bundle bundle2 = new Bundle(bundle);
        for (String str : bundle2.keySet()) {
            Object obj = bundle2.get(str);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str, new Bundle((Bundle) obj));
            } else {
                int i2 = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i2 < parcelableArr.length) {
                        if (parcelableArr[i2] instanceof Bundle) {
                            parcelableArr[i2] = new Bundle((Bundle) parcelableArr[i2]);
                        }
                        i2++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i2 < list.size()) {
                        Object obj2 = list.get(i2);
                        if (obj2 instanceof Bundle) {
                            list.set(i2, new Bundle((Bundle) obj2));
                        }
                        i2++;
                    }
                }
            }
        }
        return bundle2;
    }

    public final boolean a(String str, String[] strArr, String str2) {
        boolean z;
        boolean z2;
        if (str2 == null) {
            e().t().a("Name is required and can't be null. Type", str);
            return false;
        }
        r.a(str2);
        String[] strArr2 = f10845c;
        int length = strArr2.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                z = false;
                break;
            } else if (str2.startsWith(strArr2[i2])) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        if (z) {
            e().t().a("Name starts with reserved prefix. Type, name", str, str2);
            return false;
        }
        if (strArr != null) {
            r.a(strArr);
            int length2 = strArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length2) {
                    z2 = false;
                    break;
                } else if (e(str2, strArr[i3])) {
                    z2 = true;
                    break;
                } else {
                    i3++;
                }
            }
            if (z2) {
                e().t().a("Name is reserved. Type, name", str, str2);
                return false;
            }
        }
        return true;
    }

    public final boolean a(String str, int i2, String str2) {
        if (str2 == null) {
            e().t().a("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) <= i2) {
            return true;
        } else {
            e().t().a("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i2), str2);
            return false;
        }
    }

    public static ArrayList<Bundle> b(List<zzr> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(list.size());
        for (zzr next : list) {
            Bundle bundle = new Bundle();
            bundle.putString("app_id", next.f13256a);
            bundle.putString("origin", next.f13257b);
            bundle.putLong("creation_timestamp", next.f13259d);
            bundle.putString(DefaultAppMeasurementEventListenerRegistrar.NAME, next.f13258c.f13237b);
            C0970xa.a(bundle, next.f13258c.x());
            bundle.putBoolean("active", next.f13260e);
            String str = next.f13261f;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            zzaj zzaj = next.f13262g;
            if (zzaj != null) {
                bundle.putString("timed_out_event_name", zzaj.f13232a);
                zzag zzag = next.f13262g.f13233b;
                if (zzag != null) {
                    bundle.putBundle("timed_out_event_params", zzag.x());
                }
            }
            bundle.putLong("trigger_timeout", next.f13263h);
            zzaj zzaj2 = next.f13264i;
            if (zzaj2 != null) {
                bundle.putString("triggered_event_name", zzaj2.f13232a);
                zzag zzag2 = next.f13264i.f13233b;
                if (zzag2 != null) {
                    bundle.putBundle("triggered_event_params", zzag2.x());
                }
            }
            bundle.putLong("triggered_timestamp", next.f13258c.f13238c);
            bundle.putLong("time_to_live", next.f13265j);
            zzaj zzaj3 = next.f13266k;
            if (zzaj3 != null) {
                bundle.putString("expired_event_name", zzaj3.f13232a);
                zzag zzag3 = next.f13266k.f13233b;
                if (zzag3 != null) {
                    bundle.putBundle("expired_event_params", zzag3.x());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    public final boolean a(String str, String str2, int i2, Object obj, boolean z) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
                String valueOf = String.valueOf(obj);
                if (valueOf.codePointCount(0, valueOf.length()) > i2) {
                    e().w().a("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
                    return false;
                }
            } else if ((obj instanceof Bundle) && z) {
                return true;
            } else {
                if ((obj instanceof Parcelable[]) && z) {
                    for (Parcelable parcelable : (Parcelable[]) obj) {
                        if (!(parcelable instanceof Bundle)) {
                            e().w().a("All Parcelable[] elements must be of type Bundle. Value type, name", parcelable.getClass(), str2);
                            return false;
                        }
                    }
                    return true;
                } else if (!(obj instanceof ArrayList) || !z) {
                    return false;
                } else {
                    ArrayList arrayList = (ArrayList) obj;
                    int size = arrayList.size();
                    int i3 = 0;
                    while (i3 < size) {
                        Object obj2 = arrayList.get(i3);
                        i3++;
                        if (!(obj2 instanceof Bundle)) {
                            e().w().a("All ArrayList elements must be of type Bundle. Value type, name", obj2.getClass(), str2);
                            return false;
                        }
                    }
                    return true;
                }
            }
        }
        return true;
    }

    public static boolean a(String str, String str2, String str3, String str4) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            return !str.equals(str2);
        }
        if (isEmpty && isEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        }
        if (isEmpty || !isEmpty2) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
        if (TextUtils.isEmpty(str4)) {
            return false;
        }
        return TextUtils.isEmpty(str3) || !str3.equals(str4);
    }

    public static Object a(int i2, Object obj, boolean z) {
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
                return a(String.valueOf(obj), i2, z);
            }
            return null;
        }
    }

    public static String a(String str, int i2, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i2) {
            return str;
        }
        if (z) {
            return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i2))).concat("...");
        }
        return null;
    }

    public final Object a(String str, Object obj) {
        int i2 = 256;
        if ("_ev".equals(str)) {
            return a(256, obj, true);
        }
        if (!g(str)) {
            i2 = 100;
        }
        return a(i2, obj, false);
    }

    public static Bundle[] a(Object obj) {
        if (obj instanceof Bundle) {
            return new Bundle[]{(Bundle) obj};
        } else if (obj instanceof Parcelable[]) {
            Parcelable[] parcelableArr = (Parcelable[]) obj;
            return (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
        } else if (!(obj instanceof ArrayList)) {
            return null;
        } else {
            ArrayList arrayList = (ArrayList) obj;
            return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0065, code lost:
        if (a("event param", 40, r15) == false) goto L_0x0056;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x007e, code lost:
        if (a("event param", 40, r15) == false) goto L_0x0071;
     */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x006b  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0081  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0087  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00d7  */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0147  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.os.Bundle a(java.lang.String r17, java.lang.String r18, android.os.Bundle r19, java.util.List<java.lang.String> r20, boolean r21, boolean r22) {
        /*
            r16 = this;
            r6 = r16
            r7 = r17
            r8 = r19
            r9 = r20
            r10 = 0
            if (r8 == 0) goto L_0x0185
            android.os.Bundle r11 = new android.os.Bundle
            r11.<init>(r8)
            c.e.a.b.h.b.pc r0 = r16.i()
            c.e.a.b.h.b.k$a<java.lang.Boolean> r1 = c.e.a.b.h.b.C0931k.Ja
            boolean r0 = r0.e(r7, r1)
            if (r0 == 0) goto L_0x0026
            java.util.TreeSet r0 = new java.util.TreeSet
            java.util.Set r1 = r19.keySet()
            r0.<init>(r1)
            goto L_0x002a
        L_0x0026:
            java.util.Set r0 = r19.keySet()
        L_0x002a:
            java.util.Iterator r12 = r0.iterator()
            r14 = 0
        L_0x002f:
            boolean r0 = r12.hasNext()
            if (r0 == 0) goto L_0x0186
            java.lang.Object r0 = r12.next()
            r15 = r0
            java.lang.String r15 = (java.lang.String) r15
            r5 = 40
            r0 = 3
            if (r9 == 0) goto L_0x004a
            boolean r1 = r9.contains(r15)
            if (r1 != 0) goto L_0x0048
            goto L_0x004a
        L_0x0048:
            r1 = 0
            goto L_0x0082
        L_0x004a:
            r1 = 14
            java.lang.String r2 = "event param"
            if (r21 == 0) goto L_0x0068
            boolean r3 = r6.b((java.lang.String) r2, (java.lang.String) r15)
            if (r3 != 0) goto L_0x0058
        L_0x0056:
            r3 = 3
            goto L_0x0069
        L_0x0058:
            boolean r3 = r6.a((java.lang.String) r2, (java.lang.String[]) r10, (java.lang.String) r15)
            if (r3 != 0) goto L_0x0061
            r3 = 14
            goto L_0x0069
        L_0x0061:
            boolean r3 = r6.a((java.lang.String) r2, (int) r5, (java.lang.String) r15)
            if (r3 != 0) goto L_0x0068
            goto L_0x0056
        L_0x0068:
            r3 = 0
        L_0x0069:
            if (r3 != 0) goto L_0x0081
            boolean r3 = r6.c((java.lang.String) r2, (java.lang.String) r15)
            if (r3 != 0) goto L_0x0073
        L_0x0071:
            r1 = 3
            goto L_0x0082
        L_0x0073:
            boolean r3 = r6.a((java.lang.String) r2, (java.lang.String[]) r10, (java.lang.String) r15)
            if (r3 != 0) goto L_0x007a
            goto L_0x0082
        L_0x007a:
            boolean r1 = r6.a((java.lang.String) r2, (int) r5, (java.lang.String) r15)
            if (r1 != 0) goto L_0x0048
            goto L_0x0071
        L_0x0081:
            r1 = r3
        L_0x0082:
            java.lang.String r4 = "_ev"
            r3 = 1
            if (r1 == 0) goto L_0x009e
            boolean r2 = a((android.os.Bundle) r11, (int) r1)
            if (r2 == 0) goto L_0x0099
            java.lang.String r2 = a((java.lang.String) r15, (int) r5, (boolean) r3)
            r11.putString(r4, r2)
            if (r1 != r0) goto L_0x0099
            a((android.os.Bundle) r11, (java.lang.Object) r15)
        L_0x0099:
            r11.remove(r15)
            goto L_0x013e
        L_0x009e:
            java.lang.Object r2 = r8.get(r15)
            r16.l()
            if (r22 == 0) goto L_0x00dd
            boolean r0 = r2 instanceof android.os.Parcelable[]
            if (r0 == 0) goto L_0x00b0
            r0 = r2
            android.os.Parcelable[] r0 = (android.os.Parcelable[]) r0
            int r0 = r0.length
            goto L_0x00bb
        L_0x00b0:
            boolean r0 = r2 instanceof java.util.ArrayList
            if (r0 == 0) goto L_0x00d4
            r0 = r2
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            int r0 = r0.size()
        L_0x00bb:
            r1 = 1000(0x3e8, float:1.401E-42)
            if (r0 <= r1) goto L_0x00d4
            c.e.a.b.h.b.t r1 = r16.e()
            c.e.a.b.h.b.v r1 = r1.w()
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.String r3 = "param"
            java.lang.String r5 = "Parameter array is too long; discarded. Value kind, name, array length"
            r1.a(r5, r3, r15, r0)
            r0 = 0
            goto L_0x00d5
        L_0x00d4:
            r0 = 1
        L_0x00d5:
            if (r0 != 0) goto L_0x00dd
            r0 = 17
            r13 = r4
            r10 = 40
            goto L_0x011e
        L_0x00dd:
            c.e.a.b.h.b.pc r0 = r16.i()
            boolean r0 = r0.i(r7)
            if (r0 == 0) goto L_0x00ed
            boolean r0 = g(r18)
            if (r0 != 0) goto L_0x00f3
        L_0x00ed:
            boolean r0 = g(r15)
            if (r0 == 0) goto L_0x0107
        L_0x00f3:
            r3 = 256(0x100, float:3.59E-43)
            java.lang.String r1 = "param"
            r0 = r16
            r5 = r2
            r2 = r15
            r10 = 1
            r13 = r4
            r4 = r5
            r10 = 40
            r5 = r22
            boolean r0 = r0.a((java.lang.String) r1, (java.lang.String) r2, (int) r3, (java.lang.Object) r4, (boolean) r5)
            goto L_0x0119
        L_0x0107:
            r5 = r2
            r13 = r4
            r10 = 40
            r3 = 100
            java.lang.String r1 = "param"
            r0 = r16
            r2 = r15
            r4 = r5
            r5 = r22
            boolean r0 = r0.a((java.lang.String) r1, (java.lang.String) r2, (int) r3, (java.lang.Object) r4, (boolean) r5)
        L_0x0119:
            if (r0 == 0) goto L_0x011d
            r0 = 0
            goto L_0x011e
        L_0x011d:
            r0 = 4
        L_0x011e:
            if (r0 == 0) goto L_0x0141
            boolean r1 = r13.equals(r15)
            if (r1 != 0) goto L_0x0141
            boolean r0 = a((android.os.Bundle) r11, (int) r0)
            if (r0 == 0) goto L_0x013b
            r0 = 1
            java.lang.String r0 = a((java.lang.String) r15, (int) r10, (boolean) r0)
            r11.putString(r13, r0)
            java.lang.Object r0 = r8.get(r15)
            a((android.os.Bundle) r11, (java.lang.Object) r0)
        L_0x013b:
            r11.remove(r15)
        L_0x013e:
            r10 = 0
            goto L_0x002f
        L_0x0141:
            boolean r0 = a((java.lang.String) r15)
            if (r0 == 0) goto L_0x0182
            int r14 = r14 + 1
            r0 = 25
            if (r14 <= r0) goto L_0x0182
            r0 = 48
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r0)
            java.lang.String r0 = "Event can't contain more than 25 params"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            c.e.a.b.h.b.t r1 = r16.e()
            c.e.a.b.h.b.v r1 = r1.t()
            c.e.a.b.h.b.r r2 = r16.f()
            r3 = r18
            java.lang.String r2 = r2.a((java.lang.String) r3)
            c.e.a.b.h.b.r r4 = r16.f()
            java.lang.String r4 = r4.a((android.os.Bundle) r8)
            r1.a(r0, r2, r4)
            r0 = 5
            a((android.os.Bundle) r11, (int) r0)
            r11.remove(r15)
            goto L_0x013e
        L_0x0182:
            r3 = r18
            goto L_0x013e
        L_0x0185:
            r11 = 0
        L_0x0186:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.cc.a(java.lang.String, java.lang.String, android.os.Bundle, java.util.List, boolean, boolean):android.os.Bundle");
    }

    public static boolean a(Bundle bundle, int i2) {
        if (bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", (long) i2);
        return true;
    }

    public static void a(Bundle bundle, Object obj) {
        r.a(bundle);
        if (obj == null) {
            return;
        }
        if ((obj instanceof String) || (obj instanceof CharSequence)) {
            bundle.putLong("_el", (long) String.valueOf(obj).length());
        }
    }

    public final void a(Bundle bundle, String str, Object obj) {
        if (bundle != null) {
            if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof String) {
                bundle.putString(str, String.valueOf(obj));
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else {
                if (str != null) {
                    e().y().a("Not putting event parameter. Invalid value type. name, type", f().b(str), obj != null ? obj.getClass().getSimpleName() : null);
                }
            }
        }
    }

    public final void a(int i2, String str, String str2, int i3) {
        a((String) null, i2, str, str2, i3);
    }

    public final void a(String str, int i2, String str2, String str3, int i3) {
        Bundle bundle = new Bundle();
        a(bundle, i2);
        if (i().e(str, C0931k.Da)) {
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                bundle.putString(str2, str3);
            }
        } else if (!TextUtils.isEmpty(str2)) {
            bundle.putString(str2, str3);
        }
        if (i2 == 6 || i2 == 7 || i2 == 2) {
            bundle.putLong("_el", (long) i3);
        }
        this.f11077a.a();
        this.f11077a.B().b("auto", "_err", bundle);
    }

    public static long a(byte[] bArr) {
        r.a(bArr);
        int i2 = 0;
        r.b(bArr.length > 0);
        long j2 = 0;
        int length = bArr.length - 1;
        while (length >= 0 && length >= bArr.length - 8) {
            j2 += (((long) bArr[length]) & 255) << i2;
            i2 += 8;
            length--;
        }
        return j2;
    }

    public static boolean a(Context context, boolean z) {
        r.a(context);
        if (Build.VERSION.SDK_INT >= 24) {
            return a(context, "com.google.android.gms.measurement.AppMeasurementJobService");
        }
        return a(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    public static boolean a(Context context, String str) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0);
            if (serviceInfo != null && serviceInfo.enabled) {
                return true;
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public static boolean a(Boolean bool, Boolean bool2) {
        if (bool == null && bool2 == null) {
            return true;
        }
        if (bool == null) {
            return false;
        }
        return bool.equals(bool2);
    }

    public final Bundle a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object a2 = a(str, bundle.get(str));
                if (a2 == null) {
                    e().w().a("Param value can't be null", f().b(str));
                } else {
                    a(bundle2, str, a2);
                }
            }
        }
        return bundle2;
    }

    public final zzaj a(String str, String str2, Bundle bundle, String str3, long j2, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (b(str2) == 0) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            bundle2.putString("_o", str3);
            zzaj zzaj = new zzaj(str2, new zzag(a(a(str, str2, bundle2, f.a("_o"), false, false))), str3, j2);
            return zzaj;
        }
        e().t().a("Invalid conditional property event name", f().c(str2));
        throw new IllegalArgumentException();
    }

    public static byte[] a(Parcelable parcelable) {
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

    public final int a(int i2) {
        return d.a().a(b(), (int) e.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    public static long a(long j2, long j3) {
        return (j2 + (j3 * 60000)) / 86400000;
    }

    public final void a(Bundle bundle, long j2) {
        long j3 = bundle.getLong("_et");
        if (j3 != 0) {
            e().w().a("Params already contained engagement", Long.valueOf(j3));
        }
        bundle.putLong("_et", j2 + j3);
    }

    public final void a(fd fdVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            fdVar.b(bundle);
        } catch (RemoteException e2) {
            this.f11077a.e().w().a("Error returning string value to wrapper", e2);
        }
    }

    public final void a(fd fdVar, long j2) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j2);
        try {
            fdVar.b(bundle);
        } catch (RemoteException e2) {
            this.f11077a.e().w().a("Error returning long value to wrapper", e2);
        }
    }

    public final void a(fd fdVar, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i2);
        try {
            fdVar.b(bundle);
        } catch (RemoteException e2) {
            this.f11077a.e().w().a("Error returning int value to wrapper", e2);
        }
    }

    public final void a(fd fdVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            fdVar.b(bundle);
        } catch (RemoteException e2) {
            this.f11077a.e().w().a("Error returning byte array to wrapper", e2);
        }
    }

    public final void a(fd fdVar, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            fdVar.b(bundle);
        } catch (RemoteException e2) {
            this.f11077a.e().w().a("Error returning boolean value to wrapper", e2);
        }
    }

    public final void a(fd fdVar, Bundle bundle) {
        try {
            fdVar.b(bundle);
        } catch (RemoteException e2) {
            this.f11077a.e().w().a("Error returning bundle value to wrapper", e2);
        }
    }

    public static Bundle a(List<zzga> list) {
        Bundle bundle = new Bundle();
        if (list == null) {
            return bundle;
        }
        for (zzga next : list) {
            String str = next.f13241f;
            if (str != null) {
                bundle.putString(next.f13237b, str);
            } else {
                Long l2 = next.f13239d;
                if (l2 != null) {
                    bundle.putLong(next.f13237b, l2.longValue());
                } else {
                    Double d2 = next.f13243h;
                    if (d2 != null) {
                        bundle.putDouble(next.f13237b, d2.doubleValue());
                    }
                }
            }
        }
        return bundle;
    }

    public final void a(fd fdVar, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            fdVar.b(bundle);
        } catch (RemoteException e2) {
            this.f11077a.e().w().a("Error returning bundle list to wrapper", e2);
        }
    }
}
