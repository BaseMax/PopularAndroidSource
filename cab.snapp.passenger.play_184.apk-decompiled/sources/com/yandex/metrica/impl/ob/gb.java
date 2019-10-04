package com.yandex.metrica.impl.ob;

public class gb extends ge {

    /* renamed from: a  reason: collision with root package name */
    private final je f6051a = new je("init_event_pref_key");

    /* renamed from: b  reason: collision with root package name */
    private final je f6052b = new je("first_event_pref_key");
    private final je c = new je("first_event_description_key");
    private final je d = new je("preload_info_auto_tracking_enabled");

    public gb(fr frVar) {
        super(frVar);
    }

    public void a() {
        b(this.f6051a.b(), "DONE").i();
    }

    public void b() {
        b(this.f6052b.b(), "DONE").i();
    }

    public String a(String str) {
        return c(this.f6051a.b(), str);
    }

    public String b(String str) {
        return c(this.f6052b.b(), str);
    }

    public boolean c() {
        return a((String) null) != null;
    }

    public boolean d() {
        return b((String) null) != null;
    }

    public void c(String str) {
        b(this.c.b(), str).i();
    }

    public String d(String str) {
        return c(this.c.b(), str);
    }

    public void e() {
        p(this.c.b()).i();
    }

    public void a(boolean z) {
        a(this.d.b(), z).i();
    }

    public boolean b(boolean z) {
        return b(this.d.b(), z);
    }
}
