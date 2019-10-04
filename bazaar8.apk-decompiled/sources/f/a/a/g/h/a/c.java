package f.a.a.g.h.a;

import android.content.SharedPreferences;

/* compiled from: SharedPrefPrefillSheet */
public class c extends b {

    /* renamed from: c  reason: collision with root package name */
    public SharedPreferences f14496c;

    /* renamed from: d  reason: collision with root package name */
    public SharedPreferences.Editor f14497d = null;

    /* renamed from: e  reason: collision with root package name */
    public String f14498e;

    public c(b bVar, SharedPreferences sharedPreferences, String str) {
        super(bVar);
        this.f14496c = sharedPreferences;
        this.f14498e = str;
    }

    public void a(String str, Object obj) {
        d().putString(e(str), obj.toString());
    }

    public Object b(String str) {
        return this.f14496c.getString(e(str), null);
    }

    public SharedPreferences.Editor d() {
        if (this.f14497d == null) {
            this.f14497d = this.f14496c.edit();
        }
        return this.f14497d;
    }

    public String e(String str) {
        return this.f14498e + "__" + str;
    }

    public void a(String str) {
        d().remove(e(str));
    }

    public void a() {
        SharedPreferences.Editor editor = this.f14497d;
        if (editor != null) {
            editor.apply();
            this.f14497d = null;
        }
    }

    public boolean d(String str) {
        return this.f14496c.contains(e(str));
    }

    public c(SharedPreferences sharedPreferences, String str) {
        this.f14496c = sharedPreferences;
        this.f14498e = str;
    }
}
