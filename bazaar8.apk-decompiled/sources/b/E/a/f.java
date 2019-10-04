package b.e.a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;

/* compiled from: CardViewBaseImpl */
public class f implements h {

    /* renamed from: a  reason: collision with root package name */
    public final RectF f2304a = new RectF();

    public void a() {
        j.f2317b = new e(this);
    }

    public float b(g gVar) {
        return i(gVar).c();
    }

    public void c(g gVar) {
    }

    public void c(g gVar, float f2) {
        i(gVar).b(f2);
        j(gVar);
    }

    public float d(g gVar) {
        return i(gVar).d();
    }

    public ColorStateList e(g gVar) {
        return i(gVar).b();
    }

    public float f(g gVar) {
        return i(gVar).e();
    }

    public float g(g gVar) {
        return i(gVar).f();
    }

    public void h(g gVar) {
        i(gVar).a(gVar.a());
        j(gVar);
    }

    public final j i(g gVar) {
        return (j) gVar.c();
    }

    public void j(g gVar) {
        Rect rect = new Rect();
        i(gVar).b(rect);
        gVar.a((int) Math.ceil((double) g(gVar)), (int) Math.ceil((double) f(gVar)));
        gVar.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void a(g gVar, Context context, ColorStateList colorStateList, float f2, float f3, float f4) {
        j a2 = a(context, colorStateList, f2, f3, f4);
        a2.a(gVar.a());
        gVar.a(a2);
        j(gVar);
    }

    public void b(g gVar, float f2) {
        i(gVar).c(f2);
    }

    public final j a(Context context, ColorStateList colorStateList, float f2, float f3, float f4) {
        j jVar = new j(context.getResources(), colorStateList, f2, f3, f4);
        return jVar;
    }

    public void a(g gVar, ColorStateList colorStateList) {
        i(gVar).b(colorStateList);
    }

    public void a(g gVar, float f2) {
        i(gVar).a(f2);
        j(gVar);
    }

    public float a(g gVar) {
        return i(gVar).g();
    }
}
