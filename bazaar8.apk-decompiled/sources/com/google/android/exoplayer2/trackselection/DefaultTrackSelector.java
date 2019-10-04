package com.google.android.exoplayer2.trackselection;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import c.e.a.a.T;
import c.e.a.a.l.j;
import c.e.a.a.l.n;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

public class DefaultTrackSelector extends j {

    /* renamed from: d  reason: collision with root package name */
    public static final int[] f12754d = new int[0];

    /* renamed from: e  reason: collision with root package name */
    public final n.b f12755e;

    /* renamed from: f  reason: collision with root package name */
    public final AtomicReference<Parameters> f12756f = new AtomicReference<>(Parameters.f12758f);

    /* renamed from: g  reason: collision with root package name */
    public boolean f12757g;

    public static final class Parameters extends TrackSelectionParameters {
        public static final Parcelable.Creator<Parameters> CREATOR = new g();

        /* renamed from: f  reason: collision with root package name */
        public static final Parameters f12758f = new Parameters();
        public final int A;
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> B;
        public final SparseBooleanArray C;

        /* renamed from: g  reason: collision with root package name */
        public final int f12759g;

        /* renamed from: h  reason: collision with root package name */
        public final int f12760h;

        /* renamed from: i  reason: collision with root package name */
        public final int f12761i;

        /* renamed from: j  reason: collision with root package name */
        public final int f12762j;

        /* renamed from: k  reason: collision with root package name */
        public final boolean f12763k;

