package b.y.a;

import androidx.recyclerview.widget.RecyclerView;
import b.f.C0243b;
import b.f.f;
import b.i.j.e;

/* compiled from: ViewInfoStore */
public class V {

    /* renamed from: a  reason: collision with root package name */
    public final C0243b<RecyclerView.w, a> f3429a = new C0243b<>();

    /* renamed from: b  reason: collision with root package name */
    public final f<RecyclerView.w> f3430b = new f<>();

    /* compiled from: ViewInfoStore */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public static e<a> f3431a = new b.i.j.f(20);

        /* renamed from: b  reason: collision with root package name */
        public int f3432b;

        /* renamed from: c  reason: collision with root package name */
        public RecyclerView.f.c f3433c;

        /* renamed from: d  reason: collision with root package name */
        public RecyclerView.f.c f3434d;

        public static void a(a aVar) {
            aVar.f3432b = 0;
            aVar.f3433c = null;
            aVar.f3434d = null;
            f3431a.a(aVar);
        }

        public static a b() {
            a a2 = f3431a.a();
            return a2 == null ? new a() : a2;
        }

        public static void a() {
            do {
            } while (f3431a.a() != null);
        }
    }

    /* compiled from: ViewInfoStore */
    interface b {
        void a(RecyclerView.w wVar);

        void a(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2);

        void b(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2);

        void c(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2);
    }

    public void a() {
        this.f3429a.clear();
        this.f3430b.a();
    }

    public boolean b(RecyclerView.w wVar) {
        a aVar = this.f3429a.get(wVar);
        if (aVar == null || (aVar.f3432b & 1) == 0) {
            return false;
        }
        return true;
    }

    public void c(RecyclerView.w wVar, RecyclerView.f.c cVar) {
        a aVar = this.f3429a.get(wVar);
        if (aVar == null) {
            aVar = a.b();
            this.f3429a.put(wVar, aVar);
        }
        aVar.f3433c = cVar;
        aVar.f3432b |= 4;
    }

    public void d(RecyclerView.w wVar) {
        g(wVar);
    }

    public RecyclerView.f.c e(RecyclerView.w wVar) {
        return a(wVar, 8);
    }

    public RecyclerView.f.c f(RecyclerView.w wVar) {
        return a(wVar, 4);
    }

    public void g(RecyclerView.w wVar) {
        a aVar = this.f3429a.get(wVar);
        if (aVar != null) {
            aVar.f3432b &= -2;
        }
    }

    public void h(RecyclerView.w wVar) {
        int c2 = this.f3430b.c() - 1;
        while (true) {
            if (c2 < 0) {
                break;
            } else if (wVar == this.f3430b.c(c2)) {
                this.f3430b.b(c2);
                break;
            } else {
                c2--;
            }
        }
        a remove = this.f3429a.remove(wVar);
        if (remove != null) {
            a.a(remove);
        }
    }

    public final RecyclerView.f.c a(RecyclerView.w wVar, int i2) {
        RecyclerView.f.c cVar;
        int b2 = this.f3429a.b((Object) wVar);
        if (b2 < 0) {
            return null;
        }
        a e2 = this.f3429a.e(b2);
        if (e2 != null) {
            int i3 = e2.f3432b;
            if ((i3 & i2) != 0) {
                e2.f3432b = (i2 ^ -1) & i3;
                if (i2 == 4) {
                    cVar = e2.f3433c;
                } else if (i2 == 8) {
                    cVar = e2.f3434d;
                } else {
                    throw new IllegalArgumentException("Must provide flag PRE or POST");
                }
                if ((e2.f3432b & 12) == 0) {
                    this.f3429a.d(b2);
                    a.a(e2);
                }
                return cVar;
            }
        }
        return null;
    }

    public void b(RecyclerView.w wVar, RecyclerView.f.c cVar) {
        a aVar = this.f3429a.get(wVar);
        if (aVar == null) {
            aVar = a.b();
            this.f3429a.put(wVar, aVar);
        }
        aVar.f3434d = cVar;
        aVar.f3432b |= 8;
    }

    public boolean c(RecyclerView.w wVar) {
        a aVar = this.f3429a.get(wVar);
        return (aVar == null || (aVar.f3432b & 4) == 0) ? false : true;
    }

    public void b() {
        a.a();
    }

    public void a(long j2, RecyclerView.w wVar) {
        this.f3430b.c(j2, wVar);
    }

    public void a(RecyclerView.w wVar, RecyclerView.f.c cVar) {
        a aVar = this.f3429a.get(wVar);
        if (aVar == null) {
            aVar = a.b();
            this.f3429a.put(wVar, aVar);
        }
        aVar.f3432b |= 2;
        aVar.f3433c = cVar;
    }

    public RecyclerView.w a(long j2) {
        return this.f3430b.b(j2);
    }

    public void a(RecyclerView.w wVar) {
        a aVar = this.f3429a.get(wVar);
        if (aVar == null) {
            aVar = a.b();
            this.f3429a.put(wVar, aVar);
        }
        aVar.f3432b |= 1;
    }

    public void a(b bVar) {
        for (int size = this.f3429a.size() - 1; size >= 0; size--) {
            RecyclerView.w c2 = this.f3429a.c(size);
            a d2 = this.f3429a.d(size);
            int i2 = d2.f3432b;
            if ((i2 & 3) == 3) {
                bVar.a(c2);
            } else if ((i2 & 1) != 0) {
                RecyclerView.f.c cVar = d2.f3433c;
                if (cVar == null) {
                    bVar.a(c2);
                } else {
                    bVar.b(c2, cVar, d2.f3434d);
                }
            } else if ((i2 & 14) == 14) {
                bVar.a(c2, d2.f3433c, d2.f3434d);
            } else if ((i2 & 12) == 12) {
                bVar.c(c2, d2.f3433c, d2.f3434d);
            } else if ((i2 & 4) != 0) {
                bVar.b(c2, d2.f3433c, null);
            } else if ((i2 & 8) != 0) {
                bVar.a(c2, d2.f3433c, d2.f3434d);
            }
            a.a(d2);
        }
    }
}
