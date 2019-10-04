package com.google.android.gms.internal;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;

public final class ny {
    public static final a<oc> API = new a<>("SignIn.API", zzebg, f3414a);

    /* renamed from: a  reason: collision with root package name */
    private static a.g<ok> f3414a = new a.g<>();

    /* renamed from: b  reason: collision with root package name */
    private static a.g<ok> f3415b = new a.g<>();
    private static a.b<ok, Object> c = new oa();
    private static Scope d = new Scope("profile");
    private static Scope e = new Scope(NotificationCompat.CATEGORY_EMAIL);
    private static a<Object> f = new a<>("SignIn.INTERNAL_API", c, f3415b);
    public static final a.b<ok, oc> zzebg = new nz();
}
