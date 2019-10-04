package c.e.a.b.h.b;

import com.google.android.gms.measurement.internal.zzag;
import java.util.Iterator;

/* renamed from: c.e.a.b.h.b.h  reason: case insensitive filesystem */
public final class C0922h implements Iterator<String> {

    /* renamed from: a  reason: collision with root package name */
    public Iterator<String> f10911a = this.f10912b.f13231a.keySet().iterator();

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ zzag f10912b;

    public C0922h(zzag zzag) {
        this.f10912b = zzag;
    }

    public final boolean hasNext() {
        return this.f10911a.hasNext();
    }

    public final /* synthetic */ Object next() {
        return this.f10911a.next();
    }

    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
