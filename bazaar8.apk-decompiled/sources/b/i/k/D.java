package b.i.k;

import android.view.View;
import android.view.ViewGroup;
import h.f.b.a.b;
import java.util.Iterator;

/* compiled from: ViewGroup.kt */
public final class D implements Iterator<View>, b {

    /* renamed from: a  reason: collision with root package name */
    public int f2764a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ViewGroup f2765b;

    public D(ViewGroup viewGroup) {
        this.f2765b = viewGroup;
    }

    public boolean hasNext() {
        return this.f2764a < this.f2765b.getChildCount();
    }

    public void remove() {
        this.f2764a--;
        this.f2765b.removeViewAt(this.f2764a);
    }

    public View next() {
        ViewGroup viewGroup = this.f2765b;
        int i2 = this.f2764a;
        this.f2764a = i2 + 1;
        View childAt = viewGroup.getChildAt(i2);
        if (childAt != null) {
            return childAt;
        }
        throw new IndexOutOfBoundsException();
    }
}
