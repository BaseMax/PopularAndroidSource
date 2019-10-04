package b.w;

import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import b.f.j;
import b.w.a.a;
import b.w.o;
import java.util.Iterator;

/* compiled from: NavGraph */
public class r extends o implements Iterable<o> {

    /* renamed from: j  reason: collision with root package name */
    public final j<o> f3329j = new j<>();

    /* renamed from: k  reason: collision with root package name */
    public int f3330k;

    /* renamed from: l  reason: collision with root package name */
    public String f3331l;

    public r(K<? extends r> k2) {
        super((K<? extends o>) k2);
    }

    public void a(Context context, AttributeSet attributeSet) {
        super.a(context, attributeSet);
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, a.NavGraphNavigator);
        g(obtainAttributes.getResourceId(a.NavGraphNavigator_startDestination, 0));
        this.f3331l = o.a(context, this.f3330k);
        obtainAttributes.recycle();
    }

    public String c() {
        return d() != 0 ? super.c() : "the root navigation";
    }

    public final o f(int i2) {
        return a(i2, true);
    }

    public final void g(int i2) {
        this.f3330k = i2;
        this.f3331l = null;
    }

    public final int h() {
        return this.f3330k;
    }

    public final Iterator<o> iterator() {
        return new q(this);
    }

    public String g() {
        if (this.f3331l == null) {
            this.f3331l = Integer.toString(this.f3330k);
        }
        return this.f3331l;
    }

    public o.a a(Uri uri) {
        o.a a2 = super.a(uri);
        Iterator<o> it = iterator();
        while (it.hasNext()) {
            o.a a3 = it.next().a(uri);
            if (a3 != null && (a2 == null || a3.compareTo(a2) > 0)) {
                a2 = a3;
            }
        }
        return a2;
    }

    public final void a(o oVar) {
        if (oVar.d() != 0) {
            o a2 = this.f3329j.a(oVar.d());
            if (a2 != oVar) {
                if (oVar.getParent() == null) {
                    if (a2 != null) {
                        a2.a((r) null);
                    }
                    oVar.a(this);
                    this.f3329j.c(oVar.d(), oVar);
                    return;
                }
                throw new IllegalStateException("Destination already has a parent set. Call NavGraph.remove() to remove the previous parent.");
            }
            return;
        }
        throw new IllegalArgumentException("Destinations must have an id. Call setId() or include an android:id in your navigation XML.");
    }

    public final o a(int i2, boolean z) {
        o a2 = this.f3329j.a(i2);
        if (a2 != null) {
            return a2;
        }
        if (!z || getParent() == null) {
            return null;
        }
        return getParent().f(i2);
    }
}
