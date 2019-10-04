package c.c.a.e.d.o;

import com.farsitel.bazaar.data.entity.ReleaseNote;
import h.f.b.f;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ReleaseNoteRepository.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final a f5321a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final c.c.a.e.d.u.a f5322b;

    /* renamed from: c  reason: collision with root package name */
    public final c.c.a.e.b.c f5323c;

    /* renamed from: d  reason: collision with root package name */
    public final a f5324d;

    /* compiled from: ReleaseNoteRepository.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public c(c.c.a.e.d.u.a aVar, c.c.a.e.b.c cVar, a aVar2) {
        j.b(aVar, "settingsRepository");
        j.b(cVar, "deviceInfoDataSource");
        j.b(aVar2, "releaseNoteDataSource");
        this.f5322b = aVar;
        this.f5323c = cVar;
        this.f5324d = aVar2;
    }

    public final List<ReleaseNote> a() {
        return a(0);
    }

    public final List<ReleaseNote> b() {
        if (!d()) {
            return null;
        }
        long c2 = c();
        e();
        return a(c2);
    }

    public final long c() {
        return this.f5322b.s();
    }

    public final boolean d() {
        return c() < this.f5323c.c();
    }

    public final void e() {
        this.f5322b.b(this.f5323c.c());
    }

    public final List<ReleaseNote> a(long j2) {
        List<ReleaseNote> a2 = this.f5324d.a();
        ArrayList arrayList = new ArrayList();
        for (T next : a2) {
            if (((long) ((ReleaseNote) next).getReleaseVersionCode()) > j2) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }
}
