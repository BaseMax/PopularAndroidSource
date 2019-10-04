package c.e.a.b.h.b;

import android.os.Bundle;
import android.text.TextUtils;
import c.e.a.b.d.d.r;
import com.google.android.gms.measurement.internal.zzag;
import java.util.Iterator;

/* renamed from: c.e.a.b.h.b.f  reason: case insensitive filesystem */
public final class C0916f {

    /* renamed from: a  reason: collision with root package name */
    public final String f10876a;

    /* renamed from: b  reason: collision with root package name */
    public final String f10877b;

    /* renamed from: c  reason: collision with root package name */
    public final String f10878c;

    /* renamed from: d  reason: collision with root package name */
    public final long f10879d;

    /* renamed from: e  reason: collision with root package name */
    public final long f10880e;

    /* renamed from: f  reason: collision with root package name */
    public final zzag f10881f;

    public C0916f(Y y, String str, String str2, String str3, long j2, long j3, zzag zzag) {
        r.b(str2);
        r.b(str3);
        r.a(zzag);
        this.f10876a = str2;
        this.f10877b = str3;
        this.f10878c = TextUtils.isEmpty(str) ? null : str;
        this.f10879d = j2;
        this.f10880e = j3;
        long j4 = this.f10880e;
        if (j4 != 0 && j4 > this.f10879d) {
            y.e().w().a("Event created with reverse previous/current timestamps. appId, name", C0957t.a(str2), C0957t.a(str3));
        }
        this.f10881f = zzag;
    }

    public final C0916f a(Y y, long j2) {
        C0916f fVar = new C0916f(y, this.f10878c, this.f10876a, this.f10877b, this.f10879d, j2, this.f10881f);
        return fVar;
    }

    public final String toString() {
        String str = this.f10876a;
        String str2 = this.f10877b;
        String valueOf = String.valueOf(this.f10881f);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        sb.append(valueOf);
        sb.append('}');
        return sb.toString();
    }

    public C0916f(Y y, String str, String str2, String str3, long j2, long j3, Bundle bundle) {
        zzag zzag;
        r.b(str2);
        r.b(str3);
        this.f10876a = str2;
        this.f10877b = str3;
        this.f10878c = TextUtils.isEmpty(str) ? null : str;
        this.f10879d = j2;
        this.f10880e = j3;
        long j4 = this.f10880e;
        if (j4 != 0 && j4 > this.f10879d) {
            y.e().w().a("Event created with reverse previous/current timestamps. appId", C0957t.a(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzag = new zzag(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String str4 = (String) it.next();
                if (str4 == null) {
                    y.e().t().a("Param name can't be null");
                    it.remove();
                } else {
                    Object a2 = y.i().a(str4, bundle2.get(str4));
                    if (a2 == null) {
                        y.e().w().a("Param value can't be null", y.h().b(str4));
                        it.remove();
                    } else {
                        y.i().a(bundle2, str4, a2);
                    }
                }
            }
            zzag = new zzag(bundle2);
        }
        this.f10881f = zzag;
    }
}
