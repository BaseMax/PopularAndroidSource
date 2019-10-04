package androidx.databinding;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.Choreographer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LiveData;
import b.l.C0271a;
import b.l.C0273c;
import b.l.C0276f;
import b.l.j;
import b.l.q;
import b.l.s;
import b.l.v;
import b.r.j;
import b.r.k;
import b.r.u;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.List;

public abstract class ViewDataBinding extends C0271a {

    /* renamed from: b  reason: collision with root package name */
    public static int f617b = Build.VERSION.SDK_INT;

    /* renamed from: c  reason: collision with root package name */
    public static final int f618c = 8;

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f619d = (f617b >= 16);

    /* renamed from: e  reason: collision with root package name */
    public static final a f620e = new y();

    /* renamed from: f  reason: collision with root package name */
    public static final a f621f = new z();

    /* renamed from: g  reason: collision with root package name */
    public static final a f622g = new A();

    /* renamed from: h  reason: collision with root package name */
    public static final a f623h = new B();

    /* renamed from: i  reason: collision with root package name */
    public static final C0273c.a<v, ViewDataBinding, Void> f624i = new C();

    /* renamed from: j  reason: collision with root package name */
    public static final ReferenceQueue<ViewDataBinding> f625j = new ReferenceQueue<>();

    /* renamed from: k  reason: collision with root package name */
    public static final View.OnAttachStateChangeListener f626k;

    /* renamed from: l  reason: collision with root package name */
    public final Runnable f627l;
    public boolean m;
    public boolean n;
    public f[] o;
    public final View p;
    public C0273c<v, ViewDataBinding, Void> q;
    public boolean r;
    public Choreographer s;
    public final Choreographer.FrameCallback t;
    public Handler u;
    public final C0276f v;
    public ViewDataBinding w;
    public k x;
    public OnStartListener y;
    public boolean z;

    static class OnStartListener implements j {

        /* renamed from: a  reason: collision with root package name */
        public final WeakReference<ViewDataBinding> f628a;

        public /* synthetic */ OnStartListener(ViewDataBinding viewDataBinding, y yVar) {
            this(viewDataBinding);
        }

        @b.r.v(Lifecycle.Event.ON_START)
        public void onStart() {
            ViewDataBinding viewDataBinding = (ViewDataBinding) this.f628a.get();
            if (viewDataBinding != null) {
                viewDataBinding.g();
            }
        }

        public OnStartListener(ViewDataBinding viewDataBinding) {
            this.f628a = new WeakReference<>(viewDataBinding);
        }
    }

    private interface a {
        f a(ViewDataBinding viewDataBinding, int i2);
    }

    protected static class b {

        /* renamed from: a  reason: collision with root package name */
        public final String[][] f629a;

        /* renamed from: b  reason: collision with root package name */
        public final int[][] f630b;

        /* renamed from: c  reason: collision with root package name */
        public final int[][] f631c;
    }

    private static class c implements u, d<LiveData<?>> {

        /* renamed from: a  reason: collision with root package name */
        public final f<LiveData<?>> f632a;

        /* renamed from: b  reason: collision with root package name */
        public k f633b;

        public c(ViewDataBinding viewDataBinding, int i2) {
            this.f632a = new f<>(viewDataBinding, i2, this);
        }

        public void a(k kVar) {
            LiveData b2 = this.f632a.b();
            if (b2 != null) {
                if (this.f633b != null) {
                    b2.b(this);
                }
                if (kVar != null) {
                    b2.a(kVar, this);
                }
            }
            this.f633b = kVar;
        }

        public void b(LiveData<?> liveData) {
            liveData.b((u<? super Object>) this);
        }

        public f<LiveData<?>> a() {
            return this.f632a;
        }

        /* renamed from: a */
        public void c(LiveData<?> liveData) {
            k kVar = this.f633b;
            if (kVar != null) {
                liveData.a(kVar, this);
            }
        }

        public void a(Object obj) {
            ViewDataBinding a2 = this.f632a.a();
            if (a2 != null) {
                f<LiveData<?>> fVar = this.f632a;
                a2.a(fVar.f636b, (Object) fVar.b(), 0);
            }
        }
    }

    private interface d<T> {
        void a(k kVar);

        void b(T t);

        void c(T t);
    }

    private static class e extends q.a implements d<q> {

        /* renamed from: a  reason: collision with root package name */
        public final f<q> f634a;

        public e(ViewDataBinding viewDataBinding, int i2) {
            this.f634a = new f<>(viewDataBinding, i2, this);
        }

