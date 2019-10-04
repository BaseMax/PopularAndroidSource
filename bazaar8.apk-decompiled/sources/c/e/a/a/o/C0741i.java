package c.e.a.a.o;

/* renamed from: c.e.a.a.o.i  reason: case insensitive filesystem */
/* compiled from: ConditionVariable */
public final class C0741i {

    /* renamed from: a  reason: collision with root package name */
    public boolean f9590a;

    public synchronized void a() {
        while (!this.f9590a) {
            wait();
        }
    }

    public synchronized boolean b() {
        boolean z;
        z = this.f9590a;
        this.f9590a = false;
        return z;
    }

    public synchronized boolean c() {
        if (this.f9590a) {
            return false;
        }
        this.f9590a = true;
        notifyAll();
        return true;
    }
}
