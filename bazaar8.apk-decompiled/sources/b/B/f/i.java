package b.b.f;

import android.view.animation.Interpolator;
import b.i.k.I;
import b.i.k.J;
import b.i.k.K;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: ViewPropertyAnimatorCompatSet */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList<I> f1990a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    public long f1991b = -1;

    /* renamed from: c  reason: collision with root package name */
    public Interpolator f1992c;

    /* renamed from: d  reason: collision with root package name */
    public J f1993d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f1994e;

    /* renamed from: f  reason: collision with root package name */
    public final K f1995f = new h(this);

    public i a(I i2) {
        if (!this.f1994e) {
            this.f1990a.add(i2);
        }
        return this;
    }

    public void b() {
        this.f1994e = false;
    }

    public void c() {
        if (!this.f1994e) {
            Iterator<I> it = this.f1990a.iterator();
            while (it.hasNext()) {
                I next = it.next();
                long j2 = this.f1991b;
                if (j2 >= 0) {
                    next.a(j2);
                }
                Interpolator interpolator = this.f1992c;
                if (interpolator != null) {
                    next.a(interpolator);
                }
                if (this.f1993d != null) {
                    next.a((J) this.f1995f);
                }
                next.c();
            }
            this.f1994e = true;
        }
    }

    public i a(I i2, I i3) {
        this.f1990a.add(i2);
        i3.b(i2.b());
        this.f1990a.add(i3);
        return this;
    }

    public void a() {
        if (this.f1994e) {
            Iterator<I> it = this.f1990a.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            this.f1994e = false;
        }
    }

    public i a(long j2) {
        if (!this.f1994e) {
            this.f1991b = j2;
        }
        return this;
    }

    public i a(Interpolator interpolator) {
        if (!this.f1994e) {
            this.f1992c = interpolator;
        }
        return this;
    }

    public i a(J j2) {
        if (!this.f1994e) {
            this.f1993d = j2;
        }
        return this;
    }
}
