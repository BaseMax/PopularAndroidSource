package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.d;
import com.google.android.gms.measurement.AppMeasurement;

public final class iz extends kw {

    /* renamed from: a  reason: collision with root package name */
    private final String f3228a = ip.zzjad.get();

    /* renamed from: b  reason: collision with root package name */
    private final char f3229b;
    private final long c = 11910;
    private final jb d;
    private final jb f;
    private final jb g;
    private final jb h;
    private final jb i;
    private final jb j;
    private final jb k;
    private final jb l;
    private final jb m;

    iz(jx jxVar) {
        super(jxVar);
        this.f3229b = zzaxa().zzyp() ? 'C' : 'c';
        this.d = new jb(this, 6, false, false);
        this.f = new jb(this, 6, true, false);
        this.g = new jb(this, 6, false, true);
        this.h = new jb(this, 5, false, false);
        this.i = new jb(this, 5, true, false);
        this.j = new jb(this, 5, false, true);
        this.k = new jb(this, 4, false, false);
        this.l = new jb(this, 3, false, false);
        this.m = new jb(this, 2, false, false);
    }

    protected static Object a(String str) {
        if (str == null) {
            return null;
        }
        return new jc(str);
    }

    private static String a(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = str2;
        }
        String a2 = a(z, obj);
        String a3 = a(z, obj2);
        String a4 = a(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        if (!TextUtils.isEmpty(a2)) {
            sb.append(str2);
            sb.append(a2);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(a3)) {
            sb.append(str2);
            sb.append(a3);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(a4)) {
            sb.append(str2);
            sb.append(a4);
        }
        return sb.toString();
    }

    private static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    /* access modifiers changed from: protected */
    public final void a(int i2, String str) {
        Log.println(i2, this.f3228a, str);
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        return false;
    }

    /* access modifiers changed from: protected */
    public final boolean a(int i2) {
        return Log.isLoggable(this.f3228a, i2);
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
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

    public final jb zzazd() {
        return this.d;
    }

    public final jb zzaze() {
        return this.f;
    }

    public final jb zzazf() {
        return this.h;
    }

    public final jb zzazg() {
        return this.j;
    }

    public final jb zzazh() {
        return this.k;
    }

    public final jb zzazi() {
        return this.l;
    }

    public final jb zzazj() {
        return this.m;
    }

    public final String zzazk() {
        Pair<String, Long> zzaad = zzawz().zzjcq.zzaad();
        if (zzaad == null || zzaad == jj.f3245a) {
            return null;
        }
        String valueOf = String.valueOf(zzaad.second);
        String str = (String) zzaad.first;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length());
        sb.append(valueOf);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    public final /* bridge */ /* synthetic */ void zzve() {
        super.zzve();
    }

    public final /* bridge */ /* synthetic */ d zzws() {
        return super.zzws();
    }

    /* access modifiers changed from: protected */
    public final void a(int i2, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        String str2;
        if (!z && a(i2)) {
            a(i2, a(false, str, obj, obj2, obj3));
        }
        if (!z2 && i2 >= 5) {
            ap.checkNotNull(str);
            js jsVar = this.e.f3268a;
            if (jsVar == null) {
                str2 = "Scheduler not set. Not logging error/warn";
            } else if (!jsVar.j()) {
                str2 = "Scheduler not initialized. Not logging error/warn";
            } else {
                if (i2 < 0) {
                    i2 = 0;
                }
                if (i2 >= 9) {
                    i2 = 8;
                }
                char charAt = "01VDIWEA?".charAt(i2);
                char c2 = this.f3229b;
                long j2 = this.c;
                String a2 = a(true, str, obj, obj2, obj3);
                StringBuilder sb = new StringBuilder(ExifInterface.GPS_MEASUREMENT_2D.length() + 23 + String.valueOf(a2).length());
                sb.append(ExifInterface.GPS_MEASUREMENT_2D);
                sb.append(charAt);
                sb.append(c2);
                sb.append(j2);
                sb.append(":");
                sb.append(a2);
                String sb2 = sb.toString();
                if (sb2.length() > 1024) {
                    sb2 = str.substring(0, 1024);
                }
                jsVar.zzg(new ja(this, sb2));
            }
            a(6, str2);
        }
    }

    private static String a(boolean z, Object obj) {
        String str = "";
        if (obj == null) {
            return str;
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf((long) ((Integer) obj).intValue());
        }
        int i2 = 0;
        if (obj instanceof Long) {
            if (!z) {
                return String.valueOf(obj);
            }
            Long l2 = (Long) obj;
            if (Math.abs(l2.longValue()) < 100) {
                return String.valueOf(obj);
            }
            if (String.valueOf(obj).charAt(0) == '-') {
                str = "-";
            }
            String valueOf = String.valueOf(Math.abs(l2.longValue()));
            long round = Math.round(Math.pow(10.0d, (double) (valueOf.length() - 1)));
            long round2 = Math.round(Math.pow(10.0d, (double) valueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(str.length() + 43 + str.length());
            sb.append(str);
            sb.append(round);
            sb.append("...");
            sb.append(str);
            sb.append(round2);
            return sb.toString();
        } else if (obj instanceof Boolean) {
            return String.valueOf(obj);
        } else {
            if (obj instanceof Throwable) {
                Throwable th = (Throwable) obj;
                StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
                String b2 = b(AppMeasurement.class.getCanonicalName());
                String b3 = b(jx.class.getCanonicalName());
                StackTraceElement[] stackTrace = th.getStackTrace();
                int length = stackTrace.length;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTrace[i2];
                    if (!stackTraceElement.isNativeMethod()) {
                        String className = stackTraceElement.getClassName();
                        if (className != null) {
                            String b4 = b(className);
                            if (b4.equals(b2) || b4.equals(b3)) {
                                sb2.append(": ");
                                sb2.append(stackTraceElement);
                            }
                        } else {
                            continue;
                        }
                    }
                    i2++;
                }
                return sb2.toString();
            } else if (obj instanceof jc) {
                return ((jc) obj).f3236a;
            } else {
                return z ? "-" : String.valueOf(obj);
            }
        }
    }
}
