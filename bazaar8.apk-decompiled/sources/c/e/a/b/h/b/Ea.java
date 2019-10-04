package c.e.a.b.h.b;

import android.content.Context;
import android.os.Bundle;
import c.e.a.b.d.d.r;
import com.google.android.gms.internal.measurement.zzy;

public final class Ea {

    /* renamed from: a  reason: collision with root package name */
    public final Context f10601a;

    /* renamed from: b  reason: collision with root package name */
    public String f10602b;

    /* renamed from: c  reason: collision with root package name */
    public String f10603c;

    /* renamed from: d  reason: collision with root package name */
    public String f10604d;

    /* renamed from: e  reason: collision with root package name */
    public Boolean f10605e;

    /* renamed from: f  reason: collision with root package name */
    public long f10606f;

    /* renamed from: g  reason: collision with root package name */
    public zzy f10607g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f10608h = true;

    public Ea(Context context, zzy zzy) {
        r.a(context);
        Context applicationContext = context.getApplicationContext();
        r.a(applicationContext);
        this.f10601a = applicationContext;
        if (zzy != null) {
            this.f10607g = zzy;
            this.f10602b = zzy.f13215f;
            this.f10603c = zzy.f13214e;
            this.f10604d = zzy.f13213d;
            this.f10608h = zzy.f13212c;
            this.f10606f = zzy.f13211b;
            Bundle bundle = zzy.f13216g;
            if (bundle != null) {
                this.f10605e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
