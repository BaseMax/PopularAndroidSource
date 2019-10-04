package b.e.a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;

/* compiled from: CardViewApi21Impl */
public class d implements h {
    public void a() {
    }

    public void a(g gVar, Context context, ColorStateList colorStateList, float f2, float f3, float f4) {
        gVar.a(new i(colorStateList, f2));
        View d2 = gVar.d();
        d2.setClipToOutline(true);
        d2.setElevation(f3);
        c(gVar, f4);
    }

    public float b(g gVar) {
        return i(gVar).c();
    }

    public void c(g gVar, float f2) {
        i(gVar).a(f2, gVar.b(), gVar.a());
        j(gVar);
    }

    public float d(g gVar) {
        return i(gVar).b();
    }

    public ColorStateList e(g gVar) {
        return i(gVar).a();
    }

    public float f(g gVar) {
        return b(gVar) * 2.0f;
    }

    public float g(g gVar) {
        return b(gVar) * 2.0f;
    }

    public void h(g gVar) {
        c(gVar, d(gVar));
    }

    public final i i(g gVar) {
        return (i) gVar.c();
    }

    public void j(g gVar) {
        if (!gVar.b()) {
            gVar.a(0, 0, 0, 0);
            return;
        }
        float d2 = d(gVar);
        float b2 = b(gVar);
        int ceil = (int) Math.ceil((double) j.a(d2, b2, gVar.a()));
        int ceil2 = (int) Math.ceil((double) j.b(d2, b2, gVar.a()));
        gVar.a(ceil, ceil2, ceil, ceil2);
    }

    public void b(g gVar, float f2) {
        gVar.d().setElevation(f2);
    }

    public void c(g gVar) {
        c(gVar, d(gVar));
    }

    public void a(g gVar, float f2) {
        i(gVar).a(f2);
    }

    public float a(g gVar) {
        return gVar.d().getElevation();
    }

    public void a(g gVar, ColorStateList colorStateList) {
        i(gVar).b(colorStateList);
    }
}
