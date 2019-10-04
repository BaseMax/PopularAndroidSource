package c.c.a.e.d.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import h.c;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: SharedDataSource.kt */
public abstract class I {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ i[] f4943a;

    /* renamed from: b  reason: collision with root package name */
    public final c f4944b = d.a(new SharedDataSource$sharedPreference$2(this));

    /* renamed from: c  reason: collision with root package name */
    public final Context f4945c;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(I.class), "sharedPreference", "getSharedPreference()Landroid/content/SharedPreferences;");
        k.a((PropertyReference1) propertyReference1Impl);
        f4943a = new i[]{propertyReference1Impl};
    }

    public I(Context context) {
        j.b(context, "context");
        this.f4945c = context;
    }

    public final <T> T a(String str, T t) {
        j.b(str, "key");
        if (t instanceof String) {
            return d().getString(str, (String) t);
        }
        if (t instanceof Integer) {
            return Integer.valueOf(d().getInt(str, ((Number) t).intValue()));
        }
        if (t instanceof Float) {
            return Float.valueOf(d().getFloat(str, ((Number) t).floatValue()));
        }
        if (t instanceof Double) {
            return Float.valueOf(d().getFloat(str, (float) ((Number) t).doubleValue()));
        }
        if (t instanceof Long) {
            return Long.valueOf(d().getLong(str, ((Number) t).longValue()));
        }
        if (t instanceof Boolean) {
            return Boolean.valueOf(d().getBoolean(str, ((Boolean) t).booleanValue()));
        }
        throw new IllegalArgumentException("Type of value is not supported");
    }

    public final Context b() {
        return this.f4945c;
    }

    public abstract String c();

    public final SharedPreferences d() {
        c cVar = this.f4944b;
        i iVar = f4943a[0];
        return (SharedPreferences) cVar.getValue();
    }

    @SuppressLint({"ApplySharedPref"})
    public static /* synthetic */ void a(I i2, String str, Object obj, boolean z, int i3, Object obj2) {
        if (obj2 == null) {
            if ((i3 & 4) != 0) {
                z = false;
            }
            i2.a(str, obj, z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: put");
    }

    @SuppressLint({"ApplySharedPref"})
    public final <T> void a(String str, T t, boolean z) {
        j.b(str, "key");
        SharedPreferences.Editor edit = d().edit();
        a(edit, str, t);
        if (z) {
            edit.commit();
        } else {
            edit.apply();
        }
    }

    @SuppressLint({"ApplySharedPref"})
    public static /* synthetic */ void a(I i2, String str, boolean z, int i3, Object obj) {
        if (obj == null) {
            if ((i3 & 2) != 0) {
                z = false;
            }
            i2.a(str, z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: remove");
    }

    @SuppressLint({"ApplySharedPref"})
    public final void a(String str, boolean z) {
        j.b(str, "key");
        SharedPreferences.Editor edit = d().edit();
        edit.remove(str);
        if (z) {
            edit.commit();
        } else {
            edit.apply();
        }
    }

    public final <T> SharedPreferences.Editor a(SharedPreferences.Editor editor, String str, T t) {
        if (t instanceof String) {
            editor.putString(str, (String) t);
        } else if (t instanceof Integer) {
            editor.putInt(str, ((Number) t).intValue());
        } else if (t instanceof Float) {
            editor.putFloat(str, ((Number) t).floatValue());
        } else if (t instanceof Double) {
            editor.putFloat(str, (float) ((Number) t).doubleValue());
        } else if (t instanceof Long) {
            editor.putLong(str, ((Number) t).longValue());
        } else if (t instanceof Boolean) {
            editor.putBoolean(str, ((Boolean) t).booleanValue());
        } else {
            throw new IllegalArgumentException("Type of value is not supported");
        }
        return editor;
    }

    public final void a() {
        d().edit().clear().apply();
    }
}