        public f<q> a() {
            return this.f634a;
        }

        public void a(k kVar) {
        }

        /* renamed from: a */
        public void c(q qVar) {
            qVar.b(this);
        }

        public void b(q qVar) {
            qVar.a(this);
        }
    }

    private static class f<T> extends WeakReference<ViewDataBinding> {

        /* renamed from: a  reason: collision with root package name */
        public final d<T> f635a;

        /* renamed from: b  reason: collision with root package name */
        public final int f636b;

        /* renamed from: c  reason: collision with root package name */
        public T f637c;

        public f(ViewDataBinding viewDataBinding, int i2, d<T> dVar) {
            super(viewDataBinding, ViewDataBinding.f625j);
            this.f636b = i2;
            this.f635a = dVar;
        }

        public void a(k kVar) {
            this.f635a.a(kVar);
        }

        public T b() {
            return this.f637c;
        }

        public boolean c() {
            boolean z;
            T t = this.f637c;
            if (t != null) {
                this.f635a.b(t);
                z = true;
            } else {
                z = false;
            }
            this.f637c = null;
            return z;
        }

        public void a(T t) {
            c();
            this.f637c = t;
            T t2 = this.f637c;
            if (t2 != null) {
                this.f635a.c(t2);
            }
        }

        public ViewDataBinding a() {
            ViewDataBinding viewDataBinding = (ViewDataBinding) get();
            if (viewDataBinding == null) {
                c();
            }
            return viewDataBinding;
        }
    }

    private static class g extends s.a implements d<s> {

        /* renamed from: a  reason: collision with root package name */
        public final f<s> f638a;

        public g(ViewDataBinding viewDataBinding, int i2) {
            this.f638a = new f<>(viewDataBinding, i2, this);
        }

        public f<s> a() {
            return this.f638a;
        }

        public void a(k kVar) {
        }

        /* renamed from: a */
        public void c(s sVar) {
            sVar.a(this);
        }

        public void b(s sVar) {
            sVar.b(this);
        }
    }

    private static class h extends j.a implements d<b.l.j> {

        /* renamed from: a  reason: collision with root package name */
        public final f<b.l.j> f639a;

        public h(ViewDataBinding viewDataBinding, int i2) {
            this.f639a = new f<>(viewDataBinding, i2, this);
        }

        public f<b.l.j> a() {
            return this.f639a;
        }

        public void a(k kVar) {
        }

        /* renamed from: a */
        public void c(b.l.j jVar) {
            jVar.a(this);
        }

        public void b(b.l.j jVar) {
            jVar.b(this);
        }

        public void a(b.l.j jVar, int i2) {
            ViewDataBinding a2 = this.f639a.a();
            if (a2 != null && this.f639a.b() == jVar) {
                a2.a(this.f639a.f636b, (Object) jVar, i2);
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT < 19) {
            f626k = null;
        } else {
            f626k = new D();
        }
    }

    public ViewDataBinding(C0276f fVar, View view, int i2) {
        this.f627l = new E(this);
        this.m = false;
        this.n = false;
        this.v = fVar;
        this.o = new f[i2];
        this.p = view;
        if (Looper.myLooper() == null) {
            throw new IllegalStateException("DataBinding must be created in view's UI Thread");
        } else if (f619d) {
            this.s = Choreographer.getInstance();
            this.t = new F(this);
        } else {
            this.t = null;
            this.u = new Handler(Looper.myLooper());
        }
    }

    public static void j() {
        while (true) {
            Reference<? extends ViewDataBinding> poll = f625j.poll();
            if (poll == null) {
                return;
            }
            if (poll instanceof f) {
                ((f) poll).c();
            }
        }
    }

    public abstract boolean a(int i2, Object obj);

    public abstract boolean b(int i2, Object obj, int i3);

    public abstract void e();

    public final void f() {
        if (this.r) {
            k();
        } else if (i()) {
            this.r = true;
            this.n = false;
            C0273c<v, ViewDataBinding, Void> cVar = this.q;
            if (cVar != null) {
                cVar.a(this, 1, null);
                if (this.n) {
                    this.q.a(this, 2, null);
                }
            }
            if (!this.n) {
                e();
                C0273c<v, ViewDataBinding, Void> cVar2 = this.q;
                if (cVar2 != null) {
                    cVar2.a(this, 3, null);
                }
            }
            this.r = false;
        }
    }

