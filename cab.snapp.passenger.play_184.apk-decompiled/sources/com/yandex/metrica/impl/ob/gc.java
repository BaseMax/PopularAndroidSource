package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.List;

public class gc extends ge {

    /* renamed from: a  reason: collision with root package name */
    static final je f6053a = new je("UUID");

    /* renamed from: b  reason: collision with root package name */
    static final je f6054b = new je("DEVICE_ID_POSSIBLE");
    static final je c = new je("DEVICE_ID");
    static final je d = new je("DEVICE_ID_HASH");
    static final je e = new je("AD_URL_GET");
    static final je f = new je("AD_URL_REPORT");
    static final je g = new je("CUSTOM_HOSTS");
    static final je h = new je("SERVER_TIME_OFFSET");
    static final je i = new je("STARTUP_REQUEST_TIME");
    static final je j = new je("CLIDS");
    static final je k = new je("REFERRER");
    static final je l = new je("DEFERRED_DEEP_LINK_WAS_CHECKED");
    static final je m = new je("REFERRER_FROM_PLAY_SERVICES_WAS_CHECKED");
    static final je n = new je("API_LEVEL");

    public gc(fr frVar) {
        super(frVar);
    }

    public String a(String str) {
        return c(f6053a.b(), str);
    }

    public String b(String str) {
        return c(c.b(), str);
    }

    public String c(String str) {
        return c(d.b(), str);
    }

    public String a() {
        return c(f6054b.b(), "");
    }

    public String d(String str) {
        return c(e.b(), str);
    }

    public String e(String str) {
        return c(f.b(), str);
    }

    public List<String> b() {
        String c2 = c(g.b(), null);
        if (TextUtils.isEmpty(c2)) {
            return null;
        }
        return ne.b(c2);
    }

    public long a(long j2) {
        return b(h.a(), j2);
    }

    public long b(long j2) {
        return b(i.b(), j2);
    }

    public String f(String str) {
        return c(j.b(), str);
    }

    public long c(long j2) {
        return b(n.b(), j2);
    }

    public String c() {
        return c(k.b(), null);
    }

    public boolean d() {
        return b(l.b(), false);
    }

    public boolean e() {
        return b(l.b(), false);
    }

    public gc g(String str) {
        return (gc) b(f6053a.b(), str);
    }

    public gc h(String str) {
        return (gc) b(c.b(), str);
    }

    public gc i(String str) {
        return (gc) b(d.b(), str);
    }

    public gc j(String str) {
        return (gc) b(e.b(), str);
    }

    public gc a(List<String> list) {
        return (gc) b(g.b(), ne.a(list));
    }

    public gc k(String str) {
        return (gc) b(f.b(), str);
    }

    public gc d(long j2) {
        return (gc) a(h.b(), j2);
    }

    public gc e(long j2) {
        return (gc) a(i.b(), j2);
    }

    public gc l(String str) {
        return (gc) b(j.b(), str);
    }

    public gc f(long j2) {
        return (gc) a(n.b(), j2);
    }

    public gc m(String str) {
        return (gc) b(f6054b.b(), str);
    }

    public gc n(String str) {
        return (gc) b(k.b(), str);
    }

    public gc f() {
        return (gc) a(l.b(), true);
    }

    public gc g() {
        return (gc) a(m.b(), true);
    }
}
