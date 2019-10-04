package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import b.i.k.a.d;
import b.y.a.D;
import b.y.a.O;
import b.y.a.w;
import b.y.a.y;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

public class StaggeredGridLayoutManager extends RecyclerView.i implements RecyclerView.s.b {
    public boolean A = false;
    public BitSet B;
    public int C = -1;
    public int D = Integer.MIN_VALUE;
    public LazySpanLookup E = new LazySpanLookup();
    public int F = 2;
    public boolean G;
    public boolean H;
    public SavedState I;
    public int J;
    public final Rect K = new Rect();
    public final a L = new a();
    public boolean M = false;
    public boolean N = true;
    public int[] O;
    public final Runnable P = new Q(this);
    public int s = -1;
    public c[] t;
    public D u;
    public D v;
    public int w;
    public int x;
    public final w y;
    public boolean z = false;

    static class LazySpanLookup {

        /* renamed from: a  reason: collision with root package name */
        public int[] f902a;

        /* renamed from: b  reason: collision with root package name */
        public List<FullSpanItem> f903b;

        static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new S();

            /* renamed from: a  reason: collision with root package name */
            public int f904a;

            /* renamed from: b  reason: collision with root package name */
            public int f905b;

            /* renamed from: c  reason: collision with root package name */
            public int[] f906c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f907d;

            public FullSpanItem(Parcel parcel) {
                this.f904a = parcel.readInt();
                this.f905b = parcel.readInt();
                this.f907d = parcel.readInt() != 1 ? false : true;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    this.f906c = new int[readInt];
                    parcel.readIntArray(this.f906c);
                }
            }

