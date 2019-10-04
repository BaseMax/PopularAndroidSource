package c.c.a.a;

import android.content.Context;
import c.c.a.a.b.c;
import h.c.e;
import h.f.b.j;
import h.h;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.H;
import i.a.va;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: AnalyticsAgent.kt */
public final class b implements H {

    /* renamed from: a  reason: collision with root package name */
    public final C1125ra f4482a = va.a(null, 1, null);

    /* renamed from: b  reason: collision with root package name */
    public final Context f4483b;

    /* renamed from: c  reason: collision with root package name */
    public final Set<c> f4484c;

    /* compiled from: AnalyticsAgent.kt */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final Set<c> f4485a = new LinkedHashSet();

        /* renamed from: b  reason: collision with root package name */
        public final Context f4486b;

        public a(Context context) {
            j.b(context, "context");
            this.f4486b = context;
        }

        public final void a(c cVar) {
            j.b(cVar, "$this$unaryPlus");
            this.f4485a.add(cVar);
        }

        public final b a() {
            return new b(this.f4486b, this.f4485a);
        }
    }

    public b(Context context, Set<? extends c> set) {
        j.b(context, "context");
        j.b(set, "trackers");
        this.f4483b = context;
        this.f4484c = set;
    }

    public final void b() {
        for (c a2 : this.f4484c) {
            a2.a(this.f4483b);
        }
    }

    public e a() {
        return c.c.a.c.a.b.f4693c.b().plus(this.f4482a);
    }

    public final void a(h.f.a.b<? super h.c.b<? super h>, ? extends Object> bVar) {
        C1125ra unused = C1103g.b(this, c.c.a.c.a.b.f4693c.a().plus(this.f4482a), null, new AnalyticsAgent$launchIO$1(bVar, null), 2, null);
    }

    public final void a(c.c.a.a.a.a aVar) {
        j.b(aVar, "event");
        a((h.f.a.b<? super h.c.b<? super h>, ? extends Object>) new AnalyticsAgent$track$1(this, aVar, null));
    }
}
