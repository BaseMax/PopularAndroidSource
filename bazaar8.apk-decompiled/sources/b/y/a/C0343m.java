package b.y.a;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import b.i.k.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: b.y.a.m  reason: case insensitive filesystem */
/* compiled from: DefaultItemAnimator */
public class C0343m extends P {

    /* renamed from: h  reason: collision with root package name */
    public static TimeInterpolator f3486h;

    /* renamed from: i  reason: collision with root package name */
    public ArrayList<RecyclerView.w> f3487i = new ArrayList<>();

    /* renamed from: j  reason: collision with root package name */
    public ArrayList<RecyclerView.w> f3488j = new ArrayList<>();

    /* renamed from: k  reason: collision with root package name */
    public ArrayList<b> f3489k = new ArrayList<>();

    /* renamed from: l  reason: collision with root package name */
    public ArrayList<a> f3490l = new ArrayList<>();
    public ArrayList<ArrayList<RecyclerView.w>> m = new ArrayList<>();
    public ArrayList<ArrayList<b>> n = new ArrayList<>();
    public ArrayList<ArrayList<a>> o = new ArrayList<>();
    public ArrayList<RecyclerView.w> p = new ArrayList<>();
    public ArrayList<RecyclerView.w> q = new ArrayList<>();
    public ArrayList<RecyclerView.w> r = new ArrayList<>();
    public ArrayList<RecyclerView.w> s = new ArrayList<>();

    /* renamed from: b.y.a.m$a */
    /* compiled from: DefaultItemAnimator */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public RecyclerView.w f3491a;

        /* renamed from: b  reason: collision with root package name */
        public RecyclerView.w f3492b;

        /* renamed from: c  reason: collision with root package name */
        public int f3493c;

        /* renamed from: d  reason: collision with root package name */
        public int f3494d;

        /* renamed from: e  reason: collision with root package name */
        public int f3495e;

        /* renamed from: f  reason: collision with root package name */
        public int f3496f;

        public a(RecyclerView.w wVar, RecyclerView.w wVar2) {
            this.f3491a = wVar;
            this.f3492b = wVar2;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f3491a + ", newHolder=" + this.f3492b + ", fromX=" + this.f3493c + ", fromY=" + this.f3494d + ", toX=" + this.f3495e + ", toY=" + this.f3496f + '}';
        }

