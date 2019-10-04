package b.w;

import b.f.j;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: NavGraph */
class q implements Iterator<o> {

    /* renamed from: a  reason: collision with root package name */
    public int f3326a = -1;

    /* renamed from: b  reason: collision with root package name */
    public boolean f3327b = false;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ r f3328c;

    public q(r rVar) {
        this.f3328c = rVar;
    }

    public boolean hasNext() {
        return this.f3326a + 1 < this.f3328c.f3329j.c();
    }

    public void remove() {
        if (this.f3327b) {
            this.f3328c.f3329j.f(this.f3326a).a((r) null);
            this.f3328c.f3329j.e(this.f3326a);
            this.f3326a--;
            this.f3327b = false;
            return;
        }
        throw new IllegalStateException("You must call next() before you can remove an element");
    }

    public o next() {
        if (hasNext()) {
            this.f3327b = true;
            j<o> jVar = this.f3328c.f3329j;
            int i2 = this.f3326a + 1;
            this.f3326a = i2;
            return jVar.f(i2);
        }
        throw new NoSuchElementException();
    }
}
