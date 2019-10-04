package b.y.a;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: OrientationHelper */
class B extends D {
    public B(RecyclerView.i iVar) {
        super(iVar, null);
    }

    public int a() {
        return this.f3407a.r();
    }

    public int b() {
        return this.f3407a.r() - this.f3407a.p();
    }

    public int c(View view) {
        RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
        return this.f3407a.g(view) + jVar.topMargin + jVar.bottomMargin;
    }

    public int d(View view) {
        return this.f3407a.f(view) - ((RecyclerView.j) view.getLayoutParams()).leftMargin;
    }

    public int e(View view) {
        this.f3407a.a(view, true, this.f3409c);
        return this.f3409c.right;
    }

    public int f() {
        return this.f3407a.o();
    }

    public int g() {
        return (this.f3407a.r() - this.f3407a.o()) - this.f3407a.p();
    }

    public void a(int i2) {
        this.f3407a.e(i2);
    }

    public int b(View view) {
        RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
        return this.f3407a.h(view) + jVar.leftMargin + jVar.rightMargin;
    }

    public int f(View view) {
        this.f3407a.a(view, true, this.f3409c);
        return this.f3409c.left;
    }

    public int a(View view) {
        return this.f3407a.i(view) + ((RecyclerView.j) view.getLayoutParams()).rightMargin;
    }

    public int c() {
        return this.f3407a.p();
    }

    public int d() {
        return this.f3407a.s();
    }

    public int e() {
        return this.f3407a.i();
    }
}
