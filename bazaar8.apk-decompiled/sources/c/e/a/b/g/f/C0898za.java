package c.e.a.b.g.f;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: c.e.a.b.g.f.za  reason: case insensitive filesystem */
public final class C0898za implements C0843la {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, C0898za> f10566a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public final SharedPreferences f10567b;

    /* renamed from: c  reason: collision with root package name */
    public final SharedPreferences.OnSharedPreferenceChangeListener f10568c = new Aa(this);

    /* renamed from: d  reason: collision with root package name */
    public final Object f10569d = new Object();

    /* renamed from: e  reason: collision with root package name */
    public volatile Map<String, ?> f10570e;

    /* renamed from: f  reason: collision with root package name */
    public final List<C0839ka> f10571f = new ArrayList();

    public C0898za(SharedPreferences sharedPreferences) {
        this.f10567b = sharedPreferences;
        this.f10567b.registerOnSharedPreferenceChangeListener(this.f10568c);
    }

    public static C0898za a(Context context, String str) {
        C0898za zaVar;
        SharedPreferences sharedPreferences;
        if (!((!C0823ga.a() || str.startsWith("direct_boot:")) ? true : C0823ga.a(context))) {
            return null;
        }
        synchronized (C0898za.class) {
            zaVar = f10566a.get(str);
            if (zaVar == null) {
                if (str.startsWith("direct_boot:")) {
                    if (C0823ga.a()) {
                        context = context.createDeviceProtectedStorageContext();
                    }
                    sharedPreferences = context.getSharedPreferences(str.substring(12), 0);
                } else {
                    sharedPreferences = context.getSharedPreferences(str, 0);
                }
                zaVar = new C0898za(sharedPreferences);
                f10566a.put(str, zaVar);
            }
        }
        return zaVar;
    }

    public final Object a(String str) {
        Map<String, ?> map = this.f10570e;
        if (map == null) {
            synchronized (this.f10569d) {
                map = this.f10570e;
                if (map == null) {
                    map = this.f10567b.getAll();
                    this.f10570e = map;
                }
            }
        }
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    public final /* synthetic */ void a(SharedPreferences sharedPreferences, String str) {
        synchronized (this.f10569d) {
            this.f10570e = null;
            C0870sa.c();
        }
        synchronized (this) {
            for (C0839ka a2 : this.f10571f) {
                a2.a();
            }
        }
    }
}
