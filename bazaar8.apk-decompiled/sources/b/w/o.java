package b.w;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import b.f.j;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: NavDestination */
public class o {

    /* renamed from: a  reason: collision with root package name */
    public static final HashMap<String, Class<?>> f3314a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    public final String f3315b;

    /* renamed from: c  reason: collision with root package name */
    public r f3316c;

    /* renamed from: d  reason: collision with root package name */
    public int f3317d;

    /* renamed from: e  reason: collision with root package name */
    public String f3318e;

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f3319f;

    /* renamed from: g  reason: collision with root package name */
    public ArrayList<C0316m> f3320g;

    /* renamed from: h  reason: collision with root package name */
    public j<C0308e> f3321h;

    /* renamed from: i  reason: collision with root package name */
    public HashMap<String, C0310g> f3322i;

    /* compiled from: NavDestination */
    static class a implements Comparable<a> {

        /* renamed from: a  reason: collision with root package name */
        public final o f3323a;

        /* renamed from: b  reason: collision with root package name */
        public final Bundle f3324b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f3325c;

        public a(o oVar, Bundle bundle, boolean z) {
            this.f3323a = oVar;
            this.f3324b = bundle;
            this.f3325c = z;
        }

        /* renamed from: a */
        public int compareTo(a aVar) {
            if (this.f3325c && !aVar.f3325c) {
                return 1;
            }
            if (this.f3325c || !aVar.f3325c) {
                return this.f3324b.size() - aVar.f3324b.size();
            }
            return -1;
        }

        public o f() {
            return this.f3323a;
        }

        public Bundle g() {
            return this.f3324b;
        }
    }

    public o(K<? extends o> k2) {
        this(L.a((Class<? extends K>) k2.getClass()));
    }

    public static String a(Context context, int i2) {
        try {
            return context.getResources().getResourceName(i2);
        } catch (Resources.NotFoundException unused) {
            return Integer.toString(i2);
        }
    }

    public final Map<String, C0310g> b() {
        HashMap<String, C0310g> hashMap = this.f3322i;
        if (hashMap == null) {
            return Collections.emptyMap();
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public String c() {
        if (this.f3318e == null) {
            this.f3318e = Integer.toString(this.f3317d);
        }
        return this.f3318e;
    }

    public final int d() {
        return this.f3317d;
    }

    public final void e(int i2) {
        this.f3317d = i2;
        this.f3318e = null;
    }

    public boolean f() {
        return true;
    }

    public final r getParent() {
        return this.f3316c;
    }

    public o(String str) {
        this.f3315b = str;
    }

    public void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, b.w.a.a.Navigator);
        e(obtainAttributes.getResourceId(b.w.a.a.Navigator_android_id, 0));
        this.f3318e = a(context, this.f3317d);
        a(obtainAttributes.getText(b.w.a.a.Navigator_android_label));
        obtainAttributes.recycle();
    }

    public final String e() {
        return this.f3315b;
    }

    public final void a(r rVar) {
        this.f3316c = rVar;
    }

    public final void a(CharSequence charSequence) {
        this.f3319f = charSequence;
    }

    public final void a(String str) {
        if (this.f3320g == null) {
            this.f3320g = new ArrayList<>();
        }
        this.f3320g.add(new C0316m(str));
    }

    public a a(Uri uri) {
        ArrayList<C0316m> arrayList = this.f3320g;
        a aVar = null;
        if (arrayList == null) {
            return null;
        }
        Iterator<C0316m> it = arrayList.iterator();
        while (it.hasNext()) {
            C0316m next = it.next();
            Bundle a2 = next.a(uri, b());
            if (a2 != null) {
                a aVar2 = new a(this, a2, next.a());
                if (aVar == null || aVar2.compareTo(aVar) > 0) {
                    aVar = aVar2;
                }
            }
        }
        return aVar;
    }

    public int[] a() {
        ArrayDeque arrayDeque = new ArrayDeque();
        r rVar = this;
        while (true) {
            r parent = rVar.getParent();
            if (parent == null || parent.h() != rVar.d()) {
                arrayDeque.addFirst(rVar);
            }
            if (parent == null) {
                break;
            }
            rVar = parent;
        }
        int[] iArr = new int[arrayDeque.size()];
        int i2 = 0;
        Iterator it = arrayDeque.iterator();
        while (it.hasNext()) {
            iArr[i2] = ((o) it.next()).d();
            i2++;
        }
        return iArr;
    }

    public final C0308e a(int i2) {
        j<C0308e> jVar = this.f3321h;
        C0308e a2 = jVar == null ? null : jVar.a(i2);
        if (a2 != null) {
            return a2;
        }
        if (getParent() != null) {
            return getParent().a(i2);
        }
        return null;
    }

    public final void a(int i2, C0308e eVar) {
        if (!f()) {
            throw new UnsupportedOperationException("Cannot add action " + i2 + " to " + this + " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions.");
        } else if (i2 != 0) {
            if (this.f3321h == null) {
                this.f3321h = new j<>();
            }
            this.f3321h.c(i2, eVar);
        } else {
            throw new IllegalArgumentException("Cannot have an action with actionId 0");
        }
    }

    public final void a(String str, C0310g gVar) {
        if (this.f3322i == null) {
            this.f3322i = new HashMap<>();
        }
        this.f3322i.put(str, gVar);
    }

    public Bundle a(Bundle bundle) {
        if (bundle == null) {
            HashMap<String, C0310g> hashMap = this.f3322i;
            if (hashMap == null || hashMap.isEmpty()) {
                return null;
            }
        }
        Bundle bundle2 = new Bundle();
        HashMap<String, C0310g> hashMap2 = this.f3322i;
        if (hashMap2 != null) {
            for (Map.Entry next : hashMap2.entrySet()) {
                ((C0310g) next.getValue()).a((String) next.getKey(), bundle2);
            }
        }
        if (bundle != null) {
            bundle2.putAll(bundle);
            HashMap<String, C0310g> hashMap3 = this.f3322i;
            if (hashMap3 != null) {
                for (Map.Entry next2 : hashMap3.entrySet()) {
                    if (!((C0310g) next2.getValue()).b((String) next2.getKey(), bundle)) {
                        throw new IllegalArgumentException("Wrong argument type for '" + ((String) next2.getKey()) + "' in argument bundle. " + ((C0310g) next2.getValue()).a().a() + " expected.");
                    }
                }
            }
        }
        return bundle2;
    }
}
