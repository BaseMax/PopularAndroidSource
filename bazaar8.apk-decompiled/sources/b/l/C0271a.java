package b.l;

import b.l.j;

/* renamed from: b.l.a  reason: case insensitive filesystem */
/* compiled from: BaseObservable */
public class C0271a implements j {

    /* renamed from: a  reason: collision with root package name */
    public transient x f2934a;

    public void a(j.a aVar) {
        synchronized (this) {
            if (this.f2934a == null) {
                this.f2934a = new x();
            }
        }
        this.f2934a.a(aVar);
    }

    public void b(j.a aVar) {
        synchronized (this) {
            if (this.f2934a != null) {
                this.f2934a.b(aVar);
            }
        }
    }

    public void a() {
        synchronized (this) {
            if (this.f2934a != null) {
                this.f2934a.a(this, 0, null);
            }
        }
    }

    public void a(int i2) {
        synchronized (this) {
            if (this.f2934a != null) {
                this.f2934a.a(this, i2, null);
            }
        }
    }
}
