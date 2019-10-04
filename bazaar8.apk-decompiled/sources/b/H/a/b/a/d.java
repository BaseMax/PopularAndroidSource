package b.H.a.b.a;

import android.content.Context;
import android.os.Build;
import androidx.work.NetworkType;
import b.H.a.b.b;
import b.H.a.b.b.h;
import b.H.a.c.o;

/* compiled from: NetworkConnectedController */
public class d extends c<b> {
    public d(Context context) {
        super(h.a(context).c());
    }

    public boolean a(o oVar) {
        return oVar.f1475l.b() == NetworkType.CONNECTED;
    }

    /* renamed from: a */
    public boolean b(b bVar) {
        boolean z = true;
        if (Build.VERSION.SDK_INT < 26) {
            return !bVar.a();
        }
        if (bVar.a() && bVar.d()) {
            z = false;
        }
        return z;
    }
}
