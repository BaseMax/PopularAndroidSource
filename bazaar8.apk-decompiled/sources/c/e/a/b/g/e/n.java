package c.e.a.b.g.e;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

public final class n extends WeakReference<Throwable> {

    /* renamed from: a  reason: collision with root package name */
    public final int f10121a;

    public n(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f10121a = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == n.class) {
            if (this == obj) {
                return true;
            }
            n nVar = (n) obj;
            return this.f10121a == nVar.f10121a && get() == nVar.get();
        }
    }

    public final int hashCode() {
        return this.f10121a;
    }
}
