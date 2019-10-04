package b.H.a.b.a;

import android.content.Context;
import androidx.work.NetworkType;
import b.H.a.b.b;
import b.H.a.b.b.h;
import b.H.a.c.o;

/* compiled from: NetworkUnmeteredController */
public class g extends c<b> {
    public g(Context context) {
        super(h.a(context).c());
    }

    public boolean a(o oVar) {
        return oVar.f1475l.b() == NetworkType.UNMETERED;
    }

    /* renamed from: a */
    public boolean b(b bVar) {
        return !bVar.a() || bVar.b();
    }
}
