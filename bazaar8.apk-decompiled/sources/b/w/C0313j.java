package b.w;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import androidx.activity.OnBackPressedDispatcher;
import b.a.d;
import b.i.a.t;
import b.r.H;
import b.r.k;
import b.w.K;
import b.w.o;
import b.w.w;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: b.w.j  reason: case insensitive filesystem */
/* compiled from: NavController */
public class C0313j {

    /* renamed from: a  reason: collision with root package name */
    public final Context f3292a;

    /* renamed from: b  reason: collision with root package name */
    public Activity f3293b;

    /* renamed from: c  reason: collision with root package name */
    public v f3294c;

    /* renamed from: d  reason: collision with root package name */
    public r f3295d;

    /* renamed from: e  reason: collision with root package name */
    public Bundle f3296e;

    /* renamed from: f  reason: collision with root package name */
    public String[] f3297f;

    /* renamed from: g  reason: collision with root package name */
    public int[] f3298g;

    /* renamed from: h  reason: collision with root package name */
    public Parcelable[] f3299h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f3300i;

    /* renamed from: j  reason: collision with root package name */
    public final Deque<C0311h> f3301j = new ArrayDeque();

    /* renamed from: k  reason: collision with root package name */
    public k f3302k;

    /* renamed from: l  reason: collision with root package name */
    public C0315l f3303l;
    public final L m = new L();
    public final CopyOnWriteArrayList<a> n = new CopyOnWriteArrayList<>();
    public final d o = new C0312i(this, false);
    public boolean p = true;

    /* renamed from: b.w.j$a */
    /* compiled from: NavController */
    public interface a {
        void a(C0313j jVar, o oVar, Bundle bundle);
    }

    public C0313j(Context context) {
        this.f3292a = context;
        while (true) {
            if (!(context instanceof ContextWrapper)) {
                break;
            } else if (context instanceof Activity) {
                this.f3293b = (Activity) context;
                break;
            } else {
                context = ((ContextWrapper) context).getBaseContext();
            }
        }
        L l2 = this.m;
        l2.a((K<? extends o>) new s(l2));
        this.m.a((K<? extends o>) new C0306c(this.f3292a));
    }

    public void a(a aVar) {
        if (!this.f3301j.isEmpty()) {
            C0311h peekLast = this.f3301j.peekLast();
            aVar.a(this, peekLast.b(), peekLast.a());
        }
        this.n.add(aVar);
    }

    public Context b() {
        return this.f3292a;
    }

    public void c(int i2) {
        b(i2, (Bundle) null);
    }

    public final int d() {
        int i2 = 0;
        for (C0311h b2 : this.f3301j) {
            if (!(b2.b() instanceof r)) {
                i2++;
            }
        }
        return i2;
    }

    public r e() {
        r rVar = this.f3295d;
        if (rVar != null) {
            return rVar;
        }
        throw new IllegalStateException("You must call setGraph() before calling getGraph()");
    }

    public v f() {
        if (this.f3294c == null) {
            this.f3294c = new v(this.f3292a, this.m);
        }
        return this.f3294c;
    }

    public L g() {
        return this.m;
    }

    public boolean h() {
        if (d() != 1) {
            return i();
        }
        o c2 = c();
        int d2 = c2.d();
        for (r parent = c2.getParent(); parent != null; parent = parent.getParent()) {
            if (parent.h() != d2) {
                C0317n nVar = new C0317n(this);
                nVar.a(parent.d());
                nVar.a().b();
                Activity activity = this.f3293b;
                if (activity != null) {
                    activity.finish();
                }
                return true;
            }
            d2 = parent.d();
        }
        return false;
    }

    public boolean i() {
        if (this.f3301j.isEmpty()) {
            return false;
        }
        return a(c().d(), true);
    }

