package b.a;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: OnBackPressedCallback */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    public boolean f1667a;

    /* renamed from: b  reason: collision with root package name */
    public CopyOnWriteArrayList<C0186a> f1668b = new CopyOnWriteArrayList<>();

    public d(boolean z) {
        this.f1667a = z;
    }

    public abstract void a();

    public final void a(boolean z) {
        this.f1667a = z;
    }

    public final boolean b() {
        return this.f1667a;
    }

    public final void c() {
        Iterator<C0186a> it = this.f1668b.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }

    public void a(C0186a aVar) {
        this.f1668b.add(aVar);
    }

    public void b(C0186a aVar) {
        this.f1668b.remove(aVar);
    }
}
