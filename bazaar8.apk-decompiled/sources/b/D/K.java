package b.D;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import b.D.E;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: TransitionSet */
public class K extends E {
    public ArrayList<E> K = new ArrayList<>();
    public boolean L = true;
    public int M;
    public boolean N = false;
    public int O = 0;

    /* compiled from: TransitionSet */
    static class a extends F {

        /* renamed from: a  reason: collision with root package name */
        public K f1104a;

        public a(K k2) {
            this.f1104a = k2;
        }

        public void a(E e2) {
            K k2 = this.f1104a;
            if (!k2.N) {
                k2.t();
                this.f1104a.N = true;
            }
        }

        public void c(E e2) {
            K k2 = this.f1104a;
            k2.M--;
            if (k2.M == 0) {
                k2.N = false;
                k2.a();
            }
            e2.b((E.c) this);
        }
    }

    public void c(M m) {
        if (b(m.f1109b)) {
            Iterator<E> it = this.K.iterator();
            while (it.hasNext()) {
                E next = it.next();
                if (next.b(m.f1109b)) {
                    next.c(m);
                    m.f1110c.add(next);
                }
            }
        }
    }

    public void e(View view) {
        super.e(view);
        int size = this.K.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.K.get(i2).e(view);
        }
    }

    public void s() {
        if (this.K.isEmpty()) {
            t();
            a();
            return;
        }
        v();
        if (!this.L) {
            for (int i2 = 1; i2 < this.K.size(); i2++) {
                this.K.get(i2 - 1).a((E.c) new J(this, this.K.get(i2)));
            }
            E e2 = this.K.get(0);
            if (e2 != null) {
                e2.s();
            }
        } else {
            Iterator<E> it = this.K.iterator();
            while (it.hasNext()) {
                it.next().s();
            }
        }
    }

    public int u() {
        return this.K.size();
    }

    public final void v() {
        a aVar = new a(this);
        Iterator<E> it = this.K.iterator();
        while (it.hasNext()) {
            it.next().a((E.c) aVar);
        }
        this.M = this.K.size();
    }

    public E clone() {
        K k2 = (K) super.clone();
        k2.K = new ArrayList<>();
        int size = this.K.size();
        for (int i2 = 0; i2 < size; i2++) {
            k2.a(this.K.get(i2).clone());
        }
        return k2;
    }

    public K d(View view) {
        for (int i2 = 0; i2 < this.K.size(); i2++) {
            this.K.get(i2).d(view);
        }
        super.d(view);
        return this;
    }

    public K b(int i2) {
        if (i2 == 0) {
            this.L = true;
        } else if (i2 == 1) {
            this.L = false;
        } else {
            throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i2);
        }
        return this;
    }

    public K a(E e2) {
        this.K.add(e2);
        e2.u = this;
        long j2 = this.f1083f;
        if (j2 >= 0) {
            e2.a(j2);
        }
        if ((this.O & 1) != 0) {
            e2.a(d());
        }
        if ((this.O & 2) != 0) {
            e2.a(g());
        }
        if ((this.O & 4) != 0) {
            e2.a(f());
        }
        if ((this.O & 8) != 0) {
            e2.a(c());
        }
        return this;
    }

    public K b(long j2) {
        super.b(j2);
        return this;
    }

    public void c(View view) {
        super.c(view);
        int size = this.K.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.K.get(i2).c(view);
        }
    }

    public K b(E.c cVar) {
        super.b(cVar);
        return this;
    }

    public void b(M m) {
        super.b(m);
        int size = this.K.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.K.get(i2).b(m);
        }
    }

    public E a(int i2) {
        if (i2 < 0 || i2 >= this.K.size()) {
            return null;
        }
        return this.K.get(i2);
    }

    public K a(long j2) {
        super.a(j2);
        if (this.f1083f >= 0) {
            int size = this.K.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.K.get(i2).a(j2);
            }
        }
        return this;
    }

    public K a(TimeInterpolator timeInterpolator) {
        this.O |= 1;
        ArrayList<E> arrayList = this.K;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.K.get(i2).a(timeInterpolator);
            }
        }
        super.a(timeInterpolator);
        return this;
    }

    public K a(View view) {
        for (int i2 = 0; i2 < this.K.size(); i2++) {
            this.K.get(i2).a(view);
        }
        super.a(view);
        return this;
    }

    public K a(E.c cVar) {
        super.a(cVar);
        return this;
    }

    public void a(C0175v vVar) {
        super.a(vVar);
        this.O |= 4;
        for (int i2 = 0; i2 < this.K.size(); i2++) {
            this.K.get(i2).a(vVar);
        }
    }

    public void a(ViewGroup viewGroup, N n, N n2, ArrayList<M> arrayList, ArrayList<M> arrayList2) {
        long i2 = i();
        int size = this.K.size();
        for (int i3 = 0; i3 < size; i3++) {
            E e2 = this.K.get(i3);
            if (i2 > 0 && (this.L || i3 == 0)) {
                long i4 = e2.i();
                if (i4 > 0) {
                    e2.b(i4 + i2);
                } else {
                    e2.b(i2);
                }
            }
            e2.a(viewGroup, n, n2, arrayList, arrayList2);
        }
    }

    public void a(M m) {
        if (b(m.f1109b)) {
            Iterator<E> it = this.K.iterator();
            while (it.hasNext()) {
                E next = it.next();
                if (next.b(m.f1109b)) {
                    next.a(m);
                    m.f1110c.add(next);
                }
            }
        }
    }

    public void a(I i2) {
        super.a(i2);
        this.O |= 2;
        int size = this.K.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.K.get(i3).a(i2);
        }
    }

    public void a(E.b bVar) {
        super.a(bVar);
        this.O |= 8;
        int size = this.K.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.K.get(i2).a(bVar);
        }
    }

    public String a(String str) {
        String a2 = super.a(str);
        for (int i2 = 0; i2 < this.K.size(); i2++) {
            StringBuilder sb = new StringBuilder();
            sb.append(a2);
            sb.append("\n");
            sb.append(this.K.get(i2).a(str + "  "));
            a2 = sb.toString();
        }
        return a2;
    }
}
