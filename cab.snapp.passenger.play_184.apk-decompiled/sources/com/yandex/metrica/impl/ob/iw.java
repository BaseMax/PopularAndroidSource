package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.Map;

@Deprecated
public class iw extends ix {
    private final je c = new je("init_event_pref_key", i());
    private final je d = new je("init_event_pref_key");
    private final je e = new je("first_event_pref_key", i());
    private final je f = new je("fitst_event_description_key", i());

    /* access modifiers changed from: protected */
    public String f() {
        return "_initpreferences";
    }

    public iw(Context context, String str) {
        super(context, str);
    }

    public void a() {
        a(this.c.b(), "DONE").j();
    }

    @Deprecated
    public String a(String str) {
        return this.f6173b.getString(this.d.b(), str);
    }

    public String b(String str) {
        return this.f6173b.getString(this.c.b(), str);
    }

    public String c(String str) {
        return this.f6173b.getString(this.e.b(), str);
    }

    @Deprecated
    public void b() {
        a(this.d);
    }

    @Deprecated
    public void d(String str) {
        a(new je("init_event_pref_key", str));
    }

    public void c() {
        a(this.c);
    }

    public void d() {
        a(this.e);
    }

    public String e(String str) {
        return this.f6173b.getString(this.f.b(), str);
    }

    public void e() {
        a(this.f);
    }

    private void a(je jeVar) {
        this.f6173b.edit().remove(jeVar.b()).apply();
    }

    /* access modifiers changed from: package-private */
    public Map<String, ?> g() {
        return this.f6173b.getAll();
    }

    static String f(String str) {
        return new je("init_event_pref_key", str).b();
    }

    static String g(String str) {
        return str.replace("init_event_pref_key", "");
    }
}
