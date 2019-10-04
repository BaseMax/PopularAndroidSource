package c.e.a.a.j.b;

import android.util.SparseArray;
import c.e.a.a.e.f;
import c.e.a.a.e.g;
import c.e.a.a.e.h;
import c.e.a.a.e.i;
import c.e.a.a.e.o;
import c.e.a.a.e.q;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;

/* compiled from: ChunkExtractorWrapper */
public final class e implements i {

    /* renamed from: a  reason: collision with root package name */
    public final g f8467a;

    /* renamed from: b  reason: collision with root package name */
    public final int f8468b;

    /* renamed from: c  reason: collision with root package name */
    public final Format f8469c;

    /* renamed from: d  reason: collision with root package name */
    public final SparseArray<a> f8470d = new SparseArray<>();

    /* renamed from: e  reason: collision with root package name */
    public boolean f8471e;

    /* renamed from: f  reason: collision with root package name */
    public b f8472f;

    /* renamed from: g  reason: collision with root package name */
    public long f8473g;

    /* renamed from: h  reason: collision with root package name */
    public o f8474h;

    /* renamed from: i  reason: collision with root package name */
    public Format[] f8475i;

    /* compiled from: ChunkExtractorWrapper */
    private static final class a implements q {

        /* renamed from: a  reason: collision with root package name */
        public final int f8476a;

        /* renamed from: b  reason: collision with root package name */
        public final int f8477b;

        /* renamed from: c  reason: collision with root package name */
        public final Format f8478c;

        /* renamed from: d  reason: collision with root package name */
        public final f f8479d = new f();

        /* renamed from: e  reason: collision with root package name */
        public Format f8480e;

        /* renamed from: f  reason: collision with root package name */
        public q f8481f;

        /* renamed from: g  reason: collision with root package name */
        public long f8482g;

        public a(int i2, int i3, Format format) {
            this.f8476a = i2;
            this.f8477b = i3;
            this.f8478c = format;
        }

        public void a(b bVar, long j2) {
            if (bVar == null) {
                this.f8481f = this.f8479d;
                return;
            }
            this.f8482g = j2;
            this.f8481f = bVar.a(this.f8476a, this.f8477b);
            Format format = this.f8480e;
            if (format != null) {
                this.f8481f.a(format);
            }
        }

        public void a(Format format) {
            Format format2 = this.f8478c;
            if (format2 != null) {
                format = format.a(format2);
            }
            this.f8480e = format;
            this.f8481f.a(this.f8480e);
        }

        public int a(h hVar, int i2, boolean z) {
            return this.f8481f.a(hVar, i2, z);
        }

        public void a(v vVar, int i2) {
            this.f8481f.a(vVar, i2);
        }

        public void a(long j2, int i2, int i3, int i4, q.a aVar) {
            long j3 = this.f8482g;
            if (j3 != -9223372036854775807L && j2 >= j3) {
                this.f8481f = this.f8479d;
            }
            this.f8481f.a(j2, i2, i3, i4, aVar);
        }
    }

    /* compiled from: ChunkExtractorWrapper */
    public interface b {
        q a(int i2, int i3);
    }

    public e(g gVar, int i2, Format format) {
        this.f8467a = gVar;
        this.f8468b = i2;
        this.f8469c = format;
    }

    public void a(b bVar, long j2, long j3) {
        this.f8472f = bVar;
        this.f8473g = j3;
        if (!this.f8471e) {
            this.f8467a.a((i) this);
            if (j2 != -9223372036854775807L) {
                this.f8467a.a(0, j2);
            }
            this.f8471e = true;
            return;
        }
        g gVar = this.f8467a;
        if (j2 == -9223372036854775807L) {
            j2 = 0;
        }
        gVar.a(0, j2);
        for (int i2 = 0; i2 < this.f8470d.size(); i2++) {
            this.f8470d.valueAt(i2).a(bVar, j3);
        }
    }

    public Format[] b() {
        return this.f8475i;
    }

    public o c() {
        return this.f8474h;
    }

    public q a(int i2, int i3) {
        a aVar = this.f8470d.get(i2);
        if (aVar == null) {
            C0737e.b(this.f8475i == null);
            aVar = new a(i2, i3, i3 == this.f8468b ? this.f8469c : null);
            aVar.a(this.f8472f, this.f8473g);
            this.f8470d.put(i2, aVar);
        }
        return aVar;
    }

    public void a() {
        Format[] formatArr = new Format[this.f8470d.size()];
        for (int i2 = 0; i2 < this.f8470d.size(); i2++) {
            formatArr[i2] = this.f8470d.valueAt(i2).f8480e;
        }
        this.f8475i = formatArr;
    }

    public void a(o oVar) {
        this.f8474h = oVar;
    }
}
