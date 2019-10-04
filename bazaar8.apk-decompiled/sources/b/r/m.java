package b.r;

import androidx.lifecycle.Lifecycle;
import b.c.a.b.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* compiled from: LifecycleRegistry */
public class m extends Lifecycle {

    /* renamed from: b  reason: collision with root package name */
    public b.c.a.b.a<j, a> f3167b = new b.c.a.b.a<>();

    /* renamed from: c  reason: collision with root package name */
    public Lifecycle.State f3168c;

    /* renamed from: d  reason: collision with root package name */
    public final WeakReference<k> f3169d;

    /* renamed from: e  reason: collision with root package name */
    public int f3170e = 0;

    /* renamed from: f  reason: collision with root package name */
    public boolean f3171f = false;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3172g = false;

    /* renamed from: h  reason: collision with root package name */
    public ArrayList<Lifecycle.State> f3173h = new ArrayList<>();

    /* compiled from: LifecycleRegistry */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public Lifecycle.State f3174a;

        /* renamed from: b  reason: collision with root package name */
        public C0303i f3175b;

        public a(j jVar, Lifecycle.State state) {
            this.f3175b = p.a((Object) jVar);
            this.f3174a = state;
        }

        public void a(k kVar, Lifecycle.Event event) {
            Lifecycle.State a2 = m.a(event);
            this.f3174a = m.a(this.f3174a, a2);
            this.f3175b.a(kVar, event);
            this.f3174a = a2;
        }
    }

    public m(k kVar) {
        this.f3169d = new WeakReference<>(kVar);
        this.f3168c = Lifecycle.State.INITIALIZED;
    }

    public static Lifecycle.Event e(Lifecycle.State state) {
        int i2 = l.f3166b[state.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                return Lifecycle.Event.ON_START;
            }
            if (i2 == 3) {
                return Lifecycle.Event.ON_RESUME;
            }
            if (i2 == 4) {
                throw new IllegalArgumentException();
            } else if (i2 != 5) {
                throw new IllegalArgumentException("Unexpected state value " + state);
            }
        }
        return Lifecycle.Event.ON_CREATE;
    }

    public void a(j jVar) {
        Lifecycle.State state = this.f3168c;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        a aVar = new a(jVar, state2);
        if (this.f3167b.b(jVar, aVar) == null) {
            k kVar = (k) this.f3169d.get();
            if (kVar != null) {
                boolean z = this.f3170e != 0 || this.f3171f;
                Lifecycle.State c2 = c(jVar);
                this.f3170e++;
                while (aVar.f3174a.compareTo(c2) < 0 && this.f3167b.contains(jVar)) {
                    c(aVar.f3174a);
                    aVar.a(kVar, e(aVar.f3174a));
                    c();
                    c2 = c(jVar);
                }
                if (!z) {
                    d();
                }
                this.f3170e--;
            }
        }
    }

    public void b(Lifecycle.Event event) {
        b(a(event));
    }

    public final Lifecycle.State c(j jVar) {
        Map.Entry<j, a> b2 = this.f3167b.b(jVar);
        Lifecycle.State state = null;
        Lifecycle.State state2 = b2 != null ? b2.getValue().f3174a : null;
        if (!this.f3173h.isEmpty()) {
            ArrayList<Lifecycle.State> arrayList = this.f3173h;
            state = arrayList.get(arrayList.size() - 1);
        }
        return a(a(this.f3168c, state2), state);
    }

    public void d(Lifecycle.State state) {
        b(state);
    }

    public final void d() {
        k kVar = (k) this.f3169d.get();
        if (kVar != null) {
            while (!b()) {
                this.f3172g = false;
                if (this.f3168c.compareTo(this.f3167b.a().getValue().f3174a) < 0) {
                    a(kVar);
                }
                Map.Entry<j, a> c2 = this.f3167b.c();
                if (!this.f3172g && c2 != null && this.f3168c.compareTo(c2.getValue().f3174a) > 0) {
                    b(kVar);
                }
            }
            this.f3172g = false;
            return;
        }
        throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
    }

    public final void b(Lifecycle.State state) {
        if (this.f3168c != state) {
            this.f3168c = state;
            if (this.f3171f || this.f3170e != 0) {
                this.f3172g = true;
                return;
            }
            this.f3171f = true;
            d();
            this.f3171f = false;
        }
    }

    public final void c() {
        ArrayList<Lifecycle.State> arrayList = this.f3173h;
        arrayList.remove(arrayList.size() - 1);
    }

    public final void c(Lifecycle.State state) {
        this.f3173h.add(state);
    }

    public final boolean b() {
        boolean z = true;
        if (this.f3167b.size() == 0) {
            return true;
        }
        Lifecycle.State state = this.f3167b.a().getValue().f3174a;
        Lifecycle.State state2 = this.f3167b.c().getValue().f3174a;
        if (!(state == state2 && this.f3168c == state2)) {
            z = false;
        }
        return z;
    }

    public void b(j jVar) {
        this.f3167b.remove(jVar);
    }

    public final void b(k kVar) {
        b<K, V>.d b2 = this.f3167b.b();
        while (b2.hasNext() && !this.f3172g) {
            Map.Entry entry = (Map.Entry) b2.next();
            a aVar = (a) entry.getValue();
            while (aVar.f3174a.compareTo(this.f3168c) < 0 && !this.f3172g && this.f3167b.contains(entry.getKey())) {
                c(aVar.f3174a);
                aVar.a(kVar, e(aVar.f3174a));
                c();
            }
        }
    }

    public Lifecycle.State a() {
        return this.f3168c;
    }

    public static Lifecycle.State a(Lifecycle.Event event) {
        switch (l.f3165a[event.ordinal()]) {
            case 1:
            case 2:
                return Lifecycle.State.CREATED;
            case 3:
            case 4:
                return Lifecycle.State.STARTED;
            case 5:
                return Lifecycle.State.RESUMED;
            case 6:
                return Lifecycle.State.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value " + event);
        }
    }

    public static Lifecycle.Event a(Lifecycle.State state) {
        int i2 = l.f3166b[state.ordinal()];
        if (i2 == 1) {
            throw new IllegalArgumentException();
        } else if (i2 == 2) {
            return Lifecycle.Event.ON_DESTROY;
        } else {
            if (i2 == 3) {
                return Lifecycle.Event.ON_STOP;
            }
            if (i2 == 4) {
                return Lifecycle.Event.ON_PAUSE;
            }
            if (i2 != 5) {
                throw new IllegalArgumentException("Unexpected state value " + state);
            }
            throw new IllegalArgumentException();
        }
    }

    public final void a(k kVar) {
        Iterator<Map.Entry<j, a>> descendingIterator = this.f3167b.descendingIterator();
        while (descendingIterator.hasNext() && !this.f3172g) {
            Map.Entry next = descendingIterator.next();
            a aVar = (a) next.getValue();
            while (aVar.f3174a.compareTo(this.f3168c) > 0 && !this.f3172g && this.f3167b.contains(next.getKey())) {
                Lifecycle.Event a2 = a(aVar.f3174a);
                c(a(a2));
                aVar.a(kVar, a2);
                c();
            }
        }
    }

    public static Lifecycle.State a(Lifecycle.State state, Lifecycle.State state2) {
        return (state2 == null || state2.compareTo(state) >= 0) ? state : state2;
    }
}
