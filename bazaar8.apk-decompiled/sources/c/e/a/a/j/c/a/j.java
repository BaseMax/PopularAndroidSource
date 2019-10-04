package c.e.a.a.j.c.a;

import android.net.Uri;
import c.e.a.a.j.c.a.k;
import c.e.a.a.j.c.g;
import com.google.android.exoplayer2.Format;
import java.util.Collections;
import java.util.List;

/* compiled from: Representation */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    public final long f8566a;

    /* renamed from: b  reason: collision with root package name */
    public final Format f8567b;

    /* renamed from: c  reason: collision with root package name */
    public final String f8568c;

    /* renamed from: d  reason: collision with root package name */
    public final long f8569d;

    /* renamed from: e  reason: collision with root package name */
    public final List<d> f8570e;

    /* renamed from: f  reason: collision with root package name */
    public final h f8571f;

    /* compiled from: Representation */
    public static class a extends j implements g {

        /* renamed from: g  reason: collision with root package name */
        public final k.a f8572g;

        public a(long j2, Format format, String str, k.a aVar, List<d> list) {
            super(j2, format, str, aVar, list);
            this.f8572g = aVar;
        }

        public long a(long j2) {
            return this.f8572g.b(j2);
        }

        public h b(long j2) {
            return this.f8572g.a((j) this, j2);
        }

        public int c(long j2) {
            return this.f8572g.a(j2);
        }

        public String c() {
            return null;
        }

        public g d() {
            return this;
        }

        public h e() {
            return null;
        }

        public long a(long j2, long j3) {
            return this.f8572g.a(j2, j3);
        }

        public long b(long j2, long j3) {
            return this.f8572g.b(j2, j3);
        }

        public boolean a() {
            return this.f8572g.c();
        }

        public long b() {
            return this.f8572g.b();
        }
    }

    /* compiled from: Representation */
    public static class b extends j {

        /* renamed from: g  reason: collision with root package name */
        public final Uri f8573g;

        /* renamed from: h  reason: collision with root package name */
        public final long f8574h;

        /* renamed from: i  reason: collision with root package name */
        public final String f8575i;

        /* renamed from: j  reason: collision with root package name */
        public final h f8576j;

        /* renamed from: k  reason: collision with root package name */
        public final l f8577k;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public b(long j2, Format format, String str, k.e eVar, List<d> list, String str2, long j3) {
            super(j2, format, str, eVar, list);
            l lVar;
            this.f8573g = Uri.parse(str);
            this.f8576j = eVar.b();
            this.f8575i = str2;
            this.f8574h = j3;
            if (this.f8576j != null) {
                lVar = null;
            } else {
                h hVar = new h(null, 0, j3);
                lVar = new l(hVar);
            }
            this.f8577k = lVar;
        }

        public String c() {
            return this.f8575i;
        }

        public g d() {
            return this.f8577k;
        }

        public h e() {
            return this.f8576j;
        }
    }

    public static j a(long j2, Format format, String str, k kVar, List<d> list) {
        return a(j2, format, str, kVar, list, null);
    }

    public abstract String c();

    public abstract g d();

    public abstract h e();

    public h f() {
        return this.f8571f;
    }

    public j(long j2, Format format, String str, k kVar, List<d> list) {
        List<d> list2;
        this.f8566a = j2;
        this.f8567b = format;
        this.f8568c = str;
        if (list == null) {
            list2 = Collections.emptyList();
        } else {
            list2 = Collections.unmodifiableList(list);
        }
        this.f8570e = list2;
        this.f8571f = kVar.a(this);
        this.f8569d = kVar.a();
    }

    public static j a(long j2, Format format, String str, k kVar, List<d> list, String str2) {
        k kVar2 = kVar;
        if (kVar2 instanceof k.e) {
            b bVar = new b(j2, format, str, (k.e) kVar2, list, str2, -1);
            return bVar;
        } else if (kVar2 instanceof k.a) {
            a aVar = new a(j2, format, str, (k.a) kVar2, list);
            return aVar;
        } else {
            throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
        }
    }
}
