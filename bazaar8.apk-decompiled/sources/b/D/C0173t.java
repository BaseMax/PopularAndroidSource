package b.D;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import b.D.E;
import b.o.a.Q;
import java.util.ArrayList;
import java.util.List;

/* renamed from: b.D.t  reason: case insensitive filesystem */
/* compiled from: FragmentTransitionSupport */
public class C0173t extends Q {
    public boolean a(Object obj) {
        return obj instanceof E;
    }

    public Object b(Object obj) {
        if (obj != null) {
            return ((E) obj).clone();
        }
        return null;
    }

    public Object c(Object obj) {
        if (obj == null) {
            return null;
        }
        K k2 = new K();
        k2.a((E) obj);
        return k2;
    }

    public void a(Object obj, ArrayList<View> arrayList) {
        E e2 = (E) obj;
        if (e2 != null) {
            int i2 = 0;
            if (e2 instanceof K) {
                K k2 = (K) e2;
                int u = k2.u();
                while (i2 < u) {
                    a((Object) k2.a(i2), arrayList);
                    i2++;
                }
            } else if (!a(e2) && Q.a((List) e2.q())) {
                int size = arrayList.size();
                while (i2 < size) {
                    e2.a(arrayList.get(i2));
                    i2++;
                }
            }
        }
    }

    public void b(Object obj, View view, ArrayList<View> arrayList) {
        K k2 = (K) obj;
        List<View> q = k2.q();
        q.clear();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Q.a(q, arrayList.get(i2));
        }
        q.add(view);
        arrayList.add(view);
        a((Object) k2, arrayList);
    }

    public void c(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            a(view, rect);
            ((E) obj).a((E.b) new C0170p(this, rect));
        }
    }

    public Object b(Object obj, Object obj2, Object obj3) {
        K k2 = new K();
        if (obj != null) {
            k2.a((E) obj);
        }
        if (obj2 != null) {
            k2.a((E) obj2);
        }
        if (obj3 != null) {
            k2.a((E) obj3);
        }
        return k2;
    }

    public static boolean a(E e2) {
        return !Q.a((List) e2.j()) || !Q.a((List) e2.k()) || !Q.a((List) e2.p());
    }

    public void b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        K k2 = (K) obj;
        if (k2 != null) {
            k2.q().clear();
            k2.q().addAll(arrayList2);
            a((Object) k2, arrayList, arrayList2);
        }
    }

    public void a(Object obj, View view, ArrayList<View> arrayList) {
        ((E) obj).a((E.c) new C0171q(this, view, arrayList));
    }

    public Object a(Object obj, Object obj2, Object obj3) {
        E e2 = (E) obj;
        E e3 = (E) obj2;
        E e4 = (E) obj3;
        if (e2 != null && e3 != null) {
            K k2 = new K();
            k2.a(e2);
            k2.a(e3);
            k2.b(1);
            e2 = k2;
        } else if (e2 == null) {
            e2 = e3 != null ? e3 : null;
        }
        if (e4 == null) {
            return e2;
        }
        K k3 = new K();
        if (e2 != null) {
            k3.a(e2);
        }
        k3.a(e4);
        return k3;
    }

    public void b(Object obj, View view) {
        if (obj != null) {
            ((E) obj).d(view);
        }
    }

    public void a(ViewGroup viewGroup, Object obj) {
        H.a(viewGroup, (E) obj);
    }

    public void a(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        r rVar = new r(this, obj2, arrayList, obj3, arrayList2, obj4, arrayList3);
        ((E) obj).a((E.c) rVar);
    }

    public void a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        int i2;
        E e2 = (E) obj;
        int i3 = 0;
        if (e2 instanceof K) {
            K k2 = (K) e2;
            int u = k2.u();
            while (i3 < u) {
                a((Object) k2.a(i3), arrayList, arrayList2);
                i3++;
            }
        } else if (!a(e2)) {
            List<View> q = e2.q();
            if (q.size() == arrayList.size() && q.containsAll(arrayList)) {
                if (arrayList2 == null) {
                    i2 = 0;
                } else {
                    i2 = arrayList2.size();
                }
                while (i3 < i2) {
                    e2.a(arrayList2.get(i3));
                    i3++;
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    e2.d(arrayList.get(size));
                }
            }
        }
    }

    public void a(Object obj, View view) {
        if (obj != null) {
            ((E) obj).a(view);
        }
    }

    public void a(Object obj, Rect rect) {
        if (obj != null) {
            ((E) obj).a((E.b) new C0172s(this, rect));
        }
    }
}