        public a(RecyclerView.w wVar, RecyclerView.w wVar2, int i2, int i3, int i4, int i5) {
            this(wVar, wVar2);
            this.f3493c = i2;
            this.f3494d = i3;
            this.f3495e = i4;
            this.f3496f = i5;
        }
    }

    /* renamed from: b.y.a.m$b */
    /* compiled from: DefaultItemAnimator */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        public RecyclerView.w f3497a;

        /* renamed from: b  reason: collision with root package name */
        public int f3498b;

        /* renamed from: c  reason: collision with root package name */
        public int f3499c;

        /* renamed from: d  reason: collision with root package name */
        public int f3500d;

        /* renamed from: e  reason: collision with root package name */
        public int f3501e;

        public b(RecyclerView.w wVar, int i2, int i3, int i4, int i5) {
            this.f3497a = wVar;
            this.f3498b = i2;
            this.f3499c = i3;
            this.f3500d = i4;
            this.f3501e = i5;
        }
    }

    public boolean a(RecyclerView.w wVar, int i2, int i3, int i4, int i5) {
        View view = wVar.f891b;
        int translationX = i2 + ((int) view.getTranslationX());
        int translationY = i3 + ((int) wVar.f891b.getTranslationY());
        v(wVar);
        int i6 = i4 - translationX;
        int i7 = i5 - translationY;
        if (i6 == 0 && i7 == 0) {
            j(wVar);
            return false;
        }
        if (i6 != 0) {
            view.setTranslationX((float) (-i6));
        }
        if (i7 != 0) {
            view.setTranslationY((float) (-i7));
        }
        ArrayList<b> arrayList = this.f3489k;
        b bVar = new b(wVar, translationX, translationY, i4, i5);
        arrayList.add(bVar);
        return true;
    }

    public void b(RecyclerView.w wVar, int i2, int i3, int i4, int i5) {
        View view = wVar.f891b;
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        if (i6 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i7 != 0) {
            view.animate().translationY(0.0f);
        }
        ViewPropertyAnimator animate = view.animate();
        this.q.add(wVar);
        ViewPropertyAnimator duration = animate.setDuration(e());
        C0340j jVar = new C0340j(this, wVar, i6, view, i7, animate);
        duration.setListener(jVar).start();
    }

    public void d(RecyclerView.w wVar) {
        View view = wVar.f891b;
        view.animate().cancel();
        int size = this.f3489k.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            } else if (this.f3489k.get(size).f3497a == wVar) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                j(wVar);
                this.f3489k.remove(size);
            }
        }
        a((List<a>) this.f3490l, wVar);
        if (this.f3487i.remove(wVar)) {
            view.setAlpha(1.0f);
            l(wVar);
        }
        if (this.f3488j.remove(wVar)) {
            view.setAlpha(1.0f);
            h(wVar);
        }
        for (int size2 = this.o.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList = this.o.get(size2);
            a((List<a>) arrayList, wVar);
            if (arrayList.isEmpty()) {
                this.o.remove(size2);
            }
        }
        for (int size3 = this.n.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList2 = this.n.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (((b) arrayList2.get(size4)).f3497a == wVar) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    j(wVar);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.n.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.m.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList3 = this.m.get(size5);
            if (arrayList3.remove(wVar)) {
                view.setAlpha(1.0f);
                h(wVar);
                if (arrayList3.isEmpty()) {
                    this.m.remove(size5);
                }
            }
        }
        this.r.remove(wVar);
        this.p.remove(wVar);
        this.s.remove(wVar);
        this.q.remove(wVar);
        j();
    }

    public boolean f(RecyclerView.w wVar) {
        v(wVar);
        wVar.f891b.setAlpha(0.0f);
        this.f3488j.add(wVar);
        return true;
    }

    public boolean g(RecyclerView.w wVar) {
        v(wVar);
        this.f3487i.add(wVar);
        return true;
    }

    public void i() {
        boolean z = !this.f3487i.isEmpty();
        boolean z2 = !this.f3489k.isEmpty();
        boolean z3 = !this.f3490l.isEmpty();
        boolean z4 = !this.f3488j.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.w> it = this.f3487i.iterator();
            while (it.hasNext()) {
                u(it.next());
            }
            this.f3487i.clear();
            if (z2) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.f3489k);
                this.n.add(arrayList);
                this.f3489k.clear();
                C0335e eVar = new C0335e(this, arrayList);
                if (z) {
                    z.a(((b) arrayList.get(0)).f3497a.f891b, (Runnable) eVar, f());
                } else {
                    eVar.run();
                }
            }
            if (z3) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(this.f3490l);
                this.o.add(arrayList2);
                this.f3490l.clear();
                C0336f fVar = new C0336f(this, arrayList2);
                if (z) {
                    z.a(((a) arrayList2.get(0)).f3491a.f891b, (Runnable) fVar, f());
                } else {
                    fVar.run();
                }
            }
            if (z4) {
                ArrayList arrayList3 = new ArrayList();
                arrayList3.addAll(this.f3488j);
                this.m.add(arrayList3);
                this.f3488j.clear();
                C0337g gVar = new C0337g(this, arrayList3);
                if (z || z2 || z3) {
                    long j2 = 0;
                    long f2 = z ? f() : 0;
                    long e2 = z2 ? e() : 0;
                    if (z3) {
                        j2 = d();
                    }
                    z.a(((RecyclerView.w) arrayList3.get(0)).f891b, (Runnable) gVar, f2 + Math.max(e2, j2));
                } else {
                    gVar.run();
                }
            }
        }
    }

    public void j() {
        if (!g()) {
            a();
        }
    }

    public void t(RecyclerView.w wVar) {
        View view = wVar.f891b;
        ViewPropertyAnimator animate = view.animate();
        this.p.add(wVar);
        animate.alpha(1.0f).setDuration(c()).setListener(new C0339i(this, wVar, view, animate)).start();
    }

    public final void u(RecyclerView.w wVar) {
        View view = wVar.f891b;
        ViewPropertyAnimator animate = view.animate();
        this.r.add(wVar);
        animate.setDuration(f()).alpha(0.0f).setListener(new C0338h(this, wVar, animate, view)).start();
    }

    public final void v(RecyclerView.w wVar) {
        if (f3486h == null) {
            f3486h = new ValueAnimator().getInterpolator();
        }
        wVar.f891b.animate().setInterpolator(f3486h);
        d(wVar);
    }

    public boolean g() {
        return !this.f3488j.isEmpty() || !this.f3490l.isEmpty() || !this.f3489k.isEmpty() || !this.f3487i.isEmpty() || !this.q.isEmpty() || !this.r.isEmpty() || !this.p.isEmpty() || !this.s.isEmpty() || !this.n.isEmpty() || !this.m.isEmpty() || !this.o.isEmpty();
    }

    public final void b(a aVar) {
        RecyclerView.w wVar = aVar.f3491a;
        if (wVar != null) {
            a(aVar, wVar);
        }
        RecyclerView.w wVar2 = aVar.f3492b;
        if (wVar2 != null) {
            a(aVar, wVar2);
        }
    }

    public boolean a(RecyclerView.w wVar, RecyclerView.w wVar2, int i2, int i3, int i4, int i5) {
        if (wVar == wVar2) {
            return a(wVar, i2, i3, i4, i5);
        }
        float translationX = wVar.f891b.getTranslationX();
        float translationY = wVar.f891b.getTranslationY();
        float alpha = wVar.f891b.getAlpha();
        v(wVar);
        int i6 = (int) (((float) (i4 - i2)) - translationX);
        int i7 = (int) (((float) (i5 - i3)) - translationY);
        wVar.f891b.setTranslationX(translationX);
        wVar.f891b.setTranslationY(translationY);
        wVar.f891b.setAlpha(alpha);
        if (wVar2 != null) {
            v(wVar2);
            wVar2.f891b.setTranslationX((float) (-i6));
            wVar2.f891b.setTranslationY((float) (-i7));
            wVar2.f891b.setAlpha(0.0f);
        }
        ArrayList<a> arrayList = this.f3490l;
        a aVar = new a(wVar, wVar2, i2, i3, i4, i5);
        arrayList.add(aVar);
        return true;
    }

    public void b() {
        int size = this.f3489k.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            b bVar = this.f3489k.get(size);
            View view = bVar.f3497a.f891b;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            j(bVar.f3497a);
            this.f3489k.remove(size);
        }
        for (int size2 = this.f3487i.size() - 1; size2 >= 0; size2--) {
            l(this.f3487i.get(size2));
            this.f3487i.remove(size2);
        }
        int size3 = this.f3488j.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.w wVar = this.f3488j.get(size3);
            wVar.f891b.setAlpha(1.0f);
            h(wVar);
            this.f3488j.remove(size3);
        }
        for (int size4 = this.f3490l.size() - 1; size4 >= 0; size4--) {
            b(this.f3490l.get(size4));
        }
        this.f3490l.clear();
        if (g()) {
            for (int size5 = this.n.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList = this.n.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    b bVar2 = (b) arrayList.get(size6);
                    View view2 = bVar2.f3497a.f891b;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    j(bVar2.f3497a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.n.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.m.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList2 = this.m.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.w wVar2 = (RecyclerView.w) arrayList2.get(size8);
                    wVar2.f891b.setAlpha(1.0f);
                    h(wVar2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.m.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.o.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList3 = this.o.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    b((a) arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.o.remove(arrayList3);
                    }
                }
            }
            a((List<RecyclerView.w>) this.r);
            a((List<RecyclerView.w>) this.q);
            a((List<RecyclerView.w>) this.p);
            a((List<RecyclerView.w>) this.s);
            a();
        }
    }

    public void a(a aVar) {
        View view;
        RecyclerView.w wVar = aVar.f3491a;
        View view2 = null;
        if (wVar == null) {
            view = null;
        } else {
            view = wVar.f891b;
        }
        RecyclerView.w wVar2 = aVar.f3492b;
        if (wVar2 != null) {
            view2 = wVar2.f891b;
        }
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(d());
            this.s.add(aVar.f3491a);
            duration.translationX((float) (aVar.f3495e - aVar.f3493c));
            duration.translationY((float) (aVar.f3496f - aVar.f3494d));
            duration.alpha(0.0f).setListener(new C0341k(this, aVar, duration, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator animate = view2.animate();
            this.s.add(aVar.f3492b);
            animate.translationX(0.0f).translationY(0.0f).setDuration(d()).alpha(1.0f).setListener(new C0342l(this, aVar, animate, view2)).start();
        }
    }

    public final void a(List<a> list, RecyclerView.w wVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            a aVar = list.get(size);
            if (a(aVar, wVar) && aVar.f3491a == null && aVar.f3492b == null) {
                list.remove(aVar);
            }
        }
    }

    public final boolean a(a aVar, RecyclerView.w wVar) {
        boolean z = false;
        if (aVar.f3492b == wVar) {
            aVar.f3492b = null;
        } else if (aVar.f3491a != wVar) {
            return false;
        } else {
            aVar.f3491a = null;
            z = true;
        }
        wVar.f891b.setAlpha(1.0f);
        wVar.f891b.setTranslationX(0.0f);
        wVar.f891b.setTranslationY(0.0f);
        a(wVar, z);
        return true;
    }

    public void a(List<RecyclerView.w> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).f891b.animate().cancel();
        }
    }

    public boolean a(RecyclerView.w wVar, List<Object> list) {
        return !list.isEmpty() || super.a(wVar, list);
    }
}
