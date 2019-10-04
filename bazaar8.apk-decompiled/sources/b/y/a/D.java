package b.y.a;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: OrientationHelper */
public abstract class D {

    /* renamed from: a  reason: collision with root package name */
    public final RecyclerView.i f3407a;

    /* renamed from: b  reason: collision with root package name */
    public int f3408b;

    /* renamed from: c  reason: collision with root package name */
    public final Rect f3409c;

    public /* synthetic */ D(RecyclerView.i iVar, B b2) {
        this(iVar);
    }

    public static D a(RecyclerView.i iVar, int i2) {
        if (i2 == 0) {
            return a(iVar);
        }
        if (i2 == 1) {
            return b(iVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static D b(RecyclerView.i iVar) {
        return new C(iVar);
    }

    public abstract int a();

    public abstract int a(View view);

    public abstract void a(int i2);

    public abstract int b();

    public abstract int b(View view);

    public abstract int c();

    public abstract int c(View view);

    public abstract int d();

    public abstract int d(View view);

    public abstract int e();

    public abstract int e(View view);

    public abstract int f();

    public abstract int f(View view);

    public abstract int g();

    public int h() {
        if (Integer.MIN_VALUE == this.f3408b) {
            return 0;
        }
        return g() - this.f3408b;
    }

    public void i() {
        this.f3408b = g();
    }

    public D(RecyclerView.i iVar) {
        this.f3408b = Integer.MIN_VALUE;
        this.f3409c = new Rect();
        this.f3407a = iVar;
    }

    public static D a(RecyclerView.i iVar) {
        return new B(iVar);
    }
}
