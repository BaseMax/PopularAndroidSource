package b.H.a.b.a;

import android.content.Context;
import android.os.Build;
import androidx.work.NetworkType;
import b.H.a.b.b;
import b.H.a.b.b.h;
import b.H.a.c.o;
import b.H.f;

/* compiled from: NetworkMeteredController */
public class e extends c<b> {

    /* renamed from: e  reason: collision with root package name */
    public static final String f1394e = f.a("NetworkMeteredCtrlr");

    public e(Context context) {
        super(h.a(context).c());
    }

    public boolean a(o oVar) {
        return oVar.f1475l.b() == NetworkType.METERED;
    }

    /* renamed from: a */
    public boolean b(b bVar) {
        boolean z = true;
        if (Build.VERSION.SDK_INT < 26) {
            f.a().a(f1394e, "Metered network constraint is not supported before API 26, only checking for connected state.", new Throwable[0]);
            return !bVar.a();
        }
        if (bVar.a() && bVar.b()) {
            z = false;
        }
        return z;
    }
}
