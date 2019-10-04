package com.yandex.metrica.impl;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.yandex.metrica.impl.av;
import com.yandex.metrica.impl.ob.j;
import com.yandex.metrica.impl.ob.k;
import com.yandex.metrica.impl.ob.l;
import com.yandex.metrica.impl.ob.ma;
import com.yandex.metrica.impl.ob.n;
import com.yandex.metrica.impl.ob.r;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

public class h {
    private static final Object j = new Object();
    private static volatile h k;

    /* renamed from: a  reason: collision with root package name */
    public final String f5822a = io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE;

    /* renamed from: b  reason: collision with root package name */
    public final String f5823b;
    public final String c;
    public final String d;
    public final int e;
    public final a f;
    public final String g;
    public final String h;
    public final List<String> i;
    private String l;
    /* access modifiers changed from: private */
    public ma m;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f5825a;

        /* renamed from: b  reason: collision with root package name */
        public final int f5826b;
        public final int c;
        public final float d;

        a(Point point, int i, float f) {
            this.f5825a = Math.max(point.x, point.y);
            this.f5826b = Math.min(point.x, point.y);
            this.c = i;
            this.d = f;
        }
    }

    public static h a(Context context) {
        if (k == null) {
            synchronized (j) {
                if (k == null) {
                    k = new h(context.getApplicationContext());
                }
            }
        }
        return k;
    }

    private h(Context context) {
        com.yandex.metrica.impl.ob.h.a().a(this, r.class, l.a(new k<r>() {
            public void a(r rVar) {
                synchronized (this) {
                    ma unused = h.this.m = rVar.f6499b;
                }
            }
        }).a());
        this.l = a() ? c(context) : null;
        com.yandex.metrica.impl.ob.h.a().b((j) new n(this.l));
        this.f5823b = Build.MANUFACTURER;
        this.c = Build.MODEL;
        this.d = Build.VERSION.RELEASE;
        this.e = Build.VERSION.SDK_INT;
        this.f = new a(av.b(context), context.getResources().getDisplayMetrics().densityDpi, context.getResources().getDisplayMetrics().density);
        this.g = av.a(context).name().toLowerCase(Locale.US);
        this.h = String.valueOf(av.b.c());
        this.i = Collections.unmodifiableList(new ArrayList<String>() {
            {
                if (av.b.a()) {
                    add("Superuser.apk");
                }
                if (av.b.b()) {
                    add("su.so");
                }
            }
        });
    }

    private static String c(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    public String b(Context context) {
        if (TextUtils.isEmpty(this.l) && a()) {
            this.l = c(context);
        }
        return this.l;
    }

    private synchronized boolean a() {
        return this.m != null && this.m.m.e;
    }
}
