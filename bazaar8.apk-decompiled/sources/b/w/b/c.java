package b.w.b;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.Fragment;
import b.o.a.C0290n;
import b.w.K;
import b.w.o;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

@K.b("fragment")
/* compiled from: FragmentNavigator */
public class c extends K<a> {

    /* renamed from: a  reason: collision with root package name */
    public final Context f3264a;

    /* renamed from: b  reason: collision with root package name */
    public final C0290n f3265b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3266c;

    /* renamed from: d  reason: collision with root package name */
    public ArrayDeque<Integer> f3267d = new ArrayDeque<>();

    /* compiled from: FragmentNavigator */
    public static class a extends o {

        /* renamed from: j  reason: collision with root package name */
        public String f3268j;

        public a(K<? extends a> k2) {
            super((K<? extends o>) k2);
        }

        public void a(Context context, AttributeSet attributeSet) {
            super.a(context, attributeSet);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, d.FragmentNavigator);
            String string = obtainAttributes.getString(d.FragmentNavigator_android_name);
            if (string != null) {
                b(string);
            }
            obtainAttributes.recycle();
        }

        public final a b(String str) {
            this.f3268j = str;
            return this;
        }

        public final String g() {
            String str = this.f3268j;
            if (str != null) {
                return str;
            }
            throw new IllegalStateException("Fragment class was not set");
        }
    }

    /* compiled from: FragmentNavigator */
    public static final class b implements K.a {

        /* renamed from: a  reason: collision with root package name */
        public final LinkedHashMap<View, String> f3269a;

        public Map<View, String> a() {
            return Collections.unmodifiableMap(this.f3269a);
        }
    }

    public c(Context context, C0290n nVar, int i2) {
        this.f3264a = context;
        this.f3265b = nVar;
        this.f3266c = i2;
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        int[] iArr = new int[this.f3267d.size()];
        Iterator<Integer> it = this.f3267d.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            iArr[i2] = it.next().intValue();
            i2++;
        }
        bundle.putIntArray("androidx-nav-fragment:navigator:backStackIds", iArr);
        return bundle;
    }

    public boolean c() {
        if (this.f3267d.isEmpty()) {
            return false;
        }
        if (this.f3265b.e()) {
            Log.i("FragmentNavigator", "Ignoring popBackStack() call: FragmentManager has already saved its state");
            return false;
        }
        this.f3265b.a(a(this.f3267d.size(), this.f3267d.peekLast().intValue()), 1);
        this.f3267d.removeLast();
        return true;
    }

    public a a() {
        return new a(this);
    }

    @Deprecated
    public Fragment a(Context context, C0290n nVar, String str, Bundle bundle) {
        return nVar.b().a(context.getClassLoader(), str);
    }

    /* JADX WARNING: Removed duplicated region for block: B:51:0x00f8  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x012a  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0134 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public b.w.o a(b.w.b.c.a r9, android.os.Bundle r10, b.w.w r11, b.w.K.a r12) {
        /*
            r8 = this;
            b.o.a.n r0 = r8.f3265b
            boolean r0 = r0.e()
            r1 = 0
            if (r0 == 0) goto L_0x0011
            java.lang.String r9 = "FragmentNavigator"
            java.lang.String r10 = "Ignoring navigate() call: FragmentManager has already saved its state"
            android.util.Log.i(r9, r10)
            return r1
        L_0x0011:
            java.lang.String r0 = r9.g()
            r2 = 0
            char r3 = r0.charAt(r2)
            r4 = 46
            if (r3 != r4) goto L_0x0033
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            android.content.Context r4 = r8.f3264a
            java.lang.String r4 = r4.getPackageName()
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
        L_0x0033:
            android.content.Context r3 = r8.f3264a
            b.o.a.n r4 = r8.f3265b
            androidx.fragment.app.Fragment r0 = r8.a((android.content.Context) r3, (b.o.a.C0290n) r4, (java.lang.String) r0, (android.os.Bundle) r10)
            r0.m(r10)
            b.o.a.n r10 = r8.f3265b
            b.o.a.C r10 = r10.a()
            r3 = -1
            if (r11 == 0) goto L_0x004c
            int r4 = r11.a()
            goto L_0x004d
        L_0x004c:
            r4 = -1
        L_0x004d:
            if (r11 == 0) goto L_0x0054
            int r5 = r11.b()
            goto L_0x0055
        L_0x0054:
            r5 = -1
        L_0x0055:
            if (r11 == 0) goto L_0x005c
            int r6 = r11.c()
            goto L_0x005d
        L_0x005c:
            r6 = -1
        L_0x005d:
            if (r11 == 0) goto L_0x0064
            int r7 = r11.d()
            goto L_0x0065
        L_0x0064:
            r7 = -1
        L_0x0065:
            if (r4 != r3) goto L_0x006d
            if (r5 != r3) goto L_0x006d
            if (r6 != r3) goto L_0x006d
            if (r7 == r3) goto L_0x0080
        L_0x006d:
            if (r4 == r3) goto L_0x0070
            goto L_0x0071
        L_0x0070:
            r4 = 0
        L_0x0071:
            if (r5 == r3) goto L_0x0074
            goto L_0x0075
        L_0x0074:
            r5 = 0
        L_0x0075:
            if (r6 == r3) goto L_0x0078
            goto L_0x0079
        L_0x0078:
            r6 = 0
        L_0x0079:
            if (r7 == r3) goto L_0x007c
            goto L_0x007d
        L_0x007c:
            r7 = 0
        L_0x007d:
            r10.a((int) r4, (int) r5, (int) r6, (int) r7)
        L_0x0080:
            int r3 = r8.f3266c
            r10.b(r3, r0)
            r10.d(r0)
            int r0 = r9.d()
            java.util.ArrayDeque<java.lang.Integer> r3 = r8.f3267d
            boolean r3 = r3.isEmpty()
            r4 = 1
            if (r11 == 0) goto L_0x00ad
            if (r3 != 0) goto L_0x00ad
            boolean r11 = r11.g()
            if (r11 == 0) goto L_0x00ad
            java.util.ArrayDeque<java.lang.Integer> r11 = r8.f3267d
            java.lang.Object r11 = r11.peekLast()
            java.lang.Integer r11 = (java.lang.Integer) r11
            int r11 = r11.intValue()
            if (r11 != r0) goto L_0x00ad
            r11 = 1
            goto L_0x00ae
        L_0x00ad:
            r11 = 0
        L_0x00ae:
            if (r3 == 0) goto L_0x00b2
        L_0x00b0:
            r2 = 1
            goto L_0x00f4
        L_0x00b2:
            if (r11 == 0) goto L_0x00e5
            java.util.ArrayDeque<java.lang.Integer> r11 = r8.f3267d
            int r11 = r11.size()
            if (r11 <= r4) goto L_0x00f4
            b.o.a.n r11 = r8.f3265b
            java.util.ArrayDeque<java.lang.Integer> r3 = r8.f3267d
            int r3 = r3.size()
            java.util.ArrayDeque<java.lang.Integer> r5 = r8.f3267d
            java.lang.Object r5 = r5.peekLast()
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            java.lang.String r3 = r8.a(r3, r5)
            r11.a((java.lang.String) r3, (int) r4)
            java.util.ArrayDeque<java.lang.Integer> r11 = r8.f3267d
            int r11 = r11.size()
            java.lang.String r11 = r8.a(r11, r0)
            r10.a((java.lang.String) r11)
            goto L_0x00f4
        L_0x00e5:
            java.util.ArrayDeque<java.lang.Integer> r11 = r8.f3267d
            int r11 = r11.size()
            int r11 = r11 + r4
            java.lang.String r11 = r8.a(r11, r0)
            r10.a((java.lang.String) r11)
            goto L_0x00b0
        L_0x00f4:
            boolean r11 = r12 instanceof b.w.b.c.b
            if (r11 == 0) goto L_0x0122
            b.w.b.c$b r12 = (b.w.b.c.b) r12
            java.util.Map r11 = r12.a()
            java.util.Set r11 = r11.entrySet()
            java.util.Iterator r11 = r11.iterator()
        L_0x0106:
            boolean r12 = r11.hasNext()
            if (r12 == 0) goto L_0x0122
            java.lang.Object r12 = r11.next()
            java.util.Map$Entry r12 = (java.util.Map.Entry) r12
            java.lang.Object r3 = r12.getKey()
            android.view.View r3 = (android.view.View) r3
            java.lang.Object r12 = r12.getValue()
            java.lang.String r12 = (java.lang.String) r12
            r10.a((android.view.View) r3, (java.lang.String) r12)
            goto L_0x0106
        L_0x0122:
            r10.a((boolean) r4)
            r10.a()
            if (r2 == 0) goto L_0x0134
            java.util.ArrayDeque<java.lang.Integer> r10 = r8.f3267d
            java.lang.Integer r11 = java.lang.Integer.valueOf(r0)
            r10.add(r11)
            return r9
        L_0x0134:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b.w.b.c.a(b.w.b.c$a, android.os.Bundle, b.w.w, b.w.K$a):b.w.o");
    }

    public void a(Bundle bundle) {
        if (bundle != null) {
            int[] intArray = bundle.getIntArray("androidx-nav-fragment:navigator:backStackIds");
            if (intArray != null) {
                this.f3267d.clear();
                for (int valueOf : intArray) {
                    this.f3267d.add(Integer.valueOf(valueOf));
                }
            }
        }
    }

    public final String a(int i2, int i3) {
        return i2 + "-" + i3;
    }
}
