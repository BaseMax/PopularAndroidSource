package b.y.a;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: OrientationHelper */
class C extends D {
    public C(RecyclerView.i iVar) {
        super(iVar, null);
    }

    public int a() {
        return this.f3407a.h();
    }

    public int b() {
        return this.f3407a.h() - this.f3407a.n();
    }

    public int c(View view) {
        RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
        return this.f3407a.h(view) + jVar.leftMargin + jVar.rightMargin;
    }

    public int d(View view) {
        return this.f3407a.j(view) - ((RecyclerView.j) view.getLayoutParams()).topMargin;
    }

    public int e(View view) {
        this.f3407a.a(view, true, this.f3409c);
        return this.f3409c.bottom;
    }

    public int f() {
        return this.f3407a.q();
    }

    public int g() {
        return (this.f3407a.h() - this.f3407a.q()) - this.f3407a.n();
    }

    public void a(int i2) {
        this.f3407a.f(i2);
    }

    public int b(View view) {
        RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
        return this.f3407a.g(view) + jVar.topMargin + jVar.bottomMargin;
    }

    public int f(View view) {
        this.f3407a.a(view, true, this.f3409c);
        return this.f3409c.top;
    }

    public int a(View view) {
        return this.f3407a.e(view) + ((RecyclerView.j) view.getLayoutParams()).bottomMargin;
    }

    public int c() {
        return this.f3407a.n();
    }

    public int d() {
        return this.f3407a.i();
    }

    public int e() {
        return this.f3407a.s();
    }
}
