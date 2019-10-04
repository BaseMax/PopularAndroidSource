package b.D;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import b.D.E;
import b.f.C0243b;
import b.i.k.z;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: TransitionManager */
public class H {

    /* renamed from: a  reason: collision with root package name */
    public static E f1097a = new C0156b();

    /* renamed from: b  reason: collision with root package name */
    public static ThreadLocal<WeakReference<C0243b<ViewGroup, ArrayList<E>>>> f1098b = new ThreadLocal<>();

    /* renamed from: c  reason: collision with root package name */
    public static ArrayList<ViewGroup> f1099c = new ArrayList<>();

    /* compiled from: TransitionManager */
    private static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        public E f1100a;

        /* renamed from: b  reason: collision with root package name */
        public ViewGroup f1101b;

        public a(E e2, ViewGroup viewGroup) {
            this.f1100a = e2;
            this.f1101b = viewGroup;
        }

        public final void a() {
            this.f1101b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f1101b.removeOnAttachStateChangeListener(this);
        }

        public boolean onPreDraw() {
            a();
            if (!H.f1099c.remove(this.f1101b)) {
                return true;
            }
            C0243b<ViewGroup, ArrayList<E>> a2 = H.a();
            ArrayList arrayList = a2.get(this.f1101b);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList();
                a2.put(this.f1101b, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.f1100a);
            this.f1100a.a((E.c) new G(this, a2));
            this.f1100a.a(this.f1101b, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((E) it.next()).e(this.f1101b);
                }
            }
            this.f1100a.a(this.f1101b);
            return true;
        }

        public void onViewAttachedToWindow(View view) {
        }

        public void onViewDetachedFromWindow(View view) {
            a();
            H.f1099c.remove(this.f1101b);
            ArrayList arrayList = H.a().get(this.f1101b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((E) it.next()).e(this.f1101b);
                }
            }
            this.f1100a.a(true);
        }
    }

    public static C0243b<ViewGroup, ArrayList<E>> a() {
        WeakReference weakReference = f1098b.get();
        if (weakReference != null) {
            C0243b<ViewGroup, ArrayList<E>> bVar = (C0243b) weakReference.get();
            if (bVar != null) {
                return bVar;
            }
        }
        C0243b<ViewGroup, ArrayList<E>> bVar2 = new C0243b<>();
        f1098b.set(new WeakReference(bVar2));
        return bVar2;
    }

    public static void b(ViewGroup viewGroup, E e2) {
        if (e2 != null && viewGroup != null) {
            a aVar = new a(e2, viewGroup);
            viewGroup.addOnAttachStateChangeListener(aVar);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
        }
    }

    public static void c(ViewGroup viewGroup, E e2) {
        ArrayList arrayList = a().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((E) it.next()).c((View) viewGroup);
            }
        }
        if (e2 != null) {
            e2.a(viewGroup, true);
        }
        A a2 = A.a(viewGroup);
        if (a2 != null) {
            a2.a();
        }
    }

    public static void a(ViewGroup viewGroup, E e2) {
        if (!f1099c.contains(viewGroup) && z.B(viewGroup)) {
            f1099c.add(viewGroup);
            if (e2 == null) {
                e2 = f1097a;
            }
            E clone = e2.clone();
            c(viewGroup, clone);
            A.a(viewGroup, null);
            b(viewGroup, clone);
        }
    }
}