    public Bundle j() {
        Bundle bundle;
        ArrayList arrayList = new ArrayList();
        Bundle bundle2 = new Bundle();
        for (Map.Entry next : this.m.a().entrySet()) {
            String str = (String) next.getKey();
            Bundle b2 = ((K) next.getValue()).b();
            if (b2 != null) {
                arrayList.add(str);
                bundle2.putBundle(str, b2);
            }
        }
        if (!arrayList.isEmpty()) {
            bundle = new Bundle();
            bundle2.putStringArrayList("android-support-nav:controller:navigatorState:names", arrayList);
            bundle.putBundle("android-support-nav:controller:navigatorState", bundle2);
        } else {
            bundle = null;
        }
        if (!this.f3301j.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            String[] strArr = new String[this.f3301j.size()];
            int[] iArr = new int[this.f3301j.size()];
            Parcelable[] parcelableArr = new Parcelable[this.f3301j.size()];
            int i2 = 0;
            for (C0311h next2 : this.f3301j) {
                strArr[i2] = next2.f3289c.toString();
                iArr[i2] = next2.b().d();
                parcelableArr[i2] = next2.a();
                i2++;
            }
            bundle.putStringArray("android-support-nav:controller:backStackUUIDs", strArr);
            bundle.putIntArray("android-support-nav:controller:backStackIds", iArr);
            bundle.putParcelableArray("android-support-nav:controller:backStackArgs", parcelableArr);
        }
        if (this.f3300i) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android-support-nav:controller:deepLinkHandled", this.f3300i);
        }
        return bundle;
    }

    public final void k() {
        d dVar = this.o;
        boolean z = true;
        if (!this.p || d() <= 1) {
            z = false;
        }
        dVar.a(z);
    }

    public boolean b(int i2, boolean z) {
        boolean z2;
        boolean z3 = false;
        if (this.f3301j.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<C0311h> descendingIterator = this.f3301j.descendingIterator();
        while (true) {
            if (!descendingIterator.hasNext()) {
                z2 = false;
                break;
            }
            o b2 = descendingIterator.next().b();
            K a2 = this.m.a(b2.e());
            if (z || b2.d() != i2) {
                arrayList.add(a2);
            }
            if (b2.d() == i2) {
                z2 = true;
                break;
            }
        }
        if (!z2) {
            String a3 = o.a(this.f3292a, i2);
            Log.i("NavController", "Ignoring popBackStack to destination " + a3 + " as it was not found on the current back stack");
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext() && ((K) it.next()).c()) {
            C0311h removeLast = this.f3301j.removeLast();
            C0315l lVar = this.f3303l;
            if (lVar != null) {
                lVar.a(removeLast.f3289c);
            }
            z3 = true;
        }
        k();
        return z3;
    }

    public o c() {
        if (this.f3301j.isEmpty()) {
            return null;
        }
        return this.f3301j.getLast().b();
    }

    public boolean a(int i2, boolean z) {
        return b(i2, z) && a();
    }

    public final boolean a() {
        while (!this.f3301j.isEmpty() && (this.f3301j.peekLast().b() instanceof r)) {
            if (!b(this.f3301j.peekLast().b().d(), true)) {
                break;
            }
        }
        if (this.f3301j.isEmpty()) {
            return false;
        }
        C0311h peekLast = this.f3301j.peekLast();
        Iterator<a> it = this.n.iterator();
        while (it.hasNext()) {
            it.next().a(this, peekLast.b(), peekLast.a());
        }
        return true;
    }

    public void a(r rVar, Bundle bundle) {
        r rVar2 = this.f3295d;
        if (rVar2 != null) {
            b(rVar2.d(), true);
        }
        this.f3295d = rVar;
        a(bundle);
    }

    public void b(int i2, Bundle bundle) {
        a(f().a(i2), bundle);
    }

    public final void a(Bundle bundle) {
        Bundle bundle2 = this.f3296e;
        if (bundle2 != null) {
            ArrayList<String> stringArrayList = bundle2.getStringArrayList("android-support-nav:controller:navigatorState:names");
            if (stringArrayList != null) {
                Iterator<String> it = stringArrayList.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    K a2 = this.m.a(next);
                    Bundle bundle3 = this.f3296e.getBundle(next);
                    if (bundle3 != null) {
                        a2.a(bundle3);
                    }
                }
            }
        }
        boolean z = false;
        if (this.f3297f != null) {
            int i2 = 0;
            while (true) {
                String[] strArr = this.f3297f;
                if (i2 >= strArr.length) {
                    k();
                    this.f3297f = null;
                    this.f3298g = null;
                    this.f3299h = null;
                    break;
                }
                UUID fromString = UUID.fromString(strArr[i2]);
                int i3 = this.f3298g[i2];
                Bundle bundle4 = (Bundle) this.f3299h[i2];
                o a3 = a(i3);
                if (a3 != null) {
                    if (bundle4 != null) {
                        bundle4.setClassLoader(this.f3292a.getClassLoader());
                    }
                    this.f3301j.add(new C0311h(fromString, a3, bundle4, this.f3303l));
                    i2++;
                } else {
                    throw new IllegalStateException("unknown destination during restore: " + this.f3292a.getResources().getResourceName(i3));
                }
            }
        }
        if (this.f3295d != null && this.f3301j.isEmpty()) {
            if (!this.f3300i) {
                Activity activity = this.f3293b;
                if (activity != null && a(activity.getIntent())) {
                    z = true;
                }
            }
            if (!z) {
                a((o) this.f3295d, bundle, (w) null, (K.a) null);
            }
        }
    }

    public void b(int i2) {
        a(i2, (Bundle) null);
    }

    public void b(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(this.f3292a.getClassLoader());
            this.f3296e = bundle.getBundle("android-support-nav:controller:navigatorState");
            this.f3297f = bundle.getStringArray("android-support-nav:controller:backStackUUIDs");
            this.f3298g = bundle.getIntArray("android-support-nav:controller:backStackIds");
            this.f3299h = bundle.getParcelableArray("android-support-nav:controller:backStackArgs");
            this.f3300i = bundle.getBoolean("android-support-nav:controller:deepLinkHandled");
        }
    }

    public boolean a(Intent intent) {
        r rVar;
        if (intent == null) {
            return false;
        }
        Bundle extras = intent.getExtras();
        int[] intArray = extras != null ? extras.getIntArray("android-support-nav:controller:deepLinkIds") : null;
        Bundle bundle = new Bundle();
        Bundle bundle2 = extras != null ? extras.getBundle("android-support-nav:controller:deepLinkExtras") : null;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if ((intArray == null || intArray.length == 0) && intent.getData() != null) {
            o.a a2 = this.f3295d.a(intent.getData());
            if (a2 != null) {
                intArray = a2.f().a();
                bundle.putAll(a2.g());
            }
        }
        if (intArray == null || intArray.length == 0) {
            return false;
        }
        String a3 = a(intArray);
        if (a3 != null) {
            Log.i("NavController", "Could not find destination " + a3 + " in the navigation graph, ignoring the deep link from " + intent);
            return false;
        }
        bundle.putParcelable("android-support-nav:controller:deepLinkIntent", intent);
        int flags = intent.getFlags();
        int i2 = 268435456 & flags;
        if (i2 != 0 && (flags & 32768) == 0) {
            intent.addFlags(32768);
            t a4 = t.a(this.f3292a);
            a4.b(intent);
            a4.b();
            Activity activity = this.f3293b;
            if (activity != null) {
                activity.finish();
                this.f3293b.overridePendingTransition(0, 0);
            }
            return true;
        } else if (i2 != 0) {
            if (!this.f3301j.isEmpty()) {
                b(this.f3295d.d(), true);
            }
            int i3 = 0;
            while (i3 < intArray.length) {
                int i4 = i3 + 1;
                int i5 = intArray[i3];
                o a5 = a(i5);
                if (a5 != null) {
                    w.a aVar = new w.a();
                    aVar.a(0);
                    aVar.b(0);
                    a(a5, bundle, aVar.a(), (K.a) null);
                    i3 = i4;
                } else {
                    throw new IllegalStateException("unknown destination during deep link: " + o.a(this.f3292a, i5));
                }
            }
            return true;
        } else {
            r rVar2 = this.f3295d;
            int i6 = 0;
            while (i6 < intArray.length) {
                int i7 = intArray[i6];
                o f2 = i6 == 0 ? this.f3295d : rVar2.f(i7);
                if (f2 != null) {
                    if (i6 != intArray.length - 1) {
                        while (true) {
                            rVar = (r) f2;
                            if (!(rVar.f(rVar.h()) instanceof r)) {
                                break;
                            }
                            f2 = rVar.f(rVar.h());
                        }
                        rVar2 = rVar;
                    } else {
                        Bundle a6 = f2.a(bundle);
                        w.a aVar2 = new w.a();
                        aVar2.a(this.f3295d.d(), true);
                        aVar2.a(0);
                        aVar2.b(0);
                        a(f2, a6, aVar2.a(), (K.a) null);
                    }
                    i6++;
                } else {
                    throw new IllegalStateException("unknown destination during deep link: " + o.a(this.f3292a, i7));
                }
            }
            this.f3300i = true;
            return true;
        }
    }

    public final String a(int[] iArr) {
        r rVar;
        r rVar2 = this.f3295d;
        int i2 = 0;
        while (i2 < iArr.length) {
            int i3 = iArr[i2];
            o f2 = i2 == 0 ? this.f3295d : rVar2.f(i3);
            if (f2 == null) {
                return o.a(this.f3292a, i3);
            }
            if (i2 != iArr.length - 1) {
                while (true) {
                    rVar = (r) f2;
                    if (!(rVar.f(rVar.h()) instanceof r)) {
                        break;
                    }
                    f2 = rVar.f(rVar.h());
                }
                rVar2 = rVar;
            }
            i2++;
        }
        return null;
    }

    public o a(int i2) {
        o oVar;
        r rVar;
        r rVar2 = this.f3295d;
        if (rVar2 == null) {
            return null;
        }
        if (rVar2.d() == i2) {
            return this.f3295d;
        }
        if (this.f3301j.isEmpty()) {
            oVar = this.f3295d;
        } else {
            oVar = this.f3301j.getLast().b();
        }
        if (oVar instanceof r) {
            rVar = (r) oVar;
        } else {
            rVar = oVar.getParent();
        }
        return rVar.f(i2);
    }

    public void a(int i2, Bundle bundle) {
        a(i2, bundle, null);
    }

    public void a(int i2, Bundle bundle, w wVar) {
        a(i2, bundle, wVar, (K.a) null);
    }

    public void a(int i2, Bundle bundle, w wVar, K.a aVar) {
        o oVar;
        int i3;
        String str;
        if (this.f3301j.isEmpty()) {
            oVar = this.f3295d;
        } else {
            oVar = this.f3301j.getLast().b();
        }
        if (oVar != null) {
            C0308e a2 = oVar.a(i2);
            Bundle bundle2 = null;
            if (a2 != null) {
                if (wVar == null) {
                    wVar = a2.c();
                }
                i3 = a2.b();
                Bundle a3 = a2.a();
                if (a3 != null) {
                    bundle2 = new Bundle();
                    bundle2.putAll(a3);
                }
            } else {
                i3 = i2;
            }
            if (bundle != null) {
                if (bundle2 == null) {
                    bundle2 = new Bundle();
                }
                bundle2.putAll(bundle);
            }
            if (i3 == 0 && wVar != null && wVar.e() != -1) {
                a(wVar.e(), wVar.f());
            } else if (i3 != 0) {
                o a4 = a(i3);
                if (a4 == null) {
                    String a5 = o.a(this.f3292a, i3);
                    StringBuilder sb = new StringBuilder();
                    sb.append("navigation destination ");
                    sb.append(a5);
                    if (a2 != null) {
                        str = " referenced from action " + o.a(this.f3292a, i2);
                    } else {
                        str = "";
                    }
                    sb.append(str);
                    sb.append(" is unknown to this NavController");
                    throw new IllegalArgumentException(sb.toString());
                }
                a(a4, bundle2, wVar, aVar);
            } else {
                throw new IllegalArgumentException("Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo");
            }
        } else {
            throw new IllegalStateException("no current navigation node");
        }
    }

    public final void a(o oVar, Bundle bundle, w wVar, K.a aVar) {
        boolean b2 = (wVar == null || wVar.e() == -1) ? false : b(wVar.e(), wVar.f());
        K a2 = this.m.a(oVar.e());
        Bundle a3 = oVar.a(bundle);
        o a4 = a2.a(oVar, a3, wVar, aVar);
        if (a4 != null) {
            if (!(a4 instanceof C0307d)) {
                while (!this.f3301j.isEmpty() && (this.f3301j.peekLast().b() instanceof C0307d)) {
                    if (!b(this.f3301j.peekLast().b().d(), true)) {
                        break;
                    }
                }
            }
            if (this.f3301j.isEmpty()) {
                this.f3301j.add(new C0311h(this.f3295d, a3, this.f3303l));
            }
            ArrayDeque arrayDeque = new ArrayDeque();
            o oVar2 = a4;
            while (oVar2 != null && a(oVar2.d()) == null) {
                oVar2 = oVar2.getParent();
                if (oVar2 != null) {
                    arrayDeque.addFirst(new C0311h(oVar2, a3, this.f3303l));
                }
            }
            this.f3301j.addAll(arrayDeque);
            this.f3301j.add(new C0311h(a4, a4.a(a3), this.f3303l));
        }
        k();
        if (b2 || a4 != null) {
            a();
        }
    }

    public void a(p pVar) {
        a(pVar.b(), pVar.a());
    }

    public void a(k kVar) {
        this.f3302k = kVar;
    }

    public void a(OnBackPressedDispatcher onBackPressedDispatcher) {
        if (this.f3302k != null) {
            this.o.c();
            onBackPressedDispatcher.a(this.f3302k, this.o);
            return;
        }
        throw new IllegalStateException("You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()");
    }

    public void a(boolean z) {
        this.p = z;
        k();
    }

    public void a(H h2) {
        this.f3303l = C0315l.a(h2);
        for (C0311h a2 : this.f3301j) {
            a2.a(this.f3303l);
        }
    }
}
