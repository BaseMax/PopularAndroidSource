package c.c.a.l;

import android.content.Context;
import b.r.E;
import b.r.F;
import c.c.a.l.b.b;
import com.farsitel.bazaar.player.CafePlayer;
import h.f.b.j;
import j.I;

/* compiled from: CafePlayerFactory.kt */
public final class d implements F.b {

    /* renamed from: a  reason: collision with root package name */
    public final I f6108a = new I();

    /* renamed from: b  reason: collision with root package name */
    public final Context f6109b;

    /* renamed from: c  reason: collision with root package name */
    public final f f6110c;

    /* renamed from: d  reason: collision with root package name */
    public final b f6111d;

    public d(Context context, f fVar, b bVar) {
        j.b(context, "context");
        j.b(fVar, "playerParams");
        j.b(bVar, "videoStatRepository");
        this.f6109b = context;
        this.f6110c = fVar;
        this.f6111d = bVar;
    }

    public <T extends E> T a(Class<T> cls) {
        j.b(cls, "modelClass");
        return new CafePlayer(this.f6109b, this.f6110c, this.f6108a, this.f6111d);
    }
}