            public int a(int i2) {
                int[] iArr = this.f906c;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i2];
            }

            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f904a + ", mGapDir=" + this.f905b + ", mHasUnwantedGapAfter=" + this.f907d + ", mGapPerSpan=" + Arrays.toString(this.f906c) + '}';
            }

            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeInt(this.f904a);
                parcel.writeInt(this.f905b);
                parcel.writeInt(this.f907d ? 1 : 0);
                int[] iArr = this.f906c;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                    return;
                }
                parcel.writeInt(iArr.length);
                parcel.writeIntArray(this.f906c);
            }

            public FullSpanItem() {
            }
        }

        public void a(int i2, c cVar) {
            a(i2);
            this.f902a[i2] = cVar.f931e;
        }

        public int b(int i2) {
            List<FullSpanItem> list = this.f903b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f903b.get(size).f904a >= i2) {
                        this.f903b.remove(size);
                    }
                }
            }
            return e(i2);
        }

        public final void c(int i2, int i3) {
            List<FullSpanItem> list = this.f903b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.f903b.get(size);
                    int i4 = fullSpanItem.f904a;
                    if (i4 >= i2) {
                        fullSpanItem.f904a = i4 + i3;
                    }
                }
            }
        }

        public int d(int i2) {
            int[] iArr = this.f902a;
            if (iArr == null || i2 >= iArr.length) {
                return -1;
            }
            return iArr[i2];
        }

        public int e(int i2) {
            int[] iArr = this.f902a;
            if (iArr == null || i2 >= iArr.length) {
                return -1;
            }
            int f2 = f(i2);
            if (f2 == -1) {
                int[] iArr2 = this.f902a;
                Arrays.fill(iArr2, i2, iArr2.length, -1);
                return this.f902a.length;
            }
            int i3 = f2 + 1;
            Arrays.fill(this.f902a, i2, i3, -1);
            return i3;
        }

        public final int f(int i2) {
            if (this.f903b == null) {
                return -1;
            }
            FullSpanItem c2 = c(i2);
            if (c2 != null) {
                this.f903b.remove(c2);
            }
            int size = this.f903b.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    i3 = -1;
                    break;
                } else if (this.f903b.get(i3).f904a >= i2) {
                    break;
                } else {
                    i3++;
                }
            }
            if (i3 == -1) {
                return -1;
            }
            this.f903b.remove(i3);
            return this.f903b.get(i3).f904a;
        }

        public int g(int i2) {
            int length = this.f902a.length;
            while (length <= i2) {
                length *= 2;
            }
            return length;
        }

        public void a(int i2) {
            int[] iArr = this.f902a;
            if (iArr == null) {
                this.f902a = new int[(Math.max(i2, 10) + 1)];
                Arrays.fill(this.f902a, -1);
            } else if (i2 >= iArr.length) {
                this.f902a = new int[g(i2)];
                System.arraycopy(iArr, 0, this.f902a, 0, iArr.length);
                int[] iArr2 = this.f902a;
                Arrays.fill(iArr2, iArr.length, iArr2.length, -1);
            }
        }

        public final void d(int i2, int i3) {
            List<FullSpanItem> list = this.f903b;
            if (list != null) {
                int i4 = i2 + i3;
                for (int size = list.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.f903b.get(size);
                    int i5 = fullSpanItem.f904a;
                    if (i5 >= i2) {
                        if (i5 < i4) {
                            this.f903b.remove(size);
                        } else {
                            fullSpanItem.f904a = i5 - i3;
                        }
                    }
                }
            }
        }

        public FullSpanItem c(int i2) {
            List<FullSpanItem> list = this.f903b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f903b.get(size);
                if (fullSpanItem.f904a == i2) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        public void b(int i2, int i3) {
            int[] iArr = this.f902a;
            if (iArr != null && i2 < iArr.length) {
                int i4 = i2 + i3;
                a(i4);
                int[] iArr2 = this.f902a;
                System.arraycopy(iArr2, i4, iArr2, i2, (iArr2.length - i2) - i3);
                int[] iArr3 = this.f902a;
                Arrays.fill(iArr3, iArr3.length - i3, iArr3.length, -1);
                d(i2, i3);
            }
        }

        public void a() {
            int[] iArr = this.f902a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f903b = null;
        }

        public void a(int i2, int i3) {
            int[] iArr = this.f902a;
            if (iArr != null && i2 < iArr.length) {
                int i4 = i2 + i3;
                a(i4);
                int[] iArr2 = this.f902a;
                System.arraycopy(iArr2, i2, iArr2, i4, (iArr2.length - i2) - i3);
                Arrays.fill(this.f902a, i2, i4, -1);
                c(i2, i3);
            }
        }

        public void a(FullSpanItem fullSpanItem) {
            if (this.f903b == null) {
                this.f903b = new ArrayList();
            }
            int size = this.f903b.size();
            for (int i2 = 0; i2 < size; i2++) {
                FullSpanItem fullSpanItem2 = this.f903b.get(i2);
                if (fullSpanItem2.f904a == fullSpanItem.f904a) {
                    this.f903b.remove(i2);
                }
                if (fullSpanItem2.f904a >= fullSpanItem.f904a) {
                    this.f903b.add(i2, fullSpanItem);
                    return;
                }
            }
            this.f903b.add(fullSpanItem);
        }

        public FullSpanItem a(int i2, int i3, int i4, boolean z) {
            List<FullSpanItem> list = this.f903b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i5 = 0; i5 < size; i5++) {
                FullSpanItem fullSpanItem = this.f903b.get(i5);
                int i6 = fullSpanItem.f904a;
                if (i6 >= i3) {
                    return null;
                }
                if (i6 >= i2 && (i4 == 0 || fullSpanItem.f905b == i4 || (z && fullSpanItem.f907d))) {
                    return fullSpanItem;
                }
            }
            return null;
        }
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new T();

        /* renamed from: a  reason: collision with root package name */
        public int f908a;

        /* renamed from: b  reason: collision with root package name */
        public int f909b;

        /* renamed from: c  reason: collision with root package name */
        public int f910c;

        /* renamed from: d  reason: collision with root package name */
        public int[] f911d;

        /* renamed from: e  reason: collision with root package name */
        public int f912e;

        /* renamed from: f  reason: collision with root package name */
        public int[] f913f;

        /* renamed from: g  reason: collision with root package name */
        public List<LazySpanLookup.FullSpanItem> f914g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f915h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f916i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f917j;

        public SavedState() {
        }

        public void a() {
            this.f911d = null;
            this.f910c = 0;
            this.f908a = -1;
            this.f909b = -1;
        }

        public void b() {
            this.f911d = null;
            this.f910c = 0;
            this.f912e = 0;
            this.f913f = null;
            this.f914g = null;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f908a);
            parcel.writeInt(this.f909b);
            parcel.writeInt(this.f910c);
            if (this.f910c > 0) {
                parcel.writeIntArray(this.f911d);
            }
            parcel.writeInt(this.f912e);
            if (this.f912e > 0) {
                parcel.writeIntArray(this.f913f);
            }
            parcel.writeInt(this.f915h ? 1 : 0);
            parcel.writeInt(this.f916i ? 1 : 0);
            parcel.writeInt(this.f917j ? 1 : 0);
            parcel.writeList(this.f914g);
        }

        public SavedState(Parcel parcel) {
            this.f908a = parcel.readInt();
            this.f909b = parcel.readInt();
            this.f910c = parcel.readInt();
            int i2 = this.f910c;
            if (i2 > 0) {
                this.f911d = new int[i2];
                parcel.readIntArray(this.f911d);
            }
            this.f912e = parcel.readInt();
            int i3 = this.f912e;
            if (i3 > 0) {
                this.f913f = new int[i3];
                parcel.readIntArray(this.f913f);
            }
            boolean z = false;
            this.f915h = parcel.readInt() == 1;
            this.f916i = parcel.readInt() == 1;
            this.f917j = parcel.readInt() == 1 ? true : z;
            this.f914g = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.f910c = savedState.f910c;
            this.f908a = savedState.f908a;
            this.f909b = savedState.f909b;
            this.f911d = savedState.f911d;
            this.f912e = savedState.f912e;
            this.f913f = savedState.f913f;
            this.f915h = savedState.f915h;
            this.f916i = savedState.f916i;
            this.f917j = savedState.f917j;
            this.f914g = savedState.f914g;
        }
    }

    class a {

        /* renamed from: a  reason: collision with root package name */
        public int f918a;

        /* renamed from: b  reason: collision with root package name */
        public int f919b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f920c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f921d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f922e;

        /* renamed from: f  reason: collision with root package name */
        public int[] f923f;

        public a() {
            b();
        }

        public void a(c[] cVarArr) {
            int length = cVarArr.length;
            int[] iArr = this.f923f;
            if (iArr == null || iArr.length < length) {
                this.f923f = new int[StaggeredGridLayoutManager.this.t.length];
            }
            for (int i2 = 0; i2 < length; i2++) {
                this.f923f[i2] = cVarArr[i2].b(Integer.MIN_VALUE);
            }
        }

        public void b() {
            this.f918a = -1;
            this.f919b = Integer.MIN_VALUE;
            this.f920c = false;
            this.f921d = false;
            this.f922e = false;
            int[] iArr = this.f923f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        public void a() {
            int i2;
            if (this.f920c) {
                i2 = StaggeredGridLayoutManager.this.u.b();
            } else {
                i2 = StaggeredGridLayoutManager.this.u.f();
            }
            this.f919b = i2;
        }

        public void a(int i2) {
            if (this.f920c) {
                this.f919b = StaggeredGridLayoutManager.this.u.b() - i2;
            } else {
                this.f919b = StaggeredGridLayoutManager.this.u.f() + i2;
            }
        }
    }

    public static class b extends RecyclerView.j {

        /* renamed from: e  reason: collision with root package name */
        public c f925e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f926f;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public void a(boolean z) {
            this.f926f = z;
        }

        public final int e() {
            c cVar = this.f925e;
            if (cVar == null) {
                return -1;
            }
            return cVar.f931e;
        }

        public boolean f() {
            return this.f926f;
        }

        public b(int i2, int i3) {
            super(i2, i3);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    class c {

        /* renamed from: a  reason: collision with root package name */
        public ArrayList<View> f927a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        public int f928b = Integer.MIN_VALUE;

        /* renamed from: c  reason: collision with root package name */
        public int f929c = Integer.MIN_VALUE;

        /* renamed from: d  reason: collision with root package name */
        public int f930d = 0;

        /* renamed from: e  reason: collision with root package name */
        public final int f931e;

        public c(int i2) {
            this.f931e = i2;
        }

        public int a(int i2) {
            int i3 = this.f929c;
            if (i3 != Integer.MIN_VALUE) {
                return i3;
            }
            if (this.f927a.size() == 0) {
                return i2;
            }
            a();
            return this.f929c;
        }

        public int b(int i2) {
            int i3 = this.f928b;
            if (i3 != Integer.MIN_VALUE) {
                return i3;
            }
            if (this.f927a.size() == 0) {
                return i2;
            }
            b();
            return this.f928b;
        }

        public void c(View view) {
            b b2 = b(view);
            b2.f925e = this;
            this.f927a.add(0, view);
            this.f928b = Integer.MIN_VALUE;
            if (this.f927a.size() == 1) {
                this.f929c = Integer.MIN_VALUE;
            }
            if (b2.c() || b2.b()) {
                this.f930d += StaggeredGridLayoutManager.this.u.b(view);
            }
        }

        public void d(int i2) {
            this.f928b = i2;
            this.f929c = i2;
        }

        public int e() {
            if (StaggeredGridLayoutManager.this.z) {
                return b(this.f927a.size() - 1, -1, false);
            }
            return b(0, this.f927a.size(), false);
        }

        public int f() {
            if (StaggeredGridLayoutManager.this.z) {
                return a(0, this.f927a.size(), true);
            }
            return a(this.f927a.size() - 1, -1, true);
        }

        public int g() {
            return this.f930d;
        }

        public int h() {
            int i2 = this.f929c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            a();
            return this.f929c;
        }

        public int i() {
            int i2 = this.f928b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            b();
            return this.f928b;
        }

        public void j() {
            this.f928b = Integer.MIN_VALUE;
            this.f929c = Integer.MIN_VALUE;
        }

        public void k() {
            int size;
            View remove = this.f927a.remove(this.f927a.size() - 1);
            b b2 = b(remove);
            b2.f925e = null;
            if (b2.c() || b2.b()) {
                this.f930d -= StaggeredGridLayoutManager.this.u.b(remove);
            }
            if (size == 1) {
                this.f928b = Integer.MIN_VALUE;
            }
            this.f929c = Integer.MIN_VALUE;
        }

        public void l() {
            View remove = this.f927a.remove(0);
            b b2 = b(remove);
            b2.f925e = null;
            if (this.f927a.size() == 0) {
                this.f929c = Integer.MIN_VALUE;
            }
            if (b2.c() || b2.b()) {
                this.f930d -= StaggeredGridLayoutManager.this.u.b(remove);
            }
            this.f928b = Integer.MIN_VALUE;
        }

        public int d() {
            if (StaggeredGridLayoutManager.this.z) {
                return a(this.f927a.size() - 1, -1, true);
            }
            return a(0, this.f927a.size(), true);
        }

        public void a() {
            ArrayList<View> arrayList = this.f927a;
            View view = arrayList.get(arrayList.size() - 1);
            b b2 = b(view);
            this.f929c = StaggeredGridLayoutManager.this.u.a(view);
            if (b2.f926f) {
                LazySpanLookup.FullSpanItem c2 = StaggeredGridLayoutManager.this.E.c(b2.a());
                if (c2 != null && c2.f905b == 1) {
                    this.f929c += c2.a(this.f931e);
                }
            }
        }

        public void b() {
            View view = this.f927a.get(0);
            b b2 = b(view);
            this.f928b = StaggeredGridLayoutManager.this.u.d(view);
            if (b2.f926f) {
                LazySpanLookup.FullSpanItem c2 = StaggeredGridLayoutManager.this.E.c(b2.a());
                if (c2 != null && c2.f905b == -1) {
                    this.f928b -= c2.a(this.f931e);
                }
            }
        }

        public void c() {
            this.f927a.clear();
            j();
            this.f930d = 0;
        }

        public void c(int i2) {
            int i3 = this.f928b;
            if (i3 != Integer.MIN_VALUE) {
                this.f928b = i3 + i2;
            }
            int i4 = this.f929c;
            if (i4 != Integer.MIN_VALUE) {
                this.f929c = i4 + i2;
            }
        }

        public void a(View view) {
            b b2 = b(view);
            b2.f925e = this;
            this.f927a.add(view);
            this.f929c = Integer.MIN_VALUE;
            if (this.f927a.size() == 1) {
                this.f928b = Integer.MIN_VALUE;
            }
            if (b2.c() || b2.b()) {
                this.f930d += StaggeredGridLayoutManager.this.u.b(view);
            }
        }

        public b b(View view) {
            return (b) view.getLayoutParams();
        }

        public int b(int i2, int i3, boolean z) {
            return a(i2, i3, z, true, false);
        }

        public void a(boolean z, int i2) {
            int i3;
            if (z) {
                i3 = a(Integer.MIN_VALUE);
            } else {
                i3 = b(Integer.MIN_VALUE);
            }
            c();
            if (i3 != Integer.MIN_VALUE) {
                if ((!z || i3 >= StaggeredGridLayoutManager.this.u.b()) && (z || i3 <= StaggeredGridLayoutManager.this.u.f())) {
                    if (i2 != Integer.MIN_VALUE) {
                        i3 += i2;
                    }
                    this.f929c = i3;
                    this.f928b = i3;
                }
            }
        }

        public int a(int i2, int i3, boolean z, boolean z2, boolean z3) {
            int f2 = StaggeredGridLayoutManager.this.u.f();
            int b2 = StaggeredGridLayoutManager.this.u.b();
            int i4 = i3 > i2 ? 1 : -1;
            while (i2 != i3) {
                View view = this.f927a.get(i2);
                int d2 = StaggeredGridLayoutManager.this.u.d(view);
                int a2 = StaggeredGridLayoutManager.this.u.a(view);
                boolean z4 = false;
                boolean z5 = !z3 ? d2 < b2 : d2 <= b2;
                if (!z3 ? a2 > f2 : a2 >= f2) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (!z || !z2) {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.l(view);
                        }
                        if (d2 < f2 || a2 > b2) {
                            return StaggeredGridLayoutManager.this.l(view);
                        }
                    } else if (d2 >= f2 && a2 <= b2) {
                        return StaggeredGridLayoutManager.this.l(view);
                    }
                }
                i2 += i4;
            }
            return -1;
        }

        public int a(int i2, int i3, boolean z) {
            return a(i2, i3, false, false, z);
        }

        public View a(int i2, int i3) {
            View view = null;
            if (i3 != -1) {
                int size = this.f927a.size() - 1;
                while (size >= 0) {
                    View view2 = this.f927a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.z && staggeredGridLayoutManager.l(view2) >= i2) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.z && staggeredGridLayoutManager2.l(view2) <= i2) || !view2.hasFocusable()) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.f927a.size();
                int i4 = 0;
                while (i4 < size2) {
                    View view3 = this.f927a.get(i4);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.z && staggeredGridLayoutManager3.l(view3) <= i2) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.z && staggeredGridLayoutManager4.l(view3) >= i2) || !view3.hasFocusable()) {
                        break;
                    }
                    i4++;
                    view = view3;
                }
            }
            return view;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        RecyclerView.i.b a2 = RecyclerView.i.a(context, attributeSet, i2, i3);
        v(a2.f832a);
        w(a2.f833b);
        d(a2.f834c);
        this.y = new w();
        H();
    }

    public boolean D() {
        return this.I == null;
    }

    public boolean E() {
        int a2 = this.t[0].a(Integer.MIN_VALUE);
        for (int i2 = 1; i2 < this.s; i2++) {
            if (this.t[i2].a(Integer.MIN_VALUE) != a2) {
                return false;
            }
        }
        return true;
    }

    public boolean F() {
        int b2 = this.t[0].b(Integer.MIN_VALUE);
        for (int i2 = 1; i2 < this.s; i2++) {
            if (this.t[i2].b(Integer.MIN_VALUE) != b2) {
                return false;
            }
        }
        return true;
    }

    public boolean G() {
        int i2;
        int i3;
        if (e() == 0 || this.F == 0 || !u()) {
            return false;
        }
        if (this.A) {
            i3 = K();
            i2 = J();
        } else {
            i3 = J();
            i2 = K();
        }
        if (i3 == 0 && L() != null) {
            this.E.a();
            A();
            z();
            return true;
        } else if (!this.M) {
            return false;
        } else {
            int i4 = this.A ? -1 : 1;
            int i5 = i2 + 1;
            LazySpanLookup.FullSpanItem a2 = this.E.a(i3, i5, i4, true);
            if (a2 == null) {
                this.M = false;
                this.E.b(i5);
                return false;
            }
            LazySpanLookup.FullSpanItem a3 = this.E.a(i3, a2.f904a, i4 * -1, true);
            if (a3 == null) {
                this.E.b(a2.f904a);
            } else {
                this.E.b(a3.f904a + 1);
            }
            A();
            z();
            return true;
        }
    }

    public final void H() {
        this.u = D.a(this, this.w);
        this.v = D.a(this, 1 - this.w);
    }

    public int I() {
        View view;
        if (this.A) {
            view = b(true);
        } else {
            view = c(true);
        }
        if (view == null) {
            return -1;
        }
        return l(view);
    }

    public int J() {
        if (e() == 0) {
            return 0;
        }
        return l(d(0));
    }

    public int K() {
        int e2 = e();
        if (e2 == 0) {
            return 0;
        }
        return l(d(e2 - 1));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0074, code lost:
        if (r10 == r11) goto L_0x0088;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0086, code lost:
        if (r10 == r11) goto L_0x0088;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x008a, code lost:
        r10 = false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.view.View L() {
        /*
            r12 = this;
            int r0 = r12.e()
            r1 = 1
            int r0 = r0 - r1
            java.util.BitSet r2 = new java.util.BitSet
            int r3 = r12.s
            r2.<init>(r3)
            int r3 = r12.s
            r4 = 0
            r2.set(r4, r3, r1)
            int r3 = r12.w
            r5 = -1
            if (r3 != r1) goto L_0x0020
            boolean r3 = r12.N()
            if (r3 == 0) goto L_0x0020
            r3 = 1
            goto L_0x0021
        L_0x0020:
            r3 = -1
        L_0x0021:
            boolean r6 = r12.A
            if (r6 == 0) goto L_0x0027
            r6 = -1
            goto L_0x002b
        L_0x0027:
            int r0 = r0 + 1
            r6 = r0
            r0 = 0
        L_0x002b:
            if (r0 >= r6) goto L_0x002e
            r5 = 1
        L_0x002e:
            if (r0 == r6) goto L_0x00ab
            android.view.View r7 = r12.d((int) r0)
            android.view.ViewGroup$LayoutParams r8 = r7.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$b r8 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.b) r8
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r8.f925e
            int r9 = r9.f931e
            boolean r9 = r2.get(r9)
            if (r9 == 0) goto L_0x0054
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r8.f925e
            boolean r9 = r12.a((androidx.recyclerview.widget.StaggeredGridLayoutManager.c) r9)
            if (r9 == 0) goto L_0x004d
            return r7
        L_0x004d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r8.f925e
            int r9 = r9.f931e
            r2.clear(r9)
        L_0x0054:
            boolean r9 = r8.f926f
            if (r9 == 0) goto L_0x0059
            goto L_0x00a9
        L_0x0059:
            int r9 = r0 + r5
            if (r9 == r6) goto L_0x00a9
            android.view.View r9 = r12.d((int) r9)
            boolean r10 = r12.A
            if (r10 == 0) goto L_0x0077
            b.y.a.D r10 = r12.u
            int r10 = r10.a((android.view.View) r7)
            b.y.a.D r11 = r12.u
            int r11 = r11.a((android.view.View) r9)
            if (r10 >= r11) goto L_0x0074
            return r7
        L_0x0074:
            if (r10 != r11) goto L_0x008a
            goto L_0x0088
        L_0x0077:
            b.y.a.D r10 = r12.u
            int r10 = r10.d(r7)
            b.y.a.D r11 = r12.u
            int r11 = r11.d(r9)
            if (r10 <= r11) goto L_0x0086
            return r7
        L_0x0086:
            if (r10 != r11) goto L_0x008a
        L_0x0088:
            r10 = 1
            goto L_0x008b
        L_0x008a:
            r10 = 0
        L_0x008b:
            if (r10 == 0) goto L_0x00a9
            android.view.ViewGroup$LayoutParams r9 = r9.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$b r9 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.b) r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r8 = r8.f925e
            int r8 = r8.f931e
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r9.f925e
            int r9 = r9.f931e
            int r8 = r8 - r9
            if (r8 >= 0) goto L_0x00a0
            r8 = 1
            goto L_0x00a1
        L_0x00a0:
            r8 = 0
        L_0x00a1:
            if (r3 >= 0) goto L_0x00a5
            r9 = 1
            goto L_0x00a6
        L_0x00a5:
            r9 = 0
        L_0x00a6:
            if (r8 == r9) goto L_0x00a9
            return r7
        L_0x00a9:
            int r0 = r0 + r5
            goto L_0x002e
        L_0x00ab:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.L():android.view.View");
    }

    public void M() {
        this.E.a();
        z();
    }

    public boolean N() {
        return k() == 1;
    }

    public final void O() {
        if (this.v.d() != 1073741824) {
            int e2 = e();
            float f2 = 0.0f;
            for (int i2 = 0; i2 < e2; i2++) {
                View d2 = d(i2);
                float b2 = (float) this.v.b(d2);
                if (b2 >= f2) {
                    if (((b) d2.getLayoutParams()).f()) {
                        b2 = (b2 * 1.0f) / ((float) this.s);
                    }
                    f2 = Math.max(f2, b2);
                }
            }
            int i3 = this.x;
            int round = Math.round(f2 * ((float) this.s));
            if (this.v.d() == Integer.MIN_VALUE) {
                round = Math.min(round, this.v.g());
            }
            x(round);
            if (this.x != i3) {
                for (int i4 = 0; i4 < e2; i4++) {
                    View d3 = d(i4);
                    b bVar = (b) d3.getLayoutParams();
                    if (!bVar.f926f) {
                        if (!N() || this.w != 1) {
                            int i5 = bVar.f925e.f931e;
                            int i6 = this.x * i5;
                            int i7 = i5 * i3;
                            if (this.w == 1) {
                                d3.offsetLeftAndRight(i6 - i7);
                            } else {
                                d3.offsetTopAndBottom(i6 - i7);
                            }
                        } else {
                            int i8 = this.s;
                            int i9 = bVar.f925e.f931e;
                            d3.offsetLeftAndRight(((-((i8 - 1) - i9)) * this.x) - ((-((i8 - 1) - i9)) * i3));
                        }
                    }
                }
            }
        }
    }

    public final void P() {
        if (this.w == 1 || !N()) {
            this.A = this.z;
        } else {
            this.A = !this.z;
        }
    }

    public final boolean a(c cVar) {
        if (this.A) {
            if (cVar.h() < this.u.b()) {
                ArrayList<View> arrayList = cVar.f927a;
                return !cVar.b(arrayList.get(arrayList.size() - 1)).f926f;
            }
        } else if (cVar.i() > this.u.f()) {
            return !cVar.b(cVar.f927a.get(0)).f926f;
        }
        return false;
    }

    public void b(RecyclerView recyclerView, RecyclerView.p pVar) {
        super.b(recyclerView, pVar);
        a(this.P);
        for (int i2 = 0; i2 < this.s; i2++) {
            this.t[i2].c();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0157, code lost:
        if (G() != false) goto L_0x015b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void c(androidx.recyclerview.widget.RecyclerView.p r9, androidx.recyclerview.widget.RecyclerView.t r10, boolean r11) {
        /*
            r8 = this;
            androidx.recyclerview.widget.StaggeredGridLayoutManager$a r0 = r8.L
            androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState r1 = r8.I
            r2 = -1
            if (r1 != 0) goto L_0x000b
            int r1 = r8.C
            if (r1 == r2) goto L_0x0018
        L_0x000b:
            int r1 = r10.a()
            if (r1 != 0) goto L_0x0018
            r8.b((androidx.recyclerview.widget.RecyclerView.p) r9)
            r0.b()
            return
        L_0x0018:
            boolean r1 = r0.f922e
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L_0x0029
            int r1 = r8.C
            if (r1 != r2) goto L_0x0029
            androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState r1 = r8.I
            if (r1 == 0) goto L_0x0027
            goto L_0x0029
        L_0x0027:
            r1 = 0
            goto L_0x002a
        L_0x0029:
            r1 = 1
        L_0x002a:
            if (r1 == 0) goto L_0x0043
            r0.b()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState r5 = r8.I
            if (r5 == 0) goto L_0x0037
            r8.a((androidx.recyclerview.widget.StaggeredGridLayoutManager.a) r0)
            goto L_0x003e
        L_0x0037:
            r8.P()
            boolean r5 = r8.A
            r0.f920c = r5
        L_0x003e:
            r8.c(r10, r0)
            r0.f922e = r4
        L_0x0043:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState r5 = r8.I
            if (r5 != 0) goto L_0x0060
            int r5 = r8.C
            if (r5 != r2) goto L_0x0060
            boolean r5 = r0.f920c
            boolean r6 = r8.G
            if (r5 != r6) goto L_0x0059
            boolean r5 = r8.N()
            boolean r6 = r8.H
            if (r5 == r6) goto L_0x0060
        L_0x0059:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r5 = r8.E
            r5.a()
            r0.f921d = r4
        L_0x0060:
            int r5 = r8.e()
            if (r5 <= 0) goto L_0x00c9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState r5 = r8.I
            if (r5 == 0) goto L_0x006e
            int r5 = r5.f910c
            if (r5 >= r4) goto L_0x00c9
        L_0x006e:
            boolean r5 = r0.f921d
            if (r5 == 0) goto L_0x008e
            r1 = 0
        L_0x0073:
            int r5 = r8.s
            if (r1 >= r5) goto L_0x00c9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c[] r5 = r8.t
            r5 = r5[r1]
            r5.c()
            int r5 = r0.f919b
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r5 == r6) goto L_0x008b
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c[] r6 = r8.t
            r6 = r6[r1]
            r6.d(r5)
        L_0x008b:
            int r1 = r1 + 1
            goto L_0x0073
        L_0x008e:
            if (r1 != 0) goto L_0x00af
            androidx.recyclerview.widget.StaggeredGridLayoutManager$a r1 = r8.L
            int[] r1 = r1.f923f
            if (r1 != 0) goto L_0x0097
            goto L_0x00af
        L_0x0097:
            r1 = 0
        L_0x0098:
            int r5 = r8.s
            if (r1 >= r5) goto L_0x00c9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c[] r5 = r8.t
            r5 = r5[r1]
            r5.c()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$a r6 = r8.L
            int[] r6 = r6.f923f
            r6 = r6[r1]
            r5.d(r6)
            int r1 = r1 + 1
            goto L_0x0098
        L_0x00af:
            r1 = 0
        L_0x00b0:
            int r5 = r8.s
            if (r1 >= r5) goto L_0x00c2
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c[] r5 = r8.t
            r5 = r5[r1]
            boolean r6 = r8.A
            int r7 = r0.f919b
            r5.a((boolean) r6, (int) r7)
            int r1 = r1 + 1
            goto L_0x00b0
        L_0x00c2:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$a r1 = r8.L
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c[] r5 = r8.t
            r1.a((androidx.recyclerview.widget.StaggeredGridLayoutManager.c[]) r5)
        L_0x00c9:
            r8.a((androidx.recyclerview.widget.RecyclerView.p) r9)
            b.y.a.w r1 = r8.y
            r1.f3558a = r3
            r8.M = r3
            b.y.a.D r1 = r8.v
            int r1 = r1.g()
            r8.x(r1)
            int r1 = r0.f918a
            r8.b((int) r1, (androidx.recyclerview.widget.RecyclerView.t) r10)
            boolean r1 = r0.f920c
            if (r1 == 0) goto L_0x00fc
            r8.u(r2)
            b.y.a.w r1 = r8.y
            r8.a((androidx.recyclerview.widget.RecyclerView.p) r9, (b.y.a.w) r1, (androidx.recyclerview.widget.RecyclerView.t) r10)
            r8.u(r4)
            b.y.a.w r1 = r8.y
            int r2 = r0.f918a
            int r5 = r1.f3561d
            int r2 = r2 + r5
            r1.f3560c = r2
            r8.a((androidx.recyclerview.widget.RecyclerView.p) r9, (b.y.a.w) r1, (androidx.recyclerview.widget.RecyclerView.t) r10)
            goto L_0x0113
        L_0x00fc:
            r8.u(r4)
            b.y.a.w r1 = r8.y
            r8.a((androidx.recyclerview.widget.RecyclerView.p) r9, (b.y.a.w) r1, (androidx.recyclerview.widget.RecyclerView.t) r10)
            r8.u(r2)
            b.y.a.w r1 = r8.y
            int r2 = r0.f918a
            int r5 = r1.f3561d
            int r2 = r2 + r5
            r1.f3560c = r2
            r8.a((androidx.recyclerview.widget.RecyclerView.p) r9, (b.y.a.w) r1, (androidx.recyclerview.widget.RecyclerView.t) r10)
        L_0x0113:
            r8.O()
            int r1 = r8.e()
            if (r1 <= 0) goto L_0x012d
            boolean r1 = r8.A
            if (r1 == 0) goto L_0x0127
            r8.a((androidx.recyclerview.widget.RecyclerView.p) r9, (androidx.recyclerview.widget.RecyclerView.t) r10, (boolean) r4)
            r8.b((androidx.recyclerview.widget.RecyclerView.p) r9, (androidx.recyclerview.widget.RecyclerView.t) r10, (boolean) r3)
            goto L_0x012d
        L_0x0127:
            r8.b((androidx.recyclerview.widget.RecyclerView.p) r9, (androidx.recyclerview.widget.RecyclerView.t) r10, (boolean) r4)
            r8.a((androidx.recyclerview.widget.RecyclerView.p) r9, (androidx.recyclerview.widget.RecyclerView.t) r10, (boolean) r3)
        L_0x012d:
            if (r11 == 0) goto L_0x015a
            boolean r11 = r10.d()
            if (r11 != 0) goto L_0x015a
            int r11 = r8.F
            if (r11 == 0) goto L_0x014b
            int r11 = r8.e()
            if (r11 <= 0) goto L_0x014b
            boolean r11 = r8.M
            if (r11 != 0) goto L_0x0149
            android.view.View r11 = r8.L()
            if (r11 == 0) goto L_0x014b
        L_0x0149:
            r11 = 1
            goto L_0x014c
        L_0x014b:
            r11 = 0
        L_0x014c:
            if (r11 == 0) goto L_0x015a
            java.lang.Runnable r11 = r8.P
            r8.a((java.lang.Runnable) r11)
            boolean r11 = r8.G()
            if (r11 == 0) goto L_0x015a
            goto L_0x015b
        L_0x015a:
            r4 = 0
        L_0x015b:
            boolean r11 = r10.d()
            if (r11 == 0) goto L_0x0166
            androidx.recyclerview.widget.StaggeredGridLayoutManager$a r11 = r8.L
            r11.b()
        L_0x0166:
            boolean r11 = r0.f920c
            r8.G = r11
            boolean r11 = r8.N()
            r8.H = r11
            if (r4 == 0) goto L_0x017a
            androidx.recyclerview.widget.StaggeredGridLayoutManager$a r11 = r8.L
            r11.b()
            r8.c((androidx.recyclerview.widget.RecyclerView.p) r9, (androidx.recyclerview.widget.RecyclerView.t) r10, (boolean) r3)
        L_0x017a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.c(androidx.recyclerview.widget.RecyclerView$p, androidx.recyclerview.widget.RecyclerView$t, boolean):void");
    }

    public void d(boolean z2) {
        a((String) null);
        SavedState savedState = this.I;
        if (!(savedState == null || savedState.f915h == z2)) {
            savedState.f915h = z2;
        }
        this.z = z2;
        z();
    }

    public void e(RecyclerView.p pVar, RecyclerView.t tVar) {
        c(pVar, tVar, true);
    }

    public int f(RecyclerView.t tVar) {
        return j(tVar);
    }

    public void g(int i2) {
        if (i2 == 0) {
            G();
        }
    }

    public final int h(RecyclerView.t tVar) {
        if (e() == 0) {
            return 0;
        }
        return O.a(tVar, this.u, c(!this.N), b(!this.N), this, this.N);
    }

    public final int i(RecyclerView.t tVar) {
        if (e() == 0) {
            return 0;
        }
        return O.a(tVar, this.u, c(!this.N), b(!this.N), this, this.N, this.A);
    }

    public final int j(RecyclerView.t tVar) {
        if (e() == 0) {
            return 0;
        }
        return O.b(tVar, this.u, c(!this.N), b(!this.N), this, this.N);
    }

    public final int k(int i2) {
        int i3 = -1;
        int i4 = 1;
        if (i2 == 1) {
            return (this.w != 1 && N()) ? 1 : -1;
        }
        if (i2 == 2) {
            return (this.w != 1 && N()) ? -1 : 1;
        }
        if (i2 == 17) {
            if (this.w != 0) {
                i3 = Integer.MIN_VALUE;
            }
            return i3;
        } else if (i2 == 33) {
            if (this.w != 1) {
                i3 = Integer.MIN_VALUE;
            }
            return i3;
        } else if (i2 == 66) {
            if (this.w != 0) {
                i4 = Integer.MIN_VALUE;
            }
            return i4;
        } else if (i2 != 130) {
            return Integer.MIN_VALUE;
        } else {
            if (this.w != 1) {
                i4 = Integer.MIN_VALUE;
            }
            return i4;
        }
    }

    public final LazySpanLookup.FullSpanItem l(int i2) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f906c = new int[this.s];
        for (int i3 = 0; i3 < this.s; i3++) {
            fullSpanItem.f906c[i3] = i2 - this.t[i3].a(i2);
        }
        return fullSpanItem;
    }

    public final LazySpanLookup.FullSpanItem m(int i2) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f906c = new int[this.s];
        for (int i3 = 0; i3 < this.s; i3++) {
            fullSpanItem.f906c[i3] = this.t[i3].b(i2) - i2;
        }
        return fullSpanItem;
    }

    public final int n(int i2) {
        int e2 = e();
        for (int i3 = 0; i3 < e2; i3++) {
            int l2 = l(d(i3));
            if (l2 >= 0 && l2 < i2) {
                return l2;
            }
        }
        return 0;
    }

    public final int o(int i2) {
        for (int e2 = e() - 1; e2 >= 0; e2--) {
            int l2 = l(d(e2));
            if (l2 >= 0 && l2 < i2) {
                return l2;
            }
        }
        return 0;
    }

    public final void p(View view) {
        for (int i2 = this.s - 1; i2 >= 0; i2--) {
            this.t[i2].a(view);
        }
    }

    public final void q(View view) {
        for (int i2 = this.s - 1; i2 >= 0; i2--) {
            this.t[i2].c(view);
        }
    }

    public final int r(int i2) {
        int a2 = this.t[0].a(i2);
        for (int i3 = 1; i3 < this.s; i3++) {
            int a3 = this.t[i3].a(i2);
            if (a3 < a2) {
                a2 = a3;
            }
        }
        return a2;
    }

    public final int s(int i2) {
        int b2 = this.t[0].b(i2);
        for (int i3 = 1; i3 < this.s; i3++) {
            int b3 = this.t[i3].b(i2);
            if (b3 < b2) {
                b2 = b3;
            }
        }
        return b2;
    }

    public final boolean t(int i2) {
        boolean z2 = true;
        if (this.w == 0) {
            if ((i2 == -1) == this.A) {
                z2 = false;
            }
            return z2;
        }
        if (((i2 == -1) == this.A) != N()) {
            z2 = false;
        }
        return z2;
    }

    public final void u(int i2) {
        w wVar = this.y;
        wVar.f3562e = i2;
        int i3 = 1;
        if (this.A != (i2 == -1)) {
            i3 = -1;
        }
        wVar.f3561d = i3;
    }

    public boolean v() {
        return this.F != 0;
    }

    public void w(int i2) {
        a((String) null);
        if (i2 != this.s) {
            M();
            this.s = i2;
            this.B = new BitSet(this.s);
            this.t = new c[this.s];
            for (int i3 = 0; i3 < this.s; i3++) {
                this.t[i3] = new c(i3);
            }
            z();
        }
    }

    public void x(int i2) {
        this.x = i2 / this.s;
        this.J = View.MeasureSpec.makeMeasureSpec(i2, this.v.d());
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0088  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.os.Parcelable y() {
        /*
            r4 = this;
            androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState r0 = r4.I
            if (r0 == 0) goto L_0x000a
            androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState r1 = new androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState
            r1.<init>((androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState) r0)
            return r1
        L_0x000a:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState r0 = new androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState
            r0.<init>()
            boolean r1 = r4.z
            r0.f915h = r1
            boolean r1 = r4.G
            r0.f916i = r1
            boolean r1 = r4.H
            r0.f917j = r1
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r1 = r4.E
            r2 = 0
            if (r1 == 0) goto L_0x0030
            int[] r3 = r1.f902a
            if (r3 == 0) goto L_0x0030
            r0.f913f = r3
            int[] r3 = r0.f913f
            int r3 = r3.length
            r0.f912e = r3
            java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r1 = r1.f903b
            r0.f914g = r1
            goto L_0x0032
        L_0x0030:
            r0.f912e = r2
        L_0x0032:
            int r1 = r4.e()
            if (r1 <= 0) goto L_0x0088
            boolean r1 = r4.G
            if (r1 == 0) goto L_0x0041
            int r1 = r4.K()
            goto L_0x0045
        L_0x0041:
            int r1 = r4.J()
        L_0x0045:
            r0.f908a = r1
            int r1 = r4.I()
            r0.f909b = r1
            int r1 = r4.s
            r0.f910c = r1
            int[] r1 = new int[r1]
            r0.f911d = r1
        L_0x0055:
            int r1 = r4.s
            if (r2 >= r1) goto L_0x008f
            boolean r1 = r4.G
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r1 == 0) goto L_0x0070
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c[] r1 = r4.t
            r1 = r1[r2]
            int r1 = r1.a((int) r3)
            if (r1 == r3) goto L_0x0081
            b.y.a.D r3 = r4.u
            int r3 = r3.b()
            goto L_0x0080
        L_0x0070:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c[] r1 = r4.t
            r1 = r1[r2]
            int r1 = r1.b((int) r3)
            if (r1 == r3) goto L_0x0081
            b.y.a.D r3 = r4.u
            int r3 = r3.f()
        L_0x0080:
            int r1 = r1 - r3
        L_0x0081:
            int[] r3 = r0.f911d
            r3[r2] = r1
            int r2 = r2 + 1
            goto L_0x0055
        L_0x0088:
            r1 = -1
            r0.f908a = r1
            r0.f909b = r1
            r0.f910c = r2
        L_0x008f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.y():android.os.Parcelable");
    }

    public int e(RecyclerView.t tVar) {
        return i(tVar);
    }

    public void f(int i2) {
        super.f(i2);
        for (int i3 = 0; i3 < this.s; i3++) {
            this.t[i3].c(i2);
        }
    }

    public void g(RecyclerView.t tVar) {
        super.g(tVar);
        this.C = -1;
        this.D = Integer.MIN_VALUE;
        this.I = null;
        this.L.b();
    }

    public void v(int i2) {
        if (i2 == 0 || i2 == 1) {
            a((String) null);
            if (i2 != this.w) {
                this.w = i2;
                D d2 = this.u;
                this.u = this.v;
                this.v = d2;
                z();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("invalid orientation.");
    }

    public void e(int i2) {
        super.e(i2);
        for (int i3 = 0; i3 < this.s; i3++) {
            this.t[i3].c(i2);
        }
    }

    public final int p(int i2) {
        int a2 = this.t[0].a(i2);
        for (int i3 = 1; i3 < this.s; i3++) {
            int a3 = this.t[i3].a(i2);
            if (a3 > a2) {
                a2 = a3;
            }
        }
        return a2;
    }

    public final int q(int i2) {
        int b2 = this.t[0].b(i2);
        for (int i3 = 1; i3 < this.s; i3++) {
            int b3 = this.t[i3].b(i2);
            if (b3 > b2) {
                b2 = b3;
            }
        }
        return b2;
    }

    public final void f(int i2, int i3) {
        for (int i4 = 0; i4 < this.s; i4++) {
            if (!this.t[i4].f927a.isEmpty()) {
                a(this.t[i4], i2, i3);
            }
        }
    }

    public boolean b(RecyclerView.t tVar, a aVar) {
        int i2;
        int i3;
        boolean z2 = false;
        if (!tVar.d()) {
            int i4 = this.C;
            if (i4 != -1) {
                if (i4 < 0 || i4 >= tVar.a()) {
                    this.C = -1;
                    this.D = Integer.MIN_VALUE;
                } else {
                    SavedState savedState = this.I;
                    if (savedState == null || savedState.f908a == -1 || savedState.f910c < 1) {
                        View c2 = c(this.C);
                        if (c2 != null) {
                            if (this.A) {
                                i2 = K();
                            } else {
                                i2 = J();
                            }
                            aVar.f918a = i2;
                            if (this.D != Integer.MIN_VALUE) {
                                if (aVar.f920c) {
                                    aVar.f919b = (this.u.b() - this.D) - this.u.a(c2);
                                } else {
                                    aVar.f919b = (this.u.f() + this.D) - this.u.d(c2);
                                }
                                return true;
                            } else if (this.u.b(c2) > this.u.g()) {
                                if (aVar.f920c) {
                                    i3 = this.u.b();
                                } else {
                                    i3 = this.u.f();
                                }
                                aVar.f919b = i3;
                                return true;
                            } else {
                                int d2 = this.u.d(c2) - this.u.f();
                                if (d2 < 0) {
                                    aVar.f919b = -d2;
                                    return true;
                                }
                                int b2 = this.u.b() - this.u.a(c2);
                                if (b2 < 0) {
                                    aVar.f919b = b2;
                                    return true;
                                }
                                aVar.f919b = Integer.MIN_VALUE;
                            }
                        } else {
                            aVar.f918a = this.C;
                            int i5 = this.D;
                            if (i5 == Integer.MIN_VALUE) {
                                if (j(aVar.f918a) == 1) {
                                    z2 = true;
                                }
                                aVar.f920c = z2;
                                aVar.a();
                            } else {
                                aVar.a(i5);
                            }
                            aVar.f921d = true;
                        }
                    } else {
                        aVar.f919b = Integer.MIN_VALUE;
                        aVar.f918a = this.C;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public int d(RecyclerView.t tVar) {
        return h(tVar);
    }

    public void e(int i2, int i3) {
        SavedState savedState = this.I;
        if (savedState != null) {
            savedState.a();
        }
        this.C = i2;
        this.D = i3;
        z();
    }

    public void i(int i2) {
        SavedState savedState = this.I;
        if (!(savedState == null || savedState.f908a == i2)) {
            savedState.a();
        }
        this.C = i2;
        this.D = Integer.MIN_VALUE;
        z();
    }

    public final int j(int i2) {
        int i3 = -1;
        if (e() == 0) {
            if (this.A) {
                i3 = 1;
            }
            return i3;
        }
        if ((i2 < J()) == this.A) {
            i3 = 1;
        }
        return i3;
    }

    public final int d(int i2, int i3, int i4) {
        if (i3 == 0 && i4 == 0) {
            return i2;
        }
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i2) - i3) - i4), mode);
        }
        return i2;
    }

    public void a(String str) {
        if (this.I == null) {
            super.a(str);
        }
    }

    public void d(RecyclerView recyclerView) {
        this.E.a();
        z();
    }

    public void a(Rect rect, int i2, int i3) {
        int i4;
        int i5;
        int o = o() + p();
        int q = q() + n();
        if (this.w == 1) {
            i5 = RecyclerView.i.a(i3, rect.height() + q, l());
            i4 = RecyclerView.i.a(i2, (this.x * this.s) + o, m());
        } else {
            i4 = RecyclerView.i.a(i2, rect.width() + o, m());
            i5 = RecyclerView.i.a(i3, (this.x * this.s) + q, l());
        }
        c(i4, i5);
    }

    public final void a(a aVar) {
        int i2;
        SavedState savedState = this.I;
        int i3 = savedState.f910c;
        if (i3 > 0) {
            if (i3 == this.s) {
                for (int i4 = 0; i4 < this.s; i4++) {
                    this.t[i4].c();
                    SavedState savedState2 = this.I;
                    int i5 = savedState2.f911d[i4];
                    if (i5 != Integer.MIN_VALUE) {
                        if (savedState2.f916i) {
                            i2 = this.u.b();
                        } else {
                            i2 = this.u.f();
                        }
                        i5 += i2;
                    }
                    this.t[i4].d(i5);
                }
            } else {
                savedState.b();
                SavedState savedState3 = this.I;
                savedState3.f908a = savedState3.f909b;
            }
        }
        SavedState savedState4 = this.I;
        this.H = savedState4.f917j;
        d(savedState4.f915h);
        P();
        SavedState savedState5 = this.I;
        int i6 = savedState5.f908a;
        if (i6 != -1) {
            this.C = i6;
            aVar.f920c = savedState5.f916i;
        } else {
            aVar.f920c = this.A;
        }
        SavedState savedState6 = this.I;
        if (savedState6.f912e > 1) {
            LazySpanLookup lazySpanLookup = this.E;
            lazySpanLookup.f902a = savedState6.f913f;
            lazySpanLookup.f903b = savedState6.f914g;
        }
    }

    public int b(RecyclerView.t tVar) {
        return i(tVar);
    }

    public int b(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.w == 0) {
            return this.s;
        }
        return super.b(pVar, tVar);
    }

    public View b(boolean z2) {
        int f2 = this.u.f();
        int b2 = this.u.b();
        View view = null;
        for (int e2 = e() - 1; e2 >= 0; e2--) {
            View d2 = d(e2);
            int d3 = this.u.d(d2);
            int a2 = this.u.a(d2);
            if (a2 > f2 && d3 < b2) {
                if (a2 <= b2 || !z2) {
                    return d2;
                }
                if (view == null) {
                    view = d2;
                }
            }
        }
        return view;
    }

    public final boolean a(RecyclerView.t tVar, a aVar) {
        int i2;
        if (this.G) {
            i2 = o(tVar.a());
        } else {
            i2 = n(tVar.a());
        }
        aVar.f918a = i2;
        aVar.f919b = Integer.MIN_VALUE;
        return true;
    }

    public int[] a(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.s];
        } else if (iArr.length < this.s) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.s + ", array size:" + iArr.length);
        }
        for (int i2 = 0; i2 < this.s; i2++) {
            iArr[i2] = this.t[i2].e();
        }
        return iArr;
    }

    public final void b(RecyclerView.p pVar, RecyclerView.t tVar, boolean z2) {
        int s2 = s(Integer.MAX_VALUE);
        if (s2 != Integer.MAX_VALUE) {
            int f2 = s2 - this.u.f();
            if (f2 > 0) {
                int c2 = f2 - c(f2, pVar, tVar);
                if (z2 && c2 > 0) {
                    this.u.a(-c2);
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x004d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(int r5, androidx.recyclerview.widget.RecyclerView.t r6) {
        /*
            r4 = this;
            b.y.a.w r0 = r4.y
            r1 = 0
            r0.f3559b = r1
            r0.f3560c = r5
            boolean r0 = r4.x()
            r2 = 1
            if (r0 == 0) goto L_0x002e
            int r6 = r6.b()
            r0 = -1
            if (r6 == r0) goto L_0x002e
            boolean r0 = r4.A
            if (r6 >= r5) goto L_0x001b
            r5 = 1
            goto L_0x001c
        L_0x001b:
            r5 = 0
        L_0x001c:
            if (r0 != r5) goto L_0x0025
            b.y.a.D r5 = r4.u
            int r5 = r5.g()
            goto L_0x002f
        L_0x0025:
            b.y.a.D r5 = r4.u
            int r5 = r5.g()
            r6 = r5
            r5 = 0
            goto L_0x0030
        L_0x002e:
            r5 = 0
        L_0x002f:
            r6 = 0
        L_0x0030:
            boolean r0 = r4.f()
            if (r0 == 0) goto L_0x004d
            b.y.a.w r0 = r4.y
            b.y.a.D r3 = r4.u
            int r3 = r3.f()
            int r3 = r3 - r6
            r0.f3563f = r3
            b.y.a.w r6 = r4.y
            b.y.a.D r0 = r4.u
            int r0 = r0.b()
            int r0 = r0 + r5
            r6.f3564g = r0
            goto L_0x005d
        L_0x004d:
            b.y.a.w r0 = r4.y
            b.y.a.D r3 = r4.u
            int r3 = r3.a()
            int r3 = r3 + r5
            r0.f3564g = r3
            b.y.a.w r5 = r4.y
            int r6 = -r6
            r5.f3563f = r6
        L_0x005d:
            b.y.a.w r5 = r4.y
            r5.f3565h = r1
            r5.f3558a = r2
            b.y.a.D r6 = r4.u
            int r6 = r6.d()
            if (r6 != 0) goto L_0x0074
            b.y.a.D r6 = r4.u
            int r6 = r6.a()
            if (r6 != 0) goto L_0x0074
            r1 = 1
        L_0x0074:
            r5.f3566i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.b(int, androidx.recyclerview.widget.RecyclerView$t):void");
    }

    public int a(RecyclerView.t tVar) {
        return h(tVar);
    }

    public final void a(View view, b bVar, boolean z2) {
        if (bVar.f926f) {
            if (this.w == 1) {
                a(view, this.J, RecyclerView.i.a(h(), i(), q() + n(), bVar.height, true), z2);
            } else {
                a(view, RecyclerView.i.a(r(), s(), o() + p(), bVar.width, true), this.J, z2);
            }
        } else if (this.w == 1) {
            a(view, RecyclerView.i.a(this.x, s(), 0, bVar.width, false), RecyclerView.i.a(h(), i(), q() + n(), bVar.height, true), z2);
        } else {
            a(view, RecyclerView.i.a(r(), s(), o() + p(), bVar.width, true), RecyclerView.i.a(this.x, i(), 0, bVar.height, false), z2);
        }
    }

    public void c(RecyclerView.t tVar, a aVar) {
        if (!b(tVar, aVar) && !a(tVar, aVar)) {
            aVar.a();
            aVar.f918a = 0;
        }
    }

    public void b(RecyclerView recyclerView, int i2, int i3) {
        c(i2, i3, 1);
    }

    public final void b(RecyclerView.p pVar, int i2) {
        while (e() > 0) {
            View d2 = d(0);
            if (this.u.a(d2) > i2 || this.u.e(d2) > i2) {
                break;
            }
            b bVar = (b) d2.getLayoutParams();
            if (bVar.f926f) {
                int i3 = 0;
                while (i3 < this.s) {
                    if (this.t[i3].f927a.size() != 1) {
                        i3++;
                    } else {
                        return;
                    }
                }
                for (int i4 = 0; i4 < this.s; i4++) {
                    this.t[i4].l();
                }
            } else if (bVar.f925e.f927a.size() != 1) {
                bVar.f925e.l();
            } else {
                return;
            }
            a(d2, pVar);
        }
    }

    public int c(RecyclerView.t tVar) {
        return j(tVar);
    }

    public View c(boolean z2) {
        int f2 = this.u.f();
        int b2 = this.u.b();
        int e2 = e();
        View view = null;
        for (int i2 = 0; i2 < e2; i2++) {
            View d2 = d(i2);
            int d3 = this.u.d(d2);
            if (this.u.a(d2) > f2 && d3 < b2) {
                if (d3 >= f2 || !z2) {
                    return d2;
                }
                if (view == null) {
                    view = d2;
                }
            }
        }
        return view;
    }

    public void c(RecyclerView recyclerView, int i2, int i3) {
        c(i2, i3, 2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0027  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x003e  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0045 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0046  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void c(int r7, int r8, int r9) {
        /*
            r6 = this;
            boolean r0 = r6.A
            if (r0 == 0) goto L_0x0009
            int r0 = r6.K()
            goto L_0x000d
        L_0x0009:
            int r0 = r6.J()
        L_0x000d:
            r1 = 8
            if (r9 != r1) goto L_0x001b
            if (r7 >= r8) goto L_0x0016
            int r2 = r8 + 1
            goto L_0x001d
        L_0x0016:
            int r2 = r7 + 1
            r3 = r2
            r2 = r8
            goto L_0x001f
        L_0x001b:
            int r2 = r7 + r8
        L_0x001d:
            r3 = r2
            r2 = r7
        L_0x001f:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r4 = r6.E
            r4.e(r2)
            r4 = 1
            if (r9 == r4) goto L_0x003e
            r5 = 2
            if (r9 == r5) goto L_0x0038
            if (r9 == r1) goto L_0x002d
            goto L_0x0043
        L_0x002d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.E
            r9.b(r7, r4)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r7 = r6.E
            r7.a((int) r8, (int) r4)
            goto L_0x0043
        L_0x0038:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.E
            r9.b(r7, r8)
            goto L_0x0043
        L_0x003e:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.E
            r9.a((int) r7, (int) r8)
        L_0x0043:
            if (r3 > r0) goto L_0x0046
            return
        L_0x0046:
            boolean r7 = r6.A
            if (r7 == 0) goto L_0x004f
            int r7 = r6.J()
            goto L_0x0053
        L_0x004f:
            int r7 = r6.K()
        L_0x0053:
            if (r2 > r7) goto L_0x0058
            r6.z()
        L_0x0058:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.c(int, int, int):void");
    }

    public boolean b() {
        return this.w == 1;
    }

    public final void a(View view, int i2, int i3, boolean z2) {
        boolean z3;
        a(view, this.K);
        b bVar = (b) view.getLayoutParams();
        int i4 = bVar.leftMargin;
        Rect rect = this.K;
        int d2 = d(i2, i4 + rect.left, bVar.rightMargin + rect.right);
        int i5 = bVar.topMargin;
        Rect rect2 = this.K;
        int d3 = d(i3, i5 + rect2.top, bVar.bottomMargin + rect2.bottom);
        if (z2) {
            z3 = b(view, d2, d3, (RecyclerView.j) bVar);
        } else {
            z3 = a(view, d2, d3, (RecyclerView.j) bVar);
        }
        if (z3) {
            view.measure(d2, d3);
        }
    }

    public int b(int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        return c(i2, pVar, tVar);
    }

    public int c(int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        if (e() == 0 || i2 == 0) {
            return 0;
        }
        a(i2, tVar);
        int a2 = a(pVar, this.y, tVar);
        if (this.y.f3559b >= a2) {
            i2 = i2 < 0 ? -a2 : a2;
        }
        this.u.a(-i2);
        this.G = this.A;
        w wVar = this.y;
        wVar.f3559b = 0;
        a(pVar, wVar);
        return i2;
    }

    public void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.I = (SavedState) parcelable;
            z();
        }
    }

    public void a(RecyclerView.p pVar, RecyclerView.t tVar, View view, d dVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.a(view, dVar);
            return;
        }
        b bVar = (b) layoutParams;
        if (this.w == 0) {
            dVar.b((Object) d.c.a(bVar.e(), bVar.f926f ? this.s : 1, -1, -1, bVar.f926f, false));
        } else {
            dVar.b((Object) d.c.a(-1, -1, bVar.e(), bVar.f926f ? this.s : 1, bVar.f926f, false));
        }
    }

    public RecyclerView.j c() {
        if (this.w == 0) {
            return new b(-2, -1);
        }
        return new b(-1, -2);
    }

    public void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (e() > 0) {
            View c2 = c(false);
            View b2 = b(false);
            if (c2 != null && b2 != null) {
                int l2 = l(c2);
                int l3 = l(b2);
                if (l2 < l3) {
                    accessibilityEvent.setFromIndex(l2);
                    accessibilityEvent.setToIndex(l3);
                    return;
                }
                accessibilityEvent.setFromIndex(l3);
                accessibilityEvent.setToIndex(l2);
            }
        }
    }

    public int a(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.w == 1) {
            return this.s;
        }
        return super.a(pVar, tVar);
    }

    public final void a(RecyclerView.p pVar, RecyclerView.t tVar, boolean z2) {
        int p = p(Integer.MIN_VALUE);
        if (p != Integer.MIN_VALUE) {
            int b2 = this.u.b() - p;
            if (b2 > 0) {
                int i2 = b2 - (-c(-b2, pVar, tVar));
                if (z2 && i2 > 0) {
                    this.u.a(i2);
                }
            }
        }
    }

    public void a(RecyclerView recyclerView, int i2, int i3, int i4) {
        c(i2, i3, 8);
    }

    public void a(RecyclerView recyclerView, int i2, int i3, Object obj) {
        c(i2, i3, 4);
    }

    /* JADX WARNING: type inference failed for: r9v0 */
    /* JADX WARNING: type inference failed for: r9v1, types: [int, boolean] */
    /* JADX WARNING: type inference failed for: r9v4 */
    public final int a(RecyclerView.p pVar, w wVar, RecyclerView.t tVar) {
        int i2;
        int i3;
        int i4;
        c cVar;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z2;
        int i11;
        int i12;
        int i13;
        RecyclerView.p pVar2 = pVar;
        w wVar2 = wVar;
        ? r9 = 0;
        this.B.set(0, this.s, true);
        if (this.y.f3566i) {
            i2 = wVar2.f3562e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            if (wVar2.f3562e == 1) {
                i13 = wVar2.f3564g + wVar2.f3559b;
            } else {
                i13 = wVar2.f3563f - wVar2.f3559b;
            }
            i2 = i13;
        }
        f(wVar2.f3562e, i2);
        if (this.A) {
            i3 = this.u.b();
        } else {
            i3 = this.u.f();
        }
        int i14 = i3;
        boolean z3 = false;
        while (wVar.a(tVar) && (this.y.f3566i || !this.B.isEmpty())) {
            View a2 = wVar2.a(pVar2);
            b bVar = (b) a2.getLayoutParams();
            int a3 = bVar.a();
            int d2 = this.E.d(a3);
            boolean z4 = d2 == -1;
            if (z4) {
                cVar = bVar.f926f ? this.t[r9] : a(wVar2);
                this.E.a(a3, cVar);
            } else {
                cVar = this.t[d2];
            }
            c cVar2 = cVar;
            bVar.f925e = cVar2;
            if (wVar2.f3562e == 1) {
                b(a2);
            } else {
                b(a2, (int) r9);
            }
            a(a2, bVar, (boolean) r9);
            if (wVar2.f3562e == 1) {
                if (bVar.f926f) {
                    i12 = p(i14);
                } else {
                    i12 = cVar2.a(i14);
                }
                int b2 = this.u.b(a2) + i12;
                if (z4 && bVar.f926f) {
                    LazySpanLookup.FullSpanItem l2 = l(i12);
                    l2.f905b = -1;
                    l2.f904a = a3;
                    this.E.a(l2);
                }
                i5 = b2;
                i6 = i12;
            } else {
                if (bVar.f926f) {
                    i11 = s(i14);
                } else {
                    i11 = cVar2.b(i14);
                }
                i6 = i11 - this.u.b(a2);
                if (z4 && bVar.f926f) {
                    LazySpanLookup.FullSpanItem m = m(i11);
                    m.f905b = 1;
                    m.f904a = a3;
                    this.E.a(m);
                }
                i5 = i11;
            }
            if (bVar.f926f && wVar2.f3561d == -1) {
                if (z4) {
                    this.M = true;
                } else {
                    if (wVar2.f3562e == 1) {
                        z2 = E();
                    } else {
                        z2 = F();
                    }
                    if (!z2) {
                        LazySpanLookup.FullSpanItem c2 = this.E.c(a3);
                        if (c2 != null) {
                            c2.f907d = true;
                        }
                        this.M = true;
                    }
                }
            }
            a(a2, bVar, wVar2);
            if (!N() || this.w != 1) {
                if (bVar.f926f) {
                    i9 = this.v.f();
                } else {
                    i9 = (cVar2.f931e * this.x) + this.v.f();
                }
                i8 = i9;
                i7 = this.v.b(a2) + i9;
            } else {
                if (bVar.f926f) {
                    i10 = this.v.b();
                } else {
                    i10 = this.v.b() - (((this.s - 1) - cVar2.f931e) * this.x);
                }
                i7 = i10;
                i8 = i10 - this.v.b(a2);
            }
            if (this.w == 1) {
                a(a2, i8, i6, i7, i5);
            } else {
                a(a2, i6, i8, i5, i7);
            }
            if (bVar.f926f) {
                f(this.y.f3562e, i2);
            } else {
                a(cVar2, this.y.f3562e, i2);
            }
            a(pVar2, this.y);
            if (this.y.f3565h && a2.hasFocusable()) {
                if (bVar.f926f) {
                    this.B.clear();
                } else {
                    this.B.set(cVar2.f931e, false);
                    z3 = true;
                    r9 = 0;
                }
            }
            z3 = true;
            r9 = 0;
        }
        if (!z3) {
            a(pVar2, this.y);
        }
        if (this.y.f3562e == -1) {
            i4 = this.u.f() - s(this.u.f());
        } else {
            i4 = p(this.u.b()) - this.u.b();
        }
        if (i4 > 0) {
            return Math.min(wVar2.f3559b, i4);
        }
        return 0;
    }

    public final void a(View view, b bVar, w wVar) {
        if (wVar.f3562e == 1) {
            if (bVar.f926f) {
                p(view);
            } else {
                bVar.f925e.a(view);
            }
        } else if (bVar.f926f) {
            q(view);
        } else {
            bVar.f925e.c(view);
        }
    }

    public final void a(RecyclerView.p pVar, w wVar) {
        int i2;
        int i3;
        if (wVar.f3558a && !wVar.f3566i) {
            if (wVar.f3559b == 0) {
                if (wVar.f3562e == -1) {
                    a(pVar, wVar.f3564g);
                } else {
                    b(pVar, wVar.f3563f);
                }
            } else if (wVar.f3562e == -1) {
                int i4 = wVar.f3563f;
                int q = i4 - q(i4);
                if (q < 0) {
                    i3 = wVar.f3564g;
                } else {
                    i3 = wVar.f3564g - Math.min(q, wVar.f3559b);
                }
                a(pVar, i3);
            } else {
                int r = r(wVar.f3564g) - wVar.f3564g;
                if (r < 0) {
                    i2 = wVar.f3563f;
                } else {
                    i2 = Math.min(r, wVar.f3559b) + wVar.f3563f;
                }
                b(pVar, i2);
            }
        }
    }

    public final void a(c cVar, int i2, int i3) {
        int g2 = cVar.g();
        if (i2 == -1) {
            if (cVar.i() + g2 <= i3) {
                this.B.set(cVar.f931e, false);
            }
        } else if (cVar.h() - g2 >= i3) {
            this.B.set(cVar.f931e, false);
        }
    }

    public final void a(RecyclerView.p pVar, int i2) {
        for (int e2 = e() - 1; e2 >= 0; e2--) {
            View d2 = d(e2);
            if (this.u.d(d2) < i2 || this.u.f(d2) < i2) {
                break;
            }
            b bVar = (b) d2.getLayoutParams();
            if (bVar.f926f) {
                int i3 = 0;
                while (i3 < this.s) {
                    if (this.t[i3].f927a.size() != 1) {
                        i3++;
                    } else {
                        return;
                    }
                }
                for (int i4 = 0; i4 < this.s; i4++) {
                    this.t[i4].k();
                }
            } else if (bVar.f925e.f927a.size() != 1) {
                bVar.f925e.k();
            } else {
                return;
            }
            a(d2, pVar);
        }
    }

    public final c a(w wVar) {
        int i2;
        int i3;
        int i4 = -1;
        if (t(wVar.f3562e)) {
            i3 = this.s - 1;
            i2 = -1;
        } else {
            i3 = 0;
            i4 = this.s;
            i2 = 1;
        }
        c cVar = null;
        if (wVar.f3562e == 1) {
            int i5 = Integer.MAX_VALUE;
            int f2 = this.u.f();
            while (i3 != i4) {
                c cVar2 = this.t[i3];
                int a2 = cVar2.a(f2);
                if (a2 < i5) {
                    cVar = cVar2;
                    i5 = a2;
                }
                i3 += i2;
            }
            return cVar;
        }
        int i6 = Integer.MIN_VALUE;
        int b2 = this.u.b();
        while (i3 != i4) {
            c cVar3 = this.t[i3];
            int b3 = cVar3.b(b2);
            if (b3 > i6) {
                cVar = cVar3;
                i6 = b3;
            }
            i3 += i2;
        }
        return cVar;
    }

    public boolean a() {
        return this.w == 0;
    }

    public int a(int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        return c(i2, pVar, tVar);
    }

    public PointF a(int i2) {
        int j2 = j(i2);
        PointF pointF = new PointF();
        if (j2 == 0) {
            return null;
        }
        if (this.w == 0) {
            pointF.x = (float) j2;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = (float) j2;
        }
        return pointF;
    }

    public void a(RecyclerView recyclerView, RecyclerView.t tVar, int i2) {
        y yVar = new y(recyclerView.getContext());
        yVar.c(i2);
        b((RecyclerView.s) yVar);
    }

    public void a(int i2, int i3, RecyclerView.t tVar, RecyclerView.i.a aVar) {
        int i4;
        int i5;
        if (this.w != 0) {
            i2 = i3;
        }
        if (e() != 0 && i2 != 0) {
            a(i2, tVar);
            int[] iArr = this.O;
            if (iArr == null || iArr.length < this.s) {
                this.O = new int[this.s];
            }
            int i6 = 0;
            for (int i7 = 0; i7 < this.s; i7++) {
                w wVar = this.y;
                if (wVar.f3561d == -1) {
                    i5 = wVar.f3563f;
                    i4 = this.t[i7].b(i5);
                } else {
                    i5 = this.t[i7].a(wVar.f3564g);
                    i4 = this.y.f3564g;
                }
                int i8 = i5 - i4;
                if (i8 >= 0) {
                    this.O[i6] = i8;
                    i6++;
                }
            }
            Arrays.sort(this.O, 0, i6);
            for (int i9 = 0; i9 < i6 && this.y.a(tVar); i9++) {
                aVar.a(this.y.f3560c, this.O[i9]);
                w wVar2 = this.y;
                wVar2.f3560c += wVar2.f3561d;
            }
        }
    }

    public void a(int i2, RecyclerView.t tVar) {
        int i3;
        int i4;
        if (i2 > 0) {
            i4 = K();
            i3 = 1;
        } else {
            i4 = J();
            i3 = -1;
        }
        this.y.f3558a = true;
        b(i4, tVar);
        u(i3);
        w wVar = this.y;
        wVar.f3560c = i4 + wVar.f3561d;
        wVar.f3559b = Math.abs(i2);
    }

    public RecyclerView.j a(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    public RecyclerView.j a(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new b(layoutParams);
    }

    public boolean a(RecyclerView.j jVar) {
        return jVar instanceof b;
    }

    public View a(View view, int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (e() == 0) {
            return null;
        }
        View c2 = c(view);
        if (c2 == null) {
            return null;
        }
        P();
        int k2 = k(i2);
        if (k2 == Integer.MIN_VALUE) {
            return null;
        }
        b bVar = (b) c2.getLayoutParams();
        boolean z2 = bVar.f926f;
        c cVar = bVar.f925e;
        if (k2 == 1) {
            i3 = K();
        } else {
            i3 = J();
        }
        b(i3, tVar);
        u(k2);
        w wVar = this.y;
        wVar.f3560c = wVar.f3561d + i3;
        wVar.f3559b = (int) (((float) this.u.g()) * 0.33333334f);
        w wVar2 = this.y;
        wVar2.f3565h = true;
        wVar2.f3558a = false;
        a(pVar, wVar2, tVar);
        this.G = this.A;
        if (!z2) {
            View a2 = cVar.a(i3, k2);
            if (!(a2 == null || a2 == c2)) {
                return a2;
            }
        }
        if (t(k2)) {
            for (int i7 = this.s - 1; i7 >= 0; i7--) {
                View a3 = this.t[i7].a(i3, k2);
                if (a3 != null && a3 != c2) {
                    return a3;
                }
            }
        } else {
            for (int i8 = 0; i8 < this.s; i8++) {
                View a4 = this.t[i8].a(i3, k2);
                if (a4 != null && a4 != c2) {
                    return a4;
                }
            }
        }
        boolean z3 = (this.z ^ true) == (k2 == -1);
        if (!z2) {
            if (z3) {
                i6 = cVar.d();
            } else {
                i6 = cVar.f();
            }
            View c3 = c(i6);
            if (!(c3 == null || c3 == c2)) {
                return c3;
            }
        }
        if (t(k2)) {
            for (int i9 = this.s - 1; i9 >= 0; i9--) {
                if (i9 != cVar.f931e) {
                    if (z3) {
                        i5 = this.t[i9].d();
                    } else {
                        i5 = this.t[i9].f();
                    }
                    View c4 = c(i5);
                    if (!(c4 == null || c4 == c2)) {
                        return c4;
                    }
                }
            }
        } else {
            for (int i10 = 0; i10 < this.s; i10++) {
                if (z3) {
                    i4 = this.t[i10].d();
                } else {
                    i4 = this.t[i10].f();
                }
                View c5 = c(i4);
                if (c5 != null && c5 != c2) {
                    return c5;
                }
            }
        }
        return null;
    }
}