        /* renamed from: l  reason: collision with root package name */
        public final boolean f12764l;
        public final boolean m;
        public final int n;
        public final int o;
        public final boolean p;
        public final int q;
        public final int r;
        public final boolean s;
        public final boolean t;
        public final boolean u;
        public final boolean v;
        public final boolean w;
        @Deprecated
        public final boolean x;
        @Deprecated
        public final boolean y;
        public final boolean z;

        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public Parameters() {
            /*
                r26 = this;
                r0 = r26
                com.google.android.exoplayer2.trackselection.TrackSelectionParameters r1 = com.google.android.exoplayer2.trackselection.TrackSelectionParameters.f12791a
                java.lang.String r11 = r1.f12792b
                java.lang.String r2 = r1.f12793c
                r17 = r2
                boolean r2 = r1.f12794d
                r18 = r2
                int r1 = r1.f12795e
                r19 = r1
                android.util.SparseArray r1 = new android.util.SparseArray
                r24 = r1
                r1.<init>()
                android.util.SparseBooleanArray r1 = new android.util.SparseBooleanArray
                r25 = r1
                r1.<init>()
                r1 = 2147483647(0x7fffffff, float:NaN)
                r2 = 2147483647(0x7fffffff, float:NaN)
                r3 = 2147483647(0x7fffffff, float:NaN)
                r4 = 2147483647(0x7fffffff, float:NaN)
                r5 = 1
                r6 = 0
                r7 = 1
                r8 = 2147483647(0x7fffffff, float:NaN)
                r9 = 2147483647(0x7fffffff, float:NaN)
                r10 = 1
                r12 = 2147483647(0x7fffffff, float:NaN)
                r13 = 2147483647(0x7fffffff, float:NaN)
                r14 = 1
                r15 = 0
                r16 = 0
                r20 = 0
                r21 = 0
                r22 = 1
                r23 = 0
                r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.<init>():void");
        }

        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            boolean z2 = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || Parameters.class != obj.getClass()) {
                return false;
            }
            Parameters parameters = (Parameters) obj;
            if (!(super.equals(obj) && this.f12759g == parameters.f12759g && this.f12760h == parameters.f12760h && this.f12761i == parameters.f12761i && this.f12762j == parameters.f12762j && this.f12763k == parameters.f12763k && this.f12764l == parameters.f12764l && this.m == parameters.m && this.p == parameters.p && this.n == parameters.n && this.o == parameters.o && this.q == parameters.q && this.r == parameters.r && this.s == parameters.s && this.t == parameters.t && this.u == parameters.u && this.v == parameters.v && this.w == parameters.w && this.z == parameters.z && this.A == parameters.A && a(this.C, parameters.C) && a(this.B, parameters.B))) {
                z2 = false;
            }
            return z2;
        }

        public int hashCode() {
            return (((((((((((((((((((((((((((((((((((((super.hashCode() * 31) + this.f12759g) * 31) + this.f12760h) * 31) + this.f12761i) * 31) + this.f12762j) * 31) + (this.f12763k ? 1 : 0)) * 31) + (this.f12764l ? 1 : 0)) * 31) + (this.m ? 1 : 0)) * 31) + (this.p ? 1 : 0)) * 31) + this.n) * 31) + this.o) * 31) + this.q) * 31) + this.r) * 31) + (this.s ? 1 : 0)) * 31) + (this.t ? 1 : 0)) * 31) + (this.u ? 1 : 0)) * 31) + (this.v ? 1 : 0)) * 31) + (this.w ? 1 : 0)) * 31) + (this.z ? 1 : 0)) * 31) + this.A;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f12759g);
            parcel.writeInt(this.f12760h);
            parcel.writeInt(this.f12761i);
            parcel.writeInt(this.f12762j);
            I.a(parcel, this.f12763k);
            I.a(parcel, this.f12764l);
            I.a(parcel, this.m);
            parcel.writeInt(this.n);
            parcel.writeInt(this.o);
            I.a(parcel, this.p);
            parcel.writeInt(this.q);
            parcel.writeInt(this.r);
            I.a(parcel, this.s);
            I.a(parcel, this.t);
            I.a(parcel, this.u);
            I.a(parcel, this.v);
            I.a(parcel, this.w);
            I.a(parcel, this.z);
            parcel.writeInt(this.A);
            a(parcel, this.B);
            parcel.writeSparseBooleanArray(this.C);
        }

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public Parameters(int i2, int i3, int i4, int i5, boolean z2, boolean z3, boolean z4, int i6, int i7, boolean z5, String str, int i8, int i9, boolean z6, boolean z7, boolean z8, String str2, boolean z9, int i10, boolean z10, boolean z11, boolean z12, int i11, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseBooleanArray sparseBooleanArray) {
            super(str, str2, z9, i10);
            boolean z13 = z3;
            boolean z14 = z4;
            this.f12759g = i2;
            this.f12760h = i3;
            this.f12761i = i4;
            this.f12762j = i5;
            this.f12763k = z2;
            this.f12764l = z13;
            this.m = z14;
            this.n = i6;
            this.o = i7;
            this.p = z5;
            this.q = i8;
            this.r = i9;
            this.s = z6;
            this.t = z7;
            this.u = z8;
            this.v = z10;
            this.w = z11;
            this.z = z12;
            this.A = i11;
            this.x = z13;
            this.y = z14;
            this.B = sparseArray;
            this.C = sparseBooleanArray;
        }

        public final boolean a(int i2) {
            return this.C.get(i2);
        }

        public final boolean b(int i2, TrackGroupArray trackGroupArray) {
            Map map = this.B.get(i2);
            return map != null && map.containsKey(trackGroupArray);
        }

        public final SelectionOverride a(int i2, TrackGroupArray trackGroupArray) {
            Map map = this.B.get(i2);
            if (map != null) {
                return (SelectionOverride) map.get(trackGroupArray);
            }
            return null;
        }

        public c a() {
            return new c(this);
        }

        public static SparseArray<Map<TrackGroupArray, SelectionOverride>> a(Parcel parcel) {
            int readInt = parcel.readInt();
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray = new SparseArray<>(readInt);
            for (int i2 = 0; i2 < readInt; i2++) {
                int readInt2 = parcel.readInt();
                int readInt3 = parcel.readInt();
                HashMap hashMap = new HashMap(readInt3);
                for (int i3 = 0; i3 < readInt3; i3++) {
                    hashMap.put((TrackGroupArray) parcel.readParcelable(TrackGroupArray.class.getClassLoader()), (SelectionOverride) parcel.readParcelable(SelectionOverride.class.getClassLoader()));
                }
                sparseArray.put(readInt2, hashMap);
            }
            return sparseArray;
        }

        public static void a(Parcel parcel, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
            int size = sparseArray.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                int keyAt = sparseArray.keyAt(i2);
                Map valueAt = sparseArray.valueAt(i2);
                int size2 = valueAt.size();
                parcel.writeInt(keyAt);
                parcel.writeInt(size2);
                for (Map.Entry entry : valueAt.entrySet()) {
                    parcel.writeParcelable((Parcelable) entry.getKey(), 0);
                    parcel.writeParcelable((Parcelable) entry.getValue(), 0);
                }
            }
        }

        public static boolean a(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i2 = 0; i2 < size; i2++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i2)) < 0) {
                    return false;
                }
            }
            return true;
        }

        public Parameters(Parcel parcel) {
            super(parcel);
            this.f12759g = parcel.readInt();
            this.f12760h = parcel.readInt();
            this.f12761i = parcel.readInt();
            this.f12762j = parcel.readInt();
            this.f12763k = I.a(parcel);
            this.f12764l = I.a(parcel);
            this.m = I.a(parcel);
            this.n = parcel.readInt();
            this.o = parcel.readInt();
            this.p = I.a(parcel);
            this.q = parcel.readInt();
            this.r = parcel.readInt();
            this.s = I.a(parcel);
            this.t = I.a(parcel);
            this.u = I.a(parcel);
            this.v = I.a(parcel);
            this.w = I.a(parcel);
            this.z = I.a(parcel);
            this.A = parcel.readInt();
            this.B = a(parcel);
            SparseBooleanArray readSparseBooleanArray = parcel.readSparseBooleanArray();
            I.a(readSparseBooleanArray);
            this.C = readSparseBooleanArray;
            this.x = this.f12764l;
            this.y = this.m;
        }

        public static boolean a(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i2 = 0; i2 < size; i2++) {
                int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i2));
                if (indexOfKey < 0 || !a(sparseArray.valueAt(i2), sparseArray2.valueAt(indexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        public static boolean a(Map<TrackGroupArray, SelectionOverride> map, Map<TrackGroupArray, SelectionOverride> map2) {
            if (map2.size() != map.size()) {
                return false;
            }
            for (Map.Entry next : map.entrySet()) {
                TrackGroupArray trackGroupArray = (TrackGroupArray) next.getKey();
                if (map2.containsKey(trackGroupArray)) {
                    if (!I.a(next.getValue(), (Object) map2.get(trackGroupArray))) {
                    }
                }
                return false;
            }
            return true;
        }
    }

    public static final class SelectionOverride implements Parcelable {
        public static final Parcelable.Creator<SelectionOverride> CREATOR = new h();

        /* renamed from: a  reason: collision with root package name */
        public final int f12765a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f12766b;

        /* renamed from: c  reason: collision with root package name */
        public final int f12767c;

        /* renamed from: d  reason: collision with root package name */
        public final int f12768d;

        /* renamed from: e  reason: collision with root package name */
        public final int f12769e;

        public SelectionOverride(int i2, int... iArr) {
            this(i2, iArr, 2, 0);
        }

        public boolean a(int i2) {
            for (int i3 : this.f12766b) {
                if (i3 == i2) {
                    return true;
                }
            }
            return false;
        }

        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || SelectionOverride.class != obj.getClass()) {
                return false;
            }
            SelectionOverride selectionOverride = (SelectionOverride) obj;
            if (!(this.f12765a == selectionOverride.f12765a && Arrays.equals(this.f12766b, selectionOverride.f12766b) && this.f12768d == selectionOverride.f12768d && this.f12769e == selectionOverride.f12769e)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((((this.f12765a * 31) + Arrays.hashCode(this.f12766b)) * 31) + this.f12768d) * 31) + this.f12769e;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f12765a);
            parcel.writeInt(this.f12766b.length);
            parcel.writeIntArray(this.f12766b);
            parcel.writeInt(this.f12768d);
            parcel.writeInt(this.f12769e);
        }

        public SelectionOverride(int i2, int[] iArr, int i3, int i4) {
            this.f12765a = i2;
            this.f12766b = Arrays.copyOf(iArr, iArr.length);
            this.f12767c = iArr.length;
            this.f12768d = i3;
            this.f12769e = i4;
            Arrays.sort(this.f12766b);
        }

        public SelectionOverride(Parcel parcel) {
            this.f12765a = parcel.readInt();
            this.f12767c = parcel.readByte();
            this.f12766b = new int[this.f12767c];
            parcel.readIntArray(this.f12766b);
            this.f12768d = parcel.readInt();
            this.f12769e = parcel.readInt();
        }
    }

    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f12770a;

        /* renamed from: b  reason: collision with root package name */
        public final int f12771b;

        /* renamed from: c  reason: collision with root package name */
        public final String f12772c;

        public a(int i2, int i3, String str) {
            this.f12770a = i2;
            this.f12771b = i3;
            this.f12772c = str;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (!(this.f12770a == aVar.f12770a && this.f12771b == aVar.f12771b && TextUtils.equals(this.f12772c, aVar.f12772c))) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i2 = ((this.f12770a * 31) + this.f12771b) * 31;
            String str = this.f12772c;
            return i2 + (str != null ? str.hashCode() : 0);
        }
    }

    protected static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f12773a;

        /* renamed from: b  reason: collision with root package name */
        public final Parameters f12774b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f12775c;

        /* renamed from: d  reason: collision with root package name */
        public final int f12776d;

        /* renamed from: e  reason: collision with root package name */
        public final int f12777e;

        /* renamed from: f  reason: collision with root package name */
        public final int f12778f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f12779g;

        /* renamed from: h  reason: collision with root package name */
        public final int f12780h;

        /* renamed from: i  reason: collision with root package name */
        public final int f12781i;

        /* renamed from: j  reason: collision with root package name */
        public final int f12782j;

        /* JADX WARNING: Code restructure failed: missing block: B:11:0x0038, code lost:
            if (r7 > r6.q) goto L_0x003b;
         */
        /* JADX WARNING: Removed duplicated region for block: B:16:0x0049  */
        /* JADX WARNING: Removed duplicated region for block: B:22:0x0057 A[EDGE_INSN: B:22:0x0057->B:20:0x0057 ?: BREAK  , SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public b(com.google.android.exoplayer2.Format r5, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r6, int r7) {
            /*
                r4 = this;
                r4.<init>()
                r4.f12774b = r6
                r0 = 0
                boolean r7 = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.a((int) r7, (boolean) r0)
                r4.f12775c = r7
                java.lang.String r7 = r6.f12792b
                int r7 = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.a((com.google.android.exoplayer2.Format) r5, (java.lang.String) r7)
                r4.f12776d = r7
                int r7 = r5.f12508c
                r1 = 1
                r7 = r7 & r1
                if (r7 == 0) goto L_0x001c
                r7 = 1
                goto L_0x001d
            L_0x001c:
                r7 = 0
            L_0x001d:
                r4.f12779g = r7
                int r7 = r5.v
                r4.f12780h = r7
                int r7 = r5.w
                r4.f12781i = r7
                int r7 = r5.f12510e
                r4.f12782j = r7
                r2 = -1
                if (r7 == r2) goto L_0x0032
                int r3 = r6.r
                if (r7 > r3) goto L_0x003b
            L_0x0032:
                int r7 = r5.v
                if (r7 == r2) goto L_0x003c
                int r6 = r6.q
                if (r7 > r6) goto L_0x003b
                goto L_0x003c
            L_0x003b:
                r1 = 0
            L_0x003c:
                r4.f12773a = r1
                java.lang.String[] r6 = c.e.a.a.o.I.b()
                r7 = 2147483647(0x7fffffff, float:NaN)
                r1 = 0
            L_0x0046:
                int r2 = r6.length
                if (r1 >= r2) goto L_0x0057
                r2 = r6[r1]
                int r2 = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.a((com.google.android.exoplayer2.Format) r5, (java.lang.String) r2)
                if (r2 <= 0) goto L_0x0054
                r7 = r1
                r0 = r2
                goto L_0x0057
            L_0x0054:
                int r1 = r1 + 1
                goto L_0x0046
            L_0x0057:
                r4.f12777e = r7
                r4.f12778f = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.b.<init>(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, int):void");
        }

        /* renamed from: a */
        public int compareTo(b bVar) {
            int a2;
            boolean z = this.f12775c;
            int i2 = 1;
            if (z != bVar.f12775c) {
                if (!z) {
                    i2 = -1;
                }
                return i2;
            }
            int i3 = this.f12776d;
            int i4 = bVar.f12776d;
            if (i3 != i4) {
                return DefaultTrackSelector.d(i3, i4);
            }
            boolean z2 = this.f12773a;
            if (z2 != bVar.f12773a) {
                if (!z2) {
                    i2 = -1;
                }
                return i2;
            }
            if (this.f12774b.v) {
                int b2 = DefaultTrackSelector.c(this.f12782j, bVar.f12782j);
                if (b2 != 0) {
                    if (b2 > 0) {
                        i2 = -1;
                    }
                    return i2;
                }
            }
            boolean z3 = this.f12779g;
            if (z3 != bVar.f12779g) {
                if (!z3) {
                    i2 = -1;
                }
                return i2;
            }
            int i5 = this.f12777e;
            int i6 = bVar.f12777e;
            if (i5 != i6) {
                return -DefaultTrackSelector.d(i5, i6);
            }
            int i7 = this.f12778f;
            int i8 = bVar.f12778f;
            if (i7 != i8) {
                return DefaultTrackSelector.d(i7, i8);
            }
            if (!this.f12773a || !this.f12775c) {
                i2 = -1;
            }
            int i9 = this.f12780h;
            int i10 = bVar.f12780h;
            if (i9 != i10) {
                a2 = DefaultTrackSelector.d(i9, i10);
            } else {
                int i11 = this.f12781i;
                int i12 = bVar.f12781i;
                if (i11 != i12) {
                    a2 = DefaultTrackSelector.d(i11, i12);
                } else {
                    a2 = DefaultTrackSelector.d(this.f12782j, bVar.f12782j);
                }
            }
            return i2 * a2;
        }
    }

    public static final class c extends TrackSelectionParameters.a {

        /* renamed from: e  reason: collision with root package name */
        public int f12783e;

        /* renamed from: f  reason: collision with root package name */
        public int f12784f;

        /* renamed from: g  reason: collision with root package name */
        public int f12785g;

        /* renamed from: h  reason: collision with root package name */
        public int f12786h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f12787i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f12788j;

        /* renamed from: k  reason: collision with root package name */
        public boolean f12789k;

        /* renamed from: l  reason: collision with root package name */
        public int f12790l;
        public int m;
        public boolean n;
        public int o;
        public int p;
        public boolean q;
        public boolean r;
        public boolean s;
        public boolean t;
        public boolean u;
        public boolean v;
        public int w;
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> x;
        public final SparseBooleanArray y;

        public final c a(int i2, TrackGroupArray trackGroupArray, SelectionOverride selectionOverride) {
            Map map = this.x.get(i2);
            if (map == null) {
                map = new HashMap();
                this.x.put(i2, map);
            }
            if (map.containsKey(trackGroupArray) && I.a(map.get(trackGroupArray), (Object) selectionOverride)) {
                return this;
            }
            map.put(trackGroupArray, selectionOverride);
            return this;
        }

        public c(Parameters parameters) {
            super(parameters);
            this.f12783e = parameters.f12759g;
            this.f12784f = parameters.f12760h;
            this.f12785g = parameters.f12761i;
            this.f12786h = parameters.f12762j;
            this.f12787i = parameters.f12763k;
            this.f12788j = parameters.f12764l;
            this.f12789k = parameters.m;
            this.f12790l = parameters.n;
            this.m = parameters.o;
            this.n = parameters.p;
            this.o = parameters.q;
            this.p = parameters.r;
            this.q = parameters.s;
            this.r = parameters.t;
            this.s = parameters.u;
            this.t = parameters.v;
            this.u = parameters.w;
            this.v = parameters.z;
            this.w = parameters.A;
            this.x = a((SparseArray<Map<TrackGroupArray, SelectionOverride>>) parameters.B);
            this.y = parameters.C.clone();
        }

        public final c a(int i2) {
            Map map = this.x.get(i2);
            if (map != null && !map.isEmpty()) {
                this.x.remove(i2);
            }
            return this;
        }

        public Parameters a() {
            Parameters parameters = new Parameters(this.f12783e, this.f12784f, this.f12785g, this.f12786h, this.f12787i, this.f12788j, this.f12789k, this.f12790l, this.m, this.n, this.f12796a, this.o, this.p, this.q, this.r, this.s, this.f12797b, this.f12798c, this.f12799d, this.t, this.u, this.v, this.w, this.x, this.y);
            return parameters;
        }

        public static SparseArray<Map<TrackGroupArray, SelectionOverride>> a(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2 = new SparseArray<>();
            for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                sparseArray2.put(sparseArray.keyAt(i2), new HashMap(sparseArray.valueAt(i2)));
            }
            return sparseArray2;
        }
    }

    public DefaultTrackSelector(n.b bVar) {
        this.f12755e = bVar;
    }

    public static boolean a(int i2, boolean z) {
        int i3 = i2 & 7;
        return i3 == 4 || (z && i3 == 3);
    }

    public static int c(int i2, int i3) {
        if (i2 == -1) {
            return i3 == -1 ? 0 : -1;
        }
        if (i3 == -1) {
            return 1;
        }
        return i2 - i3;
    }

    public static int d(int i2, int i3) {
        if (i2 > i3) {
            return 1;
        }
        return i3 > i2 ? -1 : 0;
    }

    public c d() {
        return e().a();
    }

    public Parameters e() {
        return this.f12756f.get();
    }

    public void a(Parameters parameters) {
        C0737e.a(parameters);
        if (!this.f12756f.getAndSet(parameters).equals(parameters)) {
            b();
        }
    }

    public n.a b(TrackGroupArray trackGroupArray, int[][] iArr, int i2, Parameters parameters, boolean z) {
        n.a a2 = (parameters.w || parameters.v || !z) ? null : a(trackGroupArray, iArr, i2, parameters);
        return a2 == null ? a(trackGroupArray, iArr, parameters) : a2;
    }

    public static int b(TrackGroup trackGroup, int[] iArr, int i2, String str, int i3, int i4, int i5, int i6, List<Integer> list) {
        int i7 = 0;
        for (int i8 = 0; i8 < list.size(); i8++) {
            int intValue = list.get(i8).intValue();
            TrackGroup trackGroup2 = trackGroup;
            if (a(trackGroup.a(intValue), str, iArr[intValue], i2, i3, i4, i5, i6)) {
                i7++;
            }
        }
        return i7;
    }

    public final Pair<T[], n[]> a(j.a aVar, int[][][] iArr, int[] iArr2) {
        Parameters parameters = this.f12756f.get();
        int a2 = aVar.a();
        n.a[] a3 = a(aVar, iArr, iArr2, parameters);
        int i2 = 0;
        while (true) {
            n.a aVar2 = null;
            if (i2 >= a2) {
                break;
            }
            if (parameters.a(i2)) {
                a3[i2] = null;
            } else {
                TrackGroupArray b2 = aVar.b(i2);
                if (parameters.b(i2, b2)) {
                    SelectionOverride a4 = parameters.a(i2, b2);
                    if (a4 != null) {
                        aVar2 = new n.a(b2.a(a4.f12765a), a4.f12766b, a4.f12768d, Integer.valueOf(a4.f12769e));
                    }
                    a3[i2] = aVar2;
                }
            }
            i2++;
        }
        n[] a5 = this.f12755e.a(a3, a());
        T[] tArr = new T[a2];
        for (int i3 = 0; i3 < a2; i3++) {
            tArr[i3] = !parameters.a(i3) && (aVar.a(i3) == 6 || a5[i3] != null) ? T.f7316a : null;
        }
        a(aVar, iArr, tArr, a5, parameters.A);
        return Pair.create(tArr, a5);
    }

    public n.a[] a(j.a aVar, int[][][] iArr, int[] iArr2, Parameters parameters) {
        int i2;
        String str;
        int i3;
        String str2;
        b bVar;
        int i4;
        j.a aVar2 = aVar;
        Parameters parameters2 = parameters;
        int a2 = aVar.a();
        n.a[] aVarArr = new n.a[a2];
        int i5 = 0;
        boolean z = false;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i2 = 1;
            if (i6 >= a2) {
                break;
            }
            if (2 == aVar2.a(i6)) {
                if (!z) {
                    aVarArr[i6] = b(aVar2.b(i6), iArr[i6], iArr2[i6], parameters, true);
                    z = aVarArr[i6] != null;
                }
                if (aVar2.b(i6).f12699b <= 0) {
                    i2 = 0;
                }
                i7 |= i2;
            }
            i6++;
        }
        b bVar2 = null;
        String str3 = null;
        int i8 = -1;
        int i9 = 0;
        while (i9 < a2) {
            if (i2 == aVar2.a(i9)) {
                i4 = i8;
                bVar = bVar2;
                str2 = str3;
                i3 = i9;
                Pair<n.a, b> a3 = a(aVar2.b(i9), iArr[i9], iArr2[i9], parameters, this.f12757g || i7 == 0);
                if (a3 != null && (bVar == null || ((b) a3.second).compareTo(bVar) > 0)) {
                    if (i4 != -1) {
                        aVarArr[i4] = null;
                    }
                    n.a aVar3 = (n.a) a3.first;
                    aVarArr[i3] = aVar3;
                    String str4 = aVar3.f9332a.a(aVar3.f9333b[0]).A;
                    bVar2 = (b) a3.second;
                    str3 = str4;
                    i8 = i3;
                    i9 = i3 + 1;
                    i2 = 1;
                }
            } else {
                i4 = i8;
                bVar = bVar2;
                str2 = str3;
                i3 = i9;
            }
            i8 = i4;
            bVar2 = bVar;
            str3 = str2;
            i9 = i3 + 1;
            i2 = 1;
        }
        String str5 = str3;
        int i10 = Integer.MIN_VALUE;
        int i11 = -1;
        while (i5 < a2) {
            int a4 = aVar2.a(i5);
            if (a4 != 1) {
                if (a4 != 2) {
                    if (a4 != 3) {
                        aVarArr[i5] = a(a4, aVar2.b(i5), iArr[i5], parameters2);
                    } else {
                        str = str5;
                        Pair<n.a, Integer> a5 = a(aVar2.b(i5), iArr[i5], parameters2, str);
                        if (a5 != null && ((Integer) a5.second).intValue() > i10) {
                            if (i11 != -1) {
                                aVarArr[i11] = null;
                            }
                            aVarArr[i5] = (n.a) a5.first;
                            i10 = ((Integer) a5.second).intValue();
                            i11 = i5;
                        }
                    }
                }
                str = str5;
            } else {
                str = str5;
            }
            i5++;
            str5 = str;
        }
        return aVarArr;
    }

    public static n.a a(TrackGroupArray trackGroupArray, int[][] iArr, int i2, Parameters parameters) {
        TrackGroupArray trackGroupArray2 = trackGroupArray;
        Parameters parameters2 = parameters;
        int i3 = parameters2.m ? 24 : 16;
        boolean z = parameters2.f12764l && (i2 & i3) != 0;
        int i4 = 0;
        while (i4 < trackGroupArray2.f12699b) {
            TrackGroup a2 = trackGroupArray2.a(i4);
            TrackGroup trackGroup = a2;
            int[] a3 = a(a2, iArr[i4], z, i3, parameters2.f12759g, parameters2.f12760h, parameters2.f12761i, parameters2.f12762j, parameters2.n, parameters2.o, parameters2.p);
            if (a3.length > 0) {
                return new n.a(trackGroup, a3);
            }
            i4++;
            trackGroupArray2 = trackGroupArray;
        }
        return null;
    }

    public static int[] a(TrackGroup trackGroup, int[] iArr, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
        String str;
        TrackGroup trackGroup2 = trackGroup;
        if (trackGroup2.f12695a < 2) {
            return f12754d;
        }
        List<Integer> a2 = a(trackGroup2, i7, i8, z2);
        if (a2.size() < 2) {
            return f12754d;
        }
        if (!z) {
            HashSet hashSet = new HashSet();
            String str2 = null;
            int i9 = 0;
            for (int i10 = 0; i10 < a2.size(); i10++) {
                String str3 = trackGroup2.a(a2.get(i10).intValue()).f12514i;
                if (hashSet.add(str3)) {
                    String str4 = str3;
                    int b2 = b(trackGroup, iArr, i2, str3, i3, i4, i5, i6, a2);
                    if (b2 > i9) {
                        i9 = b2;
                        str2 = str4;
                    }
                }
            }
            str = str2;
        } else {
            str = null;
        }
        a(trackGroup, iArr, i2, str, i3, i4, i5, i6, a2);
        return a2.size() < 2 ? f12754d : I.a(a2);
    }

    public static void a(TrackGroup trackGroup, int[] iArr, int i2, String str, int i3, int i4, int i5, int i6, List<Integer> list) {
        List<Integer> list2 = list;
        for (int size = list.size() - 1; size >= 0; size--) {
            int intValue = list2.get(size).intValue();
            TrackGroup trackGroup2 = trackGroup;
            if (!a(trackGroup.a(intValue), str, iArr[intValue], i2, i3, i4, i5, i6)) {
                list2.remove(size);
            }
        }
    }

    public static boolean a(Format format, String str, int i2, int i3, int i4, int i5, int i6, int i7) {
        if (!a(i2, false) || (i2 & i3) == 0) {
            return false;
        }
        if (str != null && !I.a((Object) format.f12514i, (Object) str)) {
            return false;
        }
        int i8 = format.n;
        if (i8 != -1 && i8 > i4) {
            return false;
        }
        int i9 = format.o;
        if (i9 != -1 && i9 > i5) {
            return false;
        }
        float f2 = format.p;
        if (f2 != -1.0f && f2 > ((float) i6)) {
            return false;
        }
        int i10 = format.f12510e;
        if (i10 == -1 || i10 <= i7) {
            return true;
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:44:0x0097, code lost:
        if (r0 < 0) goto L_0x0099;
     */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0074  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0076  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0080  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0086  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0089  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00b8  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00bc  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static c.e.a.a.l.n.a a(com.google.android.exoplayer2.source.TrackGroupArray r18, int[][] r19, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r20) {
        /*
            r0 = r18
            r1 = r20
            r3 = -1
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = -1
            r10 = -1
        L_0x000b:
            int r11 = r0.f12699b
            if (r5 >= r11) goto L_0x00e0
            com.google.android.exoplayer2.source.TrackGroup r11 = r0.a((int) r5)
            int r13 = r1.n
            int r14 = r1.o
            boolean r15 = r1.p
            java.util.List r13 = a((com.google.android.exoplayer2.source.TrackGroup) r11, (int) r13, (int) r14, (boolean) r15)
            r14 = r19[r5]
            r15 = r10
            r10 = r9
            r9 = r8
            r8 = r7
            r7 = r6
            r6 = 0
        L_0x0025:
            int r2 = r11.f12695a
            if (r6 >= r2) goto L_0x00d1
            r2 = r14[r6]
            boolean r12 = r1.z
            boolean r2 = a((int) r2, (boolean) r12)
            if (r2 == 0) goto L_0x00c6
            com.google.android.exoplayer2.Format r2 = r11.a((int) r6)
            java.lang.Integer r12 = java.lang.Integer.valueOf(r6)
            boolean r12 = r13.contains(r12)
            if (r12 == 0) goto L_0x006a
            int r12 = r2.n
            if (r12 == r3) goto L_0x0049
            int r4 = r1.f12759g
            if (r12 > r4) goto L_0x006a
        L_0x0049:
            int r4 = r2.o
            if (r4 == r3) goto L_0x0051
            int r12 = r1.f12760h
            if (r4 > r12) goto L_0x006a
        L_0x0051:
            float r4 = r2.p
            r12 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r12 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1))
            if (r12 == 0) goto L_0x0060
            int r12 = r1.f12761i
            float r12 = (float) r12
            int r4 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1))
            if (r4 > 0) goto L_0x006a
        L_0x0060:
            int r4 = r2.f12510e
            if (r4 == r3) goto L_0x0068
            int r12 = r1.f12762j
            if (r4 > r12) goto L_0x006a
        L_0x0068:
            r4 = 1
            goto L_0x006b
        L_0x006a:
            r4 = 0
        L_0x006b:
            if (r4 != 0) goto L_0x0072
            boolean r12 = r1.f12763k
            if (r12 != 0) goto L_0x0072
            goto L_0x00c6
        L_0x0072:
            if (r4 == 0) goto L_0x0076
            r12 = 2
            goto L_0x0077
        L_0x0076:
            r12 = 1
        L_0x0077:
            r3 = r14[r6]
            r0 = 0
            boolean r3 = a((int) r3, (boolean) r0)
            if (r3 == 0) goto L_0x0082
            int r12 = r12 + 1000
        L_0x0082:
            if (r12 <= r9) goto L_0x0086
            r0 = 1
            goto L_0x0087
        L_0x0086:
            r0 = 0
        L_0x0087:
            if (r12 != r9) goto L_0x00b8
            int r0 = r2.f12510e
            int r0 = c(r0, r10)
            r17 = r7
            boolean r7 = r1.v
            if (r7 == 0) goto L_0x009d
            if (r0 == 0) goto L_0x009d
            if (r0 >= 0) goto L_0x009b
        L_0x0099:
            r0 = 1
            goto L_0x00ba
        L_0x009b:
            r0 = 0
            goto L_0x00ba
        L_0x009d:
            int r0 = r2.a()
            if (r0 == r15) goto L_0x00a8
            int r0 = c(r0, r15)
            goto L_0x00ae
        L_0x00a8:
            int r0 = r2.f12510e
            int r0 = c(r0, r10)
        L_0x00ae:
            if (r3 == 0) goto L_0x00b5
            if (r4 == 0) goto L_0x00b5
            if (r0 <= 0) goto L_0x009b
            goto L_0x0099
        L_0x00b5:
            if (r0 >= 0) goto L_0x009b
            goto L_0x0099
        L_0x00b8:
            r17 = r7
        L_0x00ba:
            if (r0 == 0) goto L_0x00c8
            int r10 = r2.f12510e
            int r15 = r2.a()
            r8 = r6
            r7 = r11
            r9 = r12
            goto L_0x00ca
        L_0x00c6:
            r17 = r7
        L_0x00c8:
            r7 = r17
        L_0x00ca:
            int r6 = r6 + 1
            r3 = -1
            r0 = r18
            goto L_0x0025
        L_0x00d1:
            r17 = r7
            int r5 = r5 + 1
            r3 = -1
            r0 = r18
            r7 = r8
            r8 = r9
            r9 = r10
            r10 = r15
            r6 = r17
            goto L_0x000b
        L_0x00e0:
            if (r6 != 0) goto L_0x00e5
            r16 = 0
            goto L_0x00f2
        L_0x00e5:
            c.e.a.a.l.n$a r2 = new c.e.a.a.l.n$a
            r0 = 1
            int[] r0 = new int[r0]
            r1 = 0
            r0[r1] = r7
            r2.<init>(r6, r0)
            r16 = r2
        L_0x00f2:
            return r16
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.a(com.google.android.exoplayer2.source.TrackGroupArray, int[][], com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters):c.e.a.a.l.n$a");
    }

    public Pair<n.a, b> a(TrackGroupArray trackGroupArray, int[][] iArr, int i2, Parameters parameters, boolean z) {
        TrackGroupArray trackGroupArray2 = trackGroupArray;
        Parameters parameters2 = parameters;
        n.a aVar = null;
        b bVar = null;
        int i3 = 0;
        int i4 = -1;
        int i5 = -1;
        while (i3 < trackGroupArray2.f12699b) {
            TrackGroup a2 = trackGroupArray2.a(i3);
            int[] iArr2 = iArr[i3];
            b bVar2 = bVar;
            int i6 = i5;
            int i7 = i4;
            for (int i8 = 0; i8 < a2.f12695a; i8++) {
                if (a(iArr2[i8], parameters2.z)) {
                    b bVar3 = new b(a2.a(i8), parameters2, iArr2[i8]);
                    if ((bVar3.f12773a || parameters2.s) && (bVar2 == null || bVar3.compareTo(bVar2) > 0)) {
                        i7 = i3;
                        i6 = i8;
                        bVar2 = bVar3;
                    }
                }
            }
            i3++;
            i4 = i7;
            i5 = i6;
            bVar = bVar2;
        }
        if (i4 == -1) {
            return null;
        }
        TrackGroup a3 = trackGroupArray2.a(i4);
        if (!parameters2.w && !parameters2.v && z) {
            int[] a4 = a(a3, iArr[i4], parameters2.t, parameters2.u);
            if (a4.length > 0) {
                aVar = new n.a(a3, a4);
            }
        }
        if (aVar == null) {
            aVar = new n.a(a3, i5);
        }
        C0737e.a(bVar);
        return Pair.create(aVar, bVar);
    }

    public static int[] a(TrackGroup trackGroup, int[] iArr, boolean z, boolean z2) {
        HashSet hashSet = new HashSet();
        a aVar = null;
        int i2 = 0;
        for (int i3 = 0; i3 < trackGroup.f12695a; i3++) {
            Format a2 = trackGroup.a(i3);
            a aVar2 = new a(a2.v, a2.w, a2.f12514i);
            if (hashSet.add(aVar2)) {
                int a3 = a(trackGroup, iArr, aVar2, z, z2);
                if (a3 > i2) {
                    i2 = a3;
                    aVar = aVar2;
                }
            }
        }
        if (i2 <= 1) {
            return f12754d;
        }
        int[] iArr2 = new int[i2];
        int i4 = 0;
        for (int i5 = 0; i5 < trackGroup.f12695a; i5++) {
            Format a4 = trackGroup.a(i5);
            int i6 = iArr[i5];
            C0737e.a(aVar);
            if (a(a4, i6, aVar, z, z2)) {
                iArr2[i4] = i5;
                i4++;
            }
        }
        return iArr2;
    }

    public static int a(TrackGroup trackGroup, int[] iArr, a aVar, boolean z, boolean z2) {
        int i2 = 0;
        for (int i3 = 0; i3 < trackGroup.f12695a; i3++) {
            if (a(trackGroup.a(i3), iArr[i3], aVar, z, z2)) {
                i2++;
            }
        }
        return i2;
    }

    public static boolean a(Format format, int i2, a aVar, boolean z, boolean z2) {
        if (!a(i2, false)) {
            return false;
        }
        int i3 = format.v;
        if (i3 == -1 || i3 != aVar.f12770a) {
            return false;
        }
        if (!z) {
            String str = format.f12514i;
            if (str == null || !TextUtils.equals(str, aVar.f12772c)) {
                return false;
            }
        }
        if (!z2) {
            int i4 = format.w;
            if (i4 == -1 || i4 != aVar.f12771b) {
                return false;
            }
        }
        return true;
    }

    public Pair<n.a, Integer> a(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters, String str) {
        int i2;
        TrackGroupArray trackGroupArray2 = trackGroupArray;
        Parameters parameters2 = parameters;
        int i3 = 0;
        TrackGroup trackGroup = null;
        int i4 = 0;
        int i5 = 0;
        while (i3 < trackGroupArray2.f12699b) {
            TrackGroup a2 = trackGroupArray2.a(i3);
            int[] iArr2 = iArr[i3];
            int i6 = i5;
            int i7 = i4;
            TrackGroup trackGroup2 = trackGroup;
            for (int i8 = 0; i8 < a2.f12695a; i8++) {
                if (a(iArr2[i8], parameters2.z)) {
                    Format a3 = a2.a(i8);
                    int i9 = a3.f12508c & (parameters2.f12795e ^ -1);
                    boolean z = (i9 & 1) != 0;
                    boolean z2 = (i9 & 2) != 0;
                    int a4 = a(a3, parameters2.f12793c);
                    boolean a5 = a(a3);
                    if (a4 > 0 || (parameters2.f12794d && a5)) {
                        String str2 = str;
                        i2 = (z ? 11 : !z2 ? 7 : 3) + a4;
                    } else if (z) {
                        String str3 = str;
                        i2 = 2;
                    } else if (z2) {
                        if (a(a3, str) > 0 || (a5 && a(str))) {
                            i2 = 1;
                        }
                    }
                    if (a(iArr2[i8], false)) {
                        i2 += AnswersRetryFilesSender.BACKOFF_MS;
                    }
                    if (i2 > i6) {
                        i7 = i8;
                        trackGroup2 = a2;
                        i6 = i2;
                    }
                }
                String str4 = str;
            }
            String str5 = str;
            i3++;
            trackGroup = trackGroup2;
            i4 = i7;
            i5 = i6;
        }
        if (trackGroup == null) {
            return null;
        }
        return Pair.create(new n.a(trackGroup, i4), Integer.valueOf(i5));
    }

    public n.a a(int i2, TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) {
        TrackGroup trackGroup = null;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < trackGroupArray.f12699b) {
            TrackGroup a2 = trackGroupArray.a(i3);
            int[] iArr2 = iArr[i3];
            int i6 = i5;
            int i7 = i4;
            TrackGroup trackGroup2 = trackGroup;
            for (int i8 = 0; i8 < a2.f12695a; i8++) {
                if (a(iArr2[i8], parameters.z)) {
                    int i9 = (a2.a(i8).f12508c & 1) != 0 ? 2 : 1;
                    if (a(iArr2[i8], false)) {
                        i9 += AnswersRetryFilesSender.BACKOFF_MS;
                    }
                    if (i9 > i6) {
                        i7 = i8;
                        trackGroup2 = a2;
                        i6 = i9;
                    }
                }
            }
            i3++;
            trackGroup = trackGroup2;
            i4 = i7;
            i5 = i6;
        }
        if (trackGroup == null) {
            return null;
        }
        return new n.a(trackGroup, i4);
    }

    public static void a(j.a aVar, int[][][] iArr, T[] tArr, n[] nVarArr, int i2) {
        boolean z;
        if (i2 != 0) {
            boolean z2 = false;
            int i3 = 0;
            int i4 = -1;
            int i5 = -1;
            while (true) {
                if (i3 >= aVar.a()) {
                    z = true;
                    break;
                }
                int a2 = aVar.a(i3);
                n nVar = nVarArr[i3];
                if ((a2 == 1 || a2 == 2) && nVar != null && a(iArr[i3], aVar.b(i3), nVar)) {
                    if (a2 == 1) {
                        if (i5 != -1) {
                            break;
                        }
                        i5 = i3;
                    } else if (i4 != -1) {
                        break;
                    } else {
                        i4 = i3;
                    }
                }
                i3++;
            }
            z = false;
            if (!(i5 == -1 || i4 == -1)) {
                z2 = true;
            }
            if (z && z2) {
                T t = new T(i2);
                tArr[i5] = t;
                tArr[i4] = t;
            }
        }
    }

    public static boolean a(int[][] iArr, TrackGroupArray trackGroupArray, n nVar) {
        if (nVar == null) {
            return false;
        }
        int a2 = trackGroupArray.a(nVar.a());
        for (int i2 = 0; i2 < nVar.length(); i2++) {
            if ((iArr[a2][nVar.b(i2)] & 32) != 32) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(Format format) {
        return a(format.A);
    }

    public static boolean a(String str) {
        return TextUtils.isEmpty(str) || TextUtils.equals(str, "und");
    }

    public static int a(Format format, String str) {
        String str2 = format.A;
        if (str2 == null || str == null) {
            return 0;
        }
        if (TextUtils.equals(str2, str)) {
            return 3;
        }
        if (format.A.startsWith(str) || str.startsWith(format.A)) {
            return 2;
        }
        if (format.A.length() < 3 || str.length() < 3 || !format.A.substring(0, 3).equals(str.substring(0, 3))) {
            return 0;
        }
        return 1;
    }

    public static List<Integer> a(TrackGroup trackGroup, int i2, int i3, boolean z) {
        ArrayList arrayList = new ArrayList(trackGroup.f12695a);
        for (int i4 = 0; i4 < trackGroup.f12695a; i4++) {
            arrayList.add(Integer.valueOf(i4));
        }
        if (!(i2 == Integer.MAX_VALUE || i3 == Integer.MAX_VALUE)) {
            int i5 = Integer.MAX_VALUE;
            for (int i6 = 0; i6 < trackGroup.f12695a; i6++) {
                Format a2 = trackGroup.a(i6);
                int i7 = a2.n;
                if (i7 > 0) {
                    int i8 = a2.o;
                    if (i8 > 0) {
                        Point a3 = a(z, i2, i3, i7, i8);
                        int i9 = a2.n;
                        int i10 = a2.o;
                        int i11 = i9 * i10;
                        if (i9 >= ((int) (((float) a3.x) * 0.98f)) && i10 >= ((int) (((float) a3.y) * 0.98f)) && i11 < i5) {
                            i5 = i11;
                        }
                    }
                }
            }
            if (i5 != Integer.MAX_VALUE) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    int a4 = trackGroup.a(((Integer) arrayList.get(size)).intValue()).a();
                    if (a4 == -1 || a4 > i5) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:7:0x000d, code lost:
        if (r1 != r3) goto L_0x0013;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.graphics.Point a(boolean r3, int r4, int r5, int r6, int r7) {
        /*
            if (r3 == 0) goto L_0x0010
            r3 = 1
            r0 = 0
            if (r6 <= r7) goto L_0x0008
            r1 = 1
            goto L_0x0009
        L_0x0008:
            r1 = 0
        L_0x0009:
            if (r4 <= r5) goto L_0x000c
            goto L_0x000d
        L_0x000c:
            r3 = 0
        L_0x000d:
            if (r1 == r3) goto L_0x0010
            goto L_0x0013
        L_0x0010:
            r2 = r5
            r5 = r4
            r4 = r2
        L_0x0013:
            int r3 = r6 * r4
            int r0 = r7 * r5
            if (r3 < r0) goto L_0x0023
            android.graphics.Point r3 = new android.graphics.Point
            int r4 = c.e.a.a.o.I.a((int) r0, (int) r6)
            r3.<init>(r5, r4)
            return r3
        L_0x0023:
            android.graphics.Point r5 = new android.graphics.Point
            int r3 = c.e.a.a.o.I.a((int) r3, (int) r7)
            r5.<init>(r3, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.a(boolean, int, int, int, int):android.graphics.Point");
    }
}
