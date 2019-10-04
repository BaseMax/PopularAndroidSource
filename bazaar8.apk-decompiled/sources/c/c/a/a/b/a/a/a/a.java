package c.c.a.a.b.a.a.a;

import c.c.a.a.b.a.a.b.i;
import c.c.a.a.b.a.a.c.a.c;
import com.farsitel.bazaar.common.util.Base64;
import h.a.A;
import h.a.l;
import h.a.z;
import h.f.b.f;
import h.f.b.j;
import h.k.m;
import h.k.n;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;
import kotlin.TypeCastException;

/* compiled from: ActionLogEntity.kt */
public final class a implements Comparable<a> {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4497a;

    /* renamed from: b  reason: collision with root package name */
    public static final C0068a f4498b = new C0068a(null);

    /* renamed from: c  reason: collision with root package name */
    public long f4499c;

    /* renamed from: d  reason: collision with root package name */
    public long f4500d;

    /* renamed from: e  reason: collision with root package name */
    public String f4501e;

    /* renamed from: f  reason: collision with root package name */
    public String f4502f;

    /* renamed from: g  reason: collision with root package name */
    public String f4503g;

    /* renamed from: h  reason: collision with root package name */
    public Map<String, ? extends Object> f4504h;

    /* renamed from: i  reason: collision with root package name */
    public String f4505i;

    /* renamed from: j  reason: collision with root package name */
    public Map<String, ? extends Object> f4506j;

    /* renamed from: c.c.a.a.b.a.a.a.a$a  reason: collision with other inner class name */
    /* compiled from: ActionLogEntity.kt */
    public static final class C0068a {
        public C0068a() {
        }

        public final a a() {
            return a.f4497a;
        }

        public /* synthetic */ C0068a(f fVar) {
            this();
        }
    }

    /* compiled from: ActionLogEntity.kt */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f4507a;

        /* renamed from: b  reason: collision with root package name */
        public final String f4508b;

        /* renamed from: c  reason: collision with root package name */
        public final String f4509c;

        /* renamed from: d  reason: collision with root package name */
        public final List<Object> f4510d;

        /* renamed from: e  reason: collision with root package name */
        public final List<Object> f4511e;

        public b(String str, String str2, String str3, List<? extends Object> list, List<? extends Object> list2) {
            j.b(str, "agent");
            j.b(str2, "who");
            j.b(str3, "when");
            j.b(list, "what");
            j.b(list2, "where");
            this.f4507a = str;
            this.f4508b = str2;
            this.f4509c = str3;
            this.f4510d = list;
            this.f4511e = list2;
        }

        public String toString() {
            String a2 = h.k.f.a("\n            |\"agent\": \"" + this.f4507a + "\", \"who\": \"" + this.f4508b + "\", \"when\": \"" + this.f4509c + "\",\n            |\"what\": \"" + c.c.a.e.j.b.f5549b.a().a((Object) this.f4510d) + "\",\n            |\"where\": \"" + c.c.a.e.j.b.f5549b.a().a((Object) this.f4511e) + "\"\n            ", null, 1, null);
            if (a2 != null) {
                return m.a(n.f(a2).toString(), "\\", "", false, 4, (Object) null);
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
        }
    }

    static {
        a aVar = new a(0, 0, "system", "unknown", "parsing_json", A.a(), "parse_error", z.a(h.f.a("msg", "plz report this to us")), 3, null);
        f4497a = aVar;
    }

    public a(long j2, long j3, String str, String str2, String str3, Map<String, ? extends Object> map, String str4, Map<String, ? extends Object> map2) {
        j.b(str, "agent");
        j.b(str2, "who");
        j.b(str3, "where");
        j.b(map, "whereDetails");
        j.b(str4, "what");
        j.b(map2, "whatDetails");
        this.f4499c = j2;
        this.f4500d = j3;
        this.f4501e = str;
        this.f4502f = str2;
        this.f4503g = str3;
        this.f4504h = map;
        this.f4505i = str4;
        this.f4506j = map2;
    }

    /* renamed from: a */
    public int compareTo(a aVar) {
        j.b(aVar, "other");
        return (this.f4500d > aVar.f4500d ? 1 : (this.f4500d == aVar.f4500d ? 0 : -1));
    }

    public boolean equals(Object obj) {
        return j.a((Object) toString(), (Object) String.valueOf(obj));
    }

    public final long g() {
        return this.f4500d;
    }

    public final i h() {
        i iVar = new i(0, this.f4500d, c.c.a.e.j.b.f5549b.a().a((Object) this).toString(), 1, null);
        return iVar;
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public final c i() {
        long j2 = this.f4500d;
        String str = this.f4501e;
        String str2 = this.f4502f;
        String str3 = c.c.a.e.j.b.f5549b.a().a((Object) new Object[]{this.f4503g, this.f4504h}).toString();
        Charset charset = h.k.c.f14613a;
        if (str3 != null) {
            byte[] bytes = str3.getBytes(charset);
            j.a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
            String a2 = Base64.a(bytes);
            j.a((Object) a2, "Base64.encode(GSON().toJ…toString().toByteArray())");
            String str4 = c.c.a.e.j.b.f5549b.a().a((Object) new Object[]{this.f4505i, this.f4506j}).toString();
            Charset charset2 = h.k.c.f14613a;
            if (str4 != null) {
                byte[] bytes2 = str4.getBytes(charset2);
                j.a((Object) bytes2, "(this as java.lang.String).getBytes(charset)");
                String a3 = Base64.a(bytes2);
                j.a((Object) a3, "Base64.encode(GSON().toJ…toString().toByteArray())");
                c cVar = new c(j2, str, a3, a2, str2);
                return cVar;
            }
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    public String toString() {
        String a2 = c.c.a.c.b.f.a(this.f4500d);
        b bVar = new b(this.f4501e, this.f4502f, a2, l.c(this.f4505i, this.f4506j), l.c(this.f4503g, this.f4504h));
        return bVar.toString();
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(long j2, long j3, String str, String str2, String str3, Map map, String str4, Map map2, int i2, f fVar) {
        this((i2 & 1) != 0 ? 0 : j2, (i2 & 2) != 0 ? System.currentTimeMillis() : j3, str, str2, str3, map, str4, map2);
    }
}
