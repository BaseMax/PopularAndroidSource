package b.H.a.b.a;

import android.content.Context;
import android.os.Build;
import androidx.work.NetworkType;
import b.H.a.b.b;
import b.H.a.b.b.h;
import b.H.a.c.o;

/* compiled from: NetworkNotRoamingController */
public class f extends c<b> {

    /* renamed from: e  reason: collision with root package name */
    public static final String f1395e = b.H.f.a("NetworkNotRoamingCtrlr");

    public f(Context context) {
        super(h.a(context).c());
    }

    public boolean a(o oVar) {
        return oVar.f1475l.b() == NetworkType.NOT_ROAMING;
    }

    /* renamed from: a */
    public boolean b(b bVar) {
        boolean z = true;
        if (Build.VERSION.SDK_INT < 24) {
            b.H.f.a().a(f1395e, "Not-roaming network constraint is not supported before API 24, only checking for connected state.", new Throwable[0]);
            return !bVar.a();
        }
        if (bVar.a() && bVar.c()) {
            z = false;
        }
        return z;
    }
}
