package b.w;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import b.i.a.t;
import java.util.ArrayDeque;
import java.util.Iterator;

/* renamed from: b.w.n  reason: case insensitive filesystem */
/* compiled from: NavDeepLinkBuilder */
public final class C0317n {

    /* renamed from: a  reason: collision with root package name */
    public final Context f3310a;

    /* renamed from: b  reason: collision with root package name */
    public final Intent f3311b;

    /* renamed from: c  reason: collision with root package name */
    public r f3312c;

    /* renamed from: d  reason: collision with root package name */
    public int f3313d;

    public C0317n(Context context) {
        this.f3310a = context;
        Context context2 = this.f3310a;
        if (context2 instanceof Activity) {
            this.f3311b = new Intent(context2, context2.getClass());
        } else {
            this.f3311b = context2.getPackageManager().getLaunchIntentForPackage(this.f3310a.getPackageName()) == null ? new Intent() : context2.getPackageManager().getLaunchIntentForPackage(this.f3310a.getPackageName());
        }
        this.f3311b.addFlags(268468224);
    }

    public C0317n a(int i2) {
        this.f3313d = i2;
        if (this.f3312c != null) {
            b();
        }
        return this;
    }

    public final void b() {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(this.f3312c);
        o oVar = null;
        while (!arrayDeque.isEmpty() && oVar == null) {
            o oVar2 = (o) arrayDeque.poll();
            if (oVar2.d() == this.f3313d) {
                oVar = oVar2;
            } else if (oVar2 instanceof r) {
                Iterator<o> it = ((r) oVar2).iterator();
                while (it.hasNext()) {
                    arrayDeque.add(it.next());
                }
            }
        }
        if (oVar != null) {
            this.f3311b.putExtra("android-support-nav:controller:deepLinkIds", oVar.a());
            return;
        }
        String a2 = o.a(this.f3310a, this.f3313d);
        throw new IllegalArgumentException("navigation destination " + a2 + " is unknown to this NavController");
    }

    public t a() {
        if (this.f3311b.getIntArrayExtra("android-support-nav:controller:deepLinkIds") != null) {
            t a2 = t.a(this.f3310a);
            a2.b(new Intent(this.f3311b));
            for (int i2 = 0; i2 < a2.a(); i2++) {
                a2.a(i2).putExtra("android-support-nav:controller:deepLinkIntent", this.f3311b);
            }
            return a2;
        } else if (this.f3312c == null) {
            throw new IllegalStateException("You must call setGraph() before constructing the deep link");
        } else {
            throw new IllegalStateException("You must call setDestination() before constructing the deep link");
        }
    }

    public C0317n(C0313j jVar) {
        this(jVar.b());
        this.f3312c = jVar.e();
    }
}
