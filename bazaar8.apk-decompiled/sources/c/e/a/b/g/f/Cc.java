package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzdp;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class Cc extends AbstractList<String> implements Cb, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    public final Cb f10146a;

    public Cc(Cb cb) {
        this.f10146a = cb;
    }

    public final void a(zzdp zzdp) {
        throw new UnsupportedOperationException();
    }

    public final Object d(int i2) {
        return this.f10146a.d(i2);
    }

    public final /* synthetic */ Object get(int i2) {
        return (String) this.f10146a.get(i2);
    }

    public final Iterator<String> iterator() {
        return new Ec(this);
    }

    public final ListIterator<String> listIterator(int i2) {
        return new Dc(this, i2);
    }

    public final int size() {
        return this.f10146a.size();
    }

    public final Cb u() {
        return this;
    }

    public final List<?> v() {
        return this.f10146a.v();
    }
}
