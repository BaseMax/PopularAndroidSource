package b.l;

import android.util.Log;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: MergedDataBinderMapper */
public class i extends C0274d {

    /* renamed from: a  reason: collision with root package name */
    public Set<Class<? extends C0274d>> f2945a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    public List<C0274d> f2946b = new CopyOnWriteArrayList();

    /* renamed from: c  reason: collision with root package name */
    public List<String> f2947c = new CopyOnWriteArrayList();

    public void a(C0274d dVar) {
        if (this.f2945a.add(dVar.getClass())) {
            this.f2946b.add(dVar);
            for (C0274d a2 : dVar.a()) {
                a(a2);
            }
        }
    }

    public final boolean b() {
        boolean z = false;
        for (String next : this.f2947c) {
            try {
                Class<?> cls = Class.forName(next);
                if (C0274d.class.isAssignableFrom(cls)) {
                    a((C0274d) cls.newInstance());
                    this.f2947c.remove(next);
                    z = true;
                }
            } catch (ClassNotFoundException unused) {
            } catch (IllegalAccessException e2) {
                Log.e("MergedDataBinderMapper", "unable to add feature mapper for " + next, e2);
            } catch (InstantiationException e3) {
                Log.e("MergedDataBinderMapper", "unable to add feature mapper for " + next, e3);
            }
        }
        return z;
    }

    public ViewDataBinding a(C0276f fVar, View view, int i2) {
        for (C0274d a2 : this.f2946b) {
            ViewDataBinding a3 = a2.a(fVar, view, i2);
            if (a3 != null) {
                return a3;
            }
        }
        if (b()) {
            return a(fVar, view, i2);
        }
        return null;
    }

    public ViewDataBinding a(C0276f fVar, View[] viewArr, int i2) {
        for (C0274d a2 : this.f2946b) {
            ViewDataBinding a3 = a2.a(fVar, viewArr, i2);
            if (a3 != null) {
                return a3;
            }
        }
        if (b()) {
            return a(fVar, viewArr, i2);
        }
        return null;
    }
}
