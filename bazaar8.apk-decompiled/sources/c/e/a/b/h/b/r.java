package c.e.a.b.h.b;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzag;
import com.google.android.gms.measurement.internal.zzaj;
import java.util.concurrent.atomic.AtomicReference;

public final class r extends C0964va {

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicReference<String[]> f11018c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    public static final AtomicReference<String[]> f11019d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    public static final AtomicReference<String[]> f11020e = new AtomicReference<>();

    public r(Y y) {
        super(y);
    }

    public final String a(String str) {
        if (str == null) {
            return null;
        }
        if (!t()) {
            return str;
        }
        return a(str, C0973ya.f11108b, C0973ya.f11107a, f11018c);
    }

    public final String b(String str) {
        if (str == null) {
            return null;
        }
        if (!t()) {
            return str;
        }
        return a(str, C0976za.f11115b, C0976za.f11114a, f11019d);
    }

    public final String c(String str) {
        if (str == null) {
            return null;
        }
        if (!t()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return a(str, Aa.f10575b, Aa.f10574a, f11020e);
        }
        return "experiment_id" + "(" + str + ")";
    }

    public final boolean r() {
        return false;
    }

    public final boolean t() {
        a();
        return this.f11077a.p() && this.f11077a.e().a(3);
    }

    public static String a(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        c.e.a.b.d.d.r.a(strArr);
        c.e.a.b.d.d.r.a(strArr2);
        c.e.a.b.d.d.r.a(atomicReference);
        c.e.a.b.d.d.r.a(strArr.length == strArr2.length);
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (cc.e(str, strArr[i2])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    if (strArr3 == null) {
                        strArr3 = new String[strArr2.length];
                        atomicReference.set(strArr3);
                    }
                    if (strArr3[i2] == null) {
                        strArr3[i2] = strArr2[i2] + "(" + strArr[i2] + ")";
                    }
                    str2 = strArr3[i2];
                }
                return str2;
            }
        }
        return str;
    }

    public final String a(zzaj zzaj) {
        if (zzaj == null) {
            return null;
        }
        if (!t()) {
            return zzaj.toString();
        }
        return "origin=" + zzaj.f13234c + ",name=" + a(zzaj.f13232a) + ",params=" + a(zzaj.f13233b);
    }

    public final String a(C0916f fVar) {
        if (fVar == null) {
            return null;
        }
        if (!t()) {
            return fVar.toString();
        }
        return "Event{appId='" + fVar.f10876a + "', name='" + a(fVar.f10877b) + "', params=" + a(fVar.f10881f) + "}";
    }

    public final String a(zzag zzag) {
        if (zzag == null) {
            return null;
        }
        if (!t()) {
            return zzag.toString();
        }
        return a(zzag.x());
    }

    public final String a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!t()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        for (String str : bundle.keySet()) {
            if (sb.length() != 0) {
                sb.append(", ");
            } else {
                sb.append("Bundle[{");
            }
            sb.append(b(str));
            sb.append("=");
            sb.append(bundle.get(str));
        }
        sb.append("}]");
        return sb.toString();
    }
}
