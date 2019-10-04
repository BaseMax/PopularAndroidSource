package b.i.k;

import android.view.View;
import android.view.ViewGroup;
import h.j.d;
import java.util.Iterator;

/* compiled from: ViewGroup.kt */
public final class C implements d<View> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ViewGroup f2763a;

    public C(ViewGroup viewGroup) {
        this.f2763a = viewGroup;
    }

    public Iterator<View> iterator() {
        return E.b(this.f2763a);
    }
}
