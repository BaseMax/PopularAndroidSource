package c.e.a.a.l;

import c.e.a.a.S;
import c.e.a.a.Z;
import c.e.a.a.j.v;
import c.e.a.a.n.f;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.source.TrackGroupArray;

/* compiled from: TrackSelector */
public abstract class r {

    /* renamed from: a  reason: collision with root package name */
    public a f9339a;

    /* renamed from: b  reason: collision with root package name */
    public f f9340b;

    /* compiled from: TrackSelector */
    public interface a {
        void a();
    }

    public abstract s a(S[] sArr, TrackGroupArray trackGroupArray, v.a aVar, Z z);

    public final void a(a aVar, f fVar) {
        this.f9339a = aVar;
        this.f9340b = fVar;
    }

    public abstract void a(Object obj);

    public final void b() {
        a aVar = this.f9339a;
        if (aVar != null) {
            aVar.a();
        }
    }

    public final f a() {
        f fVar = this.f9340b;
        C0737e.a(fVar);
        return fVar;
    }
}