    public void g() {
        ViewDataBinding viewDataBinding = this.w;
        if (viewDataBinding == null) {
            f();
        } else {
            viewDataBinding.g();
        }
    }

    public View h() {
        return this.p;
    }

    public abstract boolean i();

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x002a, code lost:
        if (f619d == false) goto L_0x0034;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x002c, code lost:
        r2.s.postFrameCallback(r2.t);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0034, code lost:
        r2.u.post(r2.f627l);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void k() {
        /*
            r2 = this;
            androidx.databinding.ViewDataBinding r0 = r2.w
            if (r0 == 0) goto L_0x0008
            r0.k()
            goto L_0x003b
        L_0x0008:
            b.r.k r0 = r2.x
            if (r0 == 0) goto L_0x001d
            androidx.lifecycle.Lifecycle r0 = r0.b()
            androidx.lifecycle.Lifecycle$State r0 = r0.a()
            androidx.lifecycle.Lifecycle$State r1 = androidx.lifecycle.Lifecycle.State.STARTED
            boolean r0 = r0.a(r1)
            if (r0 != 0) goto L_0x001d
            return
        L_0x001d:
            monitor-enter(r2)
            boolean r0 = r2.m     // Catch:{ all -> 0x003c }
            if (r0 == 0) goto L_0x0024
            monitor-exit(r2)     // Catch:{ all -> 0x003c }
            return
        L_0x0024:
            r0 = 1
            r2.m = r0     // Catch:{ all -> 0x003c }
            monitor-exit(r2)     // Catch:{ all -> 0x003c }
            boolean r0 = f619d
            if (r0 == 0) goto L_0x0034
            android.view.Choreographer r0 = r2.s
            android.view.Choreographer$FrameCallback r1 = r2.t
            r0.postFrameCallback(r1)
            goto L_0x003b
        L_0x0034:
            android.os.Handler r0 = r2.u
            java.lang.Runnable r1 = r2.f627l
            r0.post(r1)
        L_0x003b:
            return
        L_0x003c:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x003c }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.databinding.ViewDataBinding.k():void");
    }

    public static C0276f a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof C0276f) {
            return (C0276f) obj;
        }
        throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
    }

    public void b(View view) {
        view.setTag(b.l.b.a.dataBinding, this);
    }

    public boolean b(int i2) {
        f fVar = this.o[i2];
        if (fVar != null) {
            return fVar.c();
        }
        return false;
    }

    public void a(k kVar) {
        k kVar2 = this.x;
        if (kVar2 != kVar) {
            if (kVar2 != null) {
                kVar2.b().b(this.y);
            }
            this.x = kVar;
            if (kVar != null) {
                if (this.y == null) {
                    this.y = new OnStartListener(this, null);
                }
                kVar.b().a(this.y);
            }
            for (f fVar : this.o) {
                if (fVar != null) {
                    fVar.a(kVar);
                }
            }
        }
    }

    public final boolean b(int i2, Object obj, a aVar) {
        if (obj == null) {
            return b(i2);
        }
        f fVar = this.o[i2];
        if (fVar == null) {
            a(i2, obj, aVar);
            return true;
        } else if (fVar.b() == obj) {
            return false;
        } else {
            b(i2);
            a(i2, obj, aVar);
            return true;
        }
    }

    public static Drawable b(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getContext().getDrawable(i2);
        }
        return view.getResources().getDrawable(i2);
    }

    public ViewDataBinding(Object obj, View view, int i2) {
        this(a(obj), view, i2);
    }

    public static ViewDataBinding a(View view) {
        if (view != null) {
            return (ViewDataBinding) view.getTag(b.l.b.a.dataBinding);
        }
        return null;
    }

    public static int b(String str, int i2) {
        int length = str.length();
        int i3 = 0;
        while (i2 < length) {
            i3 = (i3 * 10) + (str.charAt(i2) - '0');
            i2++;
        }
        return i3;
    }

    public final void a(int i2, Object obj, int i3) {
        if (!this.z && b(i2, obj, i3)) {
            k();
        }
    }

    public boolean a(int i2, b.l.j jVar) {
        return b(i2, (Object) jVar, f620e);
    }

    public boolean a(int i2, LiveData<?> liveData) {
        this.z = true;
        try {
            return b(i2, (Object) liveData, f623h);
        } finally {
            this.z = false;
        }
    }

    public void a(int i2, Object obj, a aVar) {
        if (obj != null) {
            f fVar = this.o[i2];
            if (fVar == null) {
                fVar = aVar.a(this, i2);
                this.o[i2] = fVar;
                k kVar = this.x;
                if (kVar != null) {
                    fVar.a(kVar);
                }
            }
            fVar.a(obj);
        }
    }

    public static Object[] a(C0276f fVar, View view, int i2, b bVar, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i2];
        a(fVar, view, objArr, bVar, sparseIntArray, true);
        return objArr;
    }

    public static int a(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return view.getContext().getColor(i2);
        }
        return view.getResources().getColor(i2);
    }

    public static <T> T a(List<T> list, int i2) {
        if (list == null || i2 < 0 || i2 >= list.size()) {
            return null;
        }
        return list.get(i2);
    }

    public static int a(Integer num) {
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static long a(Long l2) {
        if (l2 == null) {
            return 0;
        }
        return l2.longValue();
    }

    public static float a(Float f2) {
        if (f2 == null) {
            return 0.0f;
        }
        return f2.floatValue();
    }

    public static boolean a(Boolean bool) {
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX WARNING: Removed duplicated region for block: B:68:0x0101  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x010e A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(b.l.C0276f r16, android.view.View r17, java.lang.Object[] r18, androidx.databinding.ViewDataBinding.b r19, android.util.SparseIntArray r20, boolean r21) {
        /*
            r6 = r16
            r0 = r17
            r7 = r19
            r8 = r20
            androidx.databinding.ViewDataBinding r1 = a((android.view.View) r17)
            if (r1 == 0) goto L_0x000f
            return
        L_0x000f:
            java.lang.Object r1 = r17.getTag()
            boolean r2 = r1 instanceof java.lang.String
            if (r2 == 0) goto L_0x001a
            java.lang.String r1 = (java.lang.String) r1
            goto L_0x001b
        L_0x001a:
            r1 = 0
        L_0x001b:
            java.lang.String r9 = "layout"
            r2 = -1
            r11 = 1
            if (r21 == 0) goto L_0x004c
            if (r1 == 0) goto L_0x004c
            boolean r3 = r1.startsWith(r9)
            if (r3 == 0) goto L_0x004c
            r3 = 95
            int r3 = r1.lastIndexOf(r3)
            if (r3 <= 0) goto L_0x0048
            int r3 = r3 + r11
            boolean r4 = a((java.lang.String) r1, (int) r3)
            if (r4 == 0) goto L_0x0048
            int r1 = b((java.lang.String) r1, (int) r3)
            r3 = r18[r1]
            if (r3 != 0) goto L_0x0042
            r18[r1] = r0
        L_0x0042:
            if (r7 != 0) goto L_0x0045
            r1 = -1
        L_0x0045:
            r3 = r1
            r1 = 1
            goto L_0x004a
        L_0x0048:
            r1 = 0
            r3 = -1
        L_0x004a:
            r12 = r3
            goto L_0x006a
        L_0x004c:
            if (r1 == 0) goto L_0x0068
            java.lang.String r3 = "binding_"
            boolean r3 = r1.startsWith(r3)
            if (r3 == 0) goto L_0x0068
            int r3 = f618c
            int r1 = b((java.lang.String) r1, (int) r3)
            r3 = r18[r1]
            if (r3 != 0) goto L_0x0062
            r18[r1] = r0
        L_0x0062:
            if (r7 != 0) goto L_0x0065
            r1 = -1
        L_0x0065:
            r12 = r1
            r1 = 1
            goto L_0x006a
        L_0x0068:
            r1 = 0
            r12 = -1
        L_0x006a:
            if (r1 != 0) goto L_0x0080
            int r1 = r17.getId()
            if (r1 <= 0) goto L_0x0080
            if (r8 == 0) goto L_0x0080
            int r1 = r8.get(r1, r2)
            if (r1 < 0) goto L_0x0080
            r2 = r18[r1]
            if (r2 != 0) goto L_0x0080
            r18[r1] = r0
        L_0x0080:
            boolean r1 = r0 instanceof android.view.ViewGroup
            if (r1 == 0) goto L_0x0116
            r13 = r0
            android.view.ViewGroup r13 = (android.view.ViewGroup) r13
            int r14 = r13.getChildCount()
            r0 = 0
            r1 = 0
        L_0x008d:
            if (r0 >= r14) goto L_0x0116
            android.view.View r2 = r13.getChildAt(r0)
            if (r12 < 0) goto L_0x00fc
            java.lang.Object r3 = r2.getTag()
            boolean r3 = r3 instanceof java.lang.String
            if (r3 == 0) goto L_0x00fc
            java.lang.Object r3 = r2.getTag()
            java.lang.String r3 = (java.lang.String) r3
            java.lang.String r4 = "_0"
            boolean r4 = r3.endsWith(r4)
            if (r4 == 0) goto L_0x00fc
            boolean r4 = r3.startsWith(r9)
            if (r4 == 0) goto L_0x00fc
            r4 = 47
            int r4 = r3.indexOf(r4)
            if (r4 <= 0) goto L_0x00fc
            int r3 = a((java.lang.String) r3, (int) r1, (androidx.databinding.ViewDataBinding.b) r7, (int) r12)
            if (r3 < 0) goto L_0x00fc
            int r1 = r3 + 1
            int[][] r4 = r7.f630b
            r4 = r4[r12]
            r4 = r4[r3]
            int[][] r5 = r7.f631c
            r5 = r5[r12]
            r3 = r5[r3]
            int r5 = a((android.view.ViewGroup) r13, (int) r0)
            if (r5 != r0) goto L_0x00dc
            androidx.databinding.ViewDataBinding r3 = b.l.g.a((b.l.C0276f) r6, (android.view.View) r2, (int) r3)
            r18[r4] = r3
            r10 = r0
            r15 = r1
            goto L_0x00ff
        L_0x00dc:
            int r5 = r5 - r0
            int r5 = r5 + r11
            android.view.View[] r15 = new android.view.View[r5]
            r10 = 0
        L_0x00e1:
            if (r10 >= r5) goto L_0x00ef
            int r11 = r0 + r10
            android.view.View r11 = r13.getChildAt(r11)
            r15[r10] = r11
            int r10 = r10 + 1
            r11 = 1
            goto L_0x00e1
        L_0x00ef:
            androidx.databinding.ViewDataBinding r3 = b.l.g.a((b.l.C0276f) r6, (android.view.View[]) r15, (int) r3)
            r18[r4] = r3
            int r5 = r5 + -1
            int r0 = r0 + r5
            r10 = r0
            r15 = r1
            r11 = 1
            goto L_0x00ff
        L_0x00fc:
            r10 = r0
            r15 = r1
            r11 = 0
        L_0x00ff:
            if (r11 != 0) goto L_0x010e
            r5 = 0
            r0 = r16
            r1 = r2
            r2 = r18
            r3 = r19
            r4 = r20
            a(r0, r1, r2, r3, r4, r5)
        L_0x010e:
            r0 = 1
            int r1 = r10 + 1
            r0 = r1
            r1 = r15
            r11 = 1
            goto L_0x008d
        L_0x0116:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.databinding.ViewDataBinding.a(b.l.f, android.view.View, java.lang.Object[], androidx.databinding.ViewDataBinding$b, android.util.SparseIntArray, boolean):void");
    }

    public static int a(String str, int i2, b bVar, int i3) {
        CharSequence subSequence = str.subSequence(str.indexOf(47) + 1, str.length() - 2);
        String[] strArr = bVar.f629a[i3];
        int length = strArr.length;
        while (i2 < length) {
            if (TextUtils.equals(subSequence, strArr[i2])) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int a(ViewGroup viewGroup, int i2) {
        String str = (String) viewGroup.getChildAt(i2).getTag();
        String substring = str.substring(0, str.length() - 1);
        int length = substring.length();
        int childCount = viewGroup.getChildCount();
        for (int i3 = i2 + 1; i3 < childCount; i3++) {
            View childAt = viewGroup.getChildAt(i3);
            String str2 = childAt.getTag() instanceof String ? (String) childAt.getTag() : null;
            if (str2 != null && str2.startsWith(substring)) {
                if (str2.length() == str.length() && str2.charAt(str2.length() - 1) == '0') {
                    return i2;
                }
                if (a(str2, length)) {
                    i2 = i3;
                }
            }
        }
        return i2;
    }

    public static boolean a(String str, int i2) {
        int length = str.length();
        if (length == i2) {
            return false;
        }
        while (i2 < length) {
            if (!Character.isDigit(str.charAt(i2))) {
                return false;
            }
            i2++;
        }
        return true;
    }

    public static <T extends ViewDataBinding> T a(LayoutInflater layoutInflater, int i2, ViewGroup viewGroup, boolean z2, Object obj) {
        return b.l.g.a(layoutInflater, i2, viewGroup, z2, a(obj));
    }
}
