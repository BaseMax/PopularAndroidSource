package h.k;

import h.f.b.j;
import java.nio.charset.Charset;

/* compiled from: Charsets.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f14613a;

    /* renamed from: b  reason: collision with root package name */
    public static final Charset f14614b;

    /* renamed from: c  reason: collision with root package name */
    public static final Charset f14615c;

    /* renamed from: d  reason: collision with root package name */
    public static final Charset f14616d;

    /* renamed from: e  reason: collision with root package name */
    public static final Charset f14617e;

    /* renamed from: f  reason: collision with root package name */
    public static final Charset f14618f;

    /* renamed from: g  reason: collision with root package name */
    public static final c f14619g = new c();

    static {
        Charset forName = Charset.forName("UTF-8");
        j.a((Object) forName, "Charset.forName(\"UTF-8\")");
        f14613a = forName;
        Charset forName2 = Charset.forName("UTF-16");
        j.a((Object) forName2, "Charset.forName(\"UTF-16\")");
        f14614b = forName2;
        Charset forName3 = Charset.forName("UTF-16BE");
        j.a((Object) forName3, "Charset.forName(\"UTF-16BE\")");
        f14615c = forName3;
        Charset forName4 = Charset.forName("UTF-16LE");
        j.a((Object) forName4, "Charset.forName(\"UTF-16LE\")");
        f14616d = forName4;
        Charset forName5 = Charset.forName("US-ASCII");
        j.a((Object) forName5, "Charset.forName(\"US-ASCII\")");
        f14617e = forName5;
        Charset forName6 = Charset.forName("ISO-8859-1");
        j.a((Object) forName6, "Charset.forName(\"ISO-8859-1\")");
        f14618f = forName6;
    }
}
