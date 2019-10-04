package c.e.a.a.l;

import android.util.Pair;
import c.e.a.a.S;
import c.e.a.a.T;
import c.e.a.a.Z;
import c.e.a.a.j.v;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.util.Arrays;

/* compiled from: MappingTrackSelector */
public abstract class j extends r {

    /* renamed from: c  reason: collision with root package name */
    public a f9323c;

    /* compiled from: MappingTrackSelector */
    public static final class a {
        @Deprecated

        /* renamed from: a  reason: collision with root package name */
        public final int f9324a = this.f9325b;

        /* renamed from: b  reason: collision with root package name */
        public final int f9325b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f9326c;

        /* renamed from: d  reason: collision with root package name */
        public final TrackGroupArray[] f9327d;

        /* renamed from: e  reason: collision with root package name */
        public final int[] f9328e;

        /* renamed from: f  reason: collision with root package name */
        public final int[][][] f9329f;

        /* renamed from: g  reason: collision with root package name */
        public final TrackGroupArray f9330g;

        public a(int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.f9326c = iArr;
            this.f9327d = trackGroupArrayArr;
            this.f9329f = iArr3;
            this.f9328e = iArr2;
            this.f9330g = trackGroupArray;
            this.f9325b = iArr.length;
        }

        public int a() {
            return this.f9325b;
        }

        public TrackGroupArray b(int i2) {
            return this.f9327d[i2];
        }

        public int a(int i2) {
            return this.f9326c[i2];
        }

        public int a(int i2, int i3, int i4) {
            return this.f9329f[i2][i3][i4] & 7;
        }

        public int a(int i2, int i3, boolean z) {
            int i4 = this.f9327d[i2].a(i3).f12695a;
            int[] iArr = new int[i4];
            int i5 = 0;
            for (int i6 = 0; i6 < i4; i6++) {
                int a2 = a(i2, i3, i6);
                if (a2 == 4 || (z && a2 == 3)) {
                    iArr[i5] = i6;
                    i5++;
                }
            }
            return a(i2, i3, Arrays.copyOf(iArr, i5));
        }

        public int a(int i2, int i3, int[] iArr) {
            int i4 = 0;
            String str = null;
            boolean z = false;
            int i5 = 0;
            int i6 = 16;
            while (i4 < iArr.length) {
                String str2 = this.f9327d[i2].a(i3).a(iArr[i4]).f12514i;
                int i7 = i5 + 1;
                if (i5 == 0) {
                    str = str2;
                } else {
                    z |= !I.a((Object) str, (Object) str2);
                }
                i6 = Math.min(i6, this.f9329f[i2][i3][i4] & 24);
                i4++;
                i5 = i7;
            }
            return z ? Math.min(i6, this.f9328e[i2]) : i6;
        }
    }

    public abstract Pair<T[], n[]> a(a aVar, int[][][] iArr, int[] iArr2);

    public final void a(Object obj) {
        this.f9323c = (a) obj;
    }

    public final a c() {
        return this.f9323c;
    }

    public final s a(S[] sArr, TrackGroupArray trackGroupArray, v.a aVar, Z z) {
        int[] iArr;
        int[] iArr2 = new int[(sArr.length + 1)];
        TrackGroup[][] trackGroupArr = new TrackGroup[(sArr.length + 1)][];
        int[][][] iArr3 = new int[(sArr.length + 1)][][];
        for (int i2 = 0; i2 < trackGroupArr.length; i2++) {
            int i3 = trackGroupArray.f12699b;
            trackGroupArr[i2] = new TrackGroup[i3];
            iArr3[i2] = new int[i3][];
        }
        int[] a2 = a(sArr);
        for (int i4 = 0; i4 < trackGroupArray.f12699b; i4++) {
            TrackGroup a3 = trackGroupArray.a(i4);
            int a4 = a(sArr, a3);
            if (a4 == sArr.length) {
                iArr = new int[a3.f12695a];
            } else {
                iArr = a(sArr[a4], a3);
            }
            int i5 = iArr2[a4];
            trackGroupArr[a4][i5] = a3;
            iArr3[a4][i5] = iArr;
            iArr2[a4] = iArr2[a4] + 1;
        }
        TrackGroupArray[] trackGroupArrayArr = new TrackGroupArray[sArr.length];
        int[] iArr4 = new int[sArr.length];
        for (int i6 = 0; i6 < sArr.length; i6++) {
            int i7 = iArr2[i6];
            trackGroupArrayArr[i6] = new TrackGroupArray((TrackGroup[]) I.a((T[]) trackGroupArr[i6], i7));
            iArr3[i6] = (int[][]) I.a((T[]) iArr3[i6], i7);
            iArr4[i6] = sArr[i6].f();
        }
        int[] iArr5 = a2;
        int[][][] iArr6 = iArr3;
        a aVar2 = new a(iArr4, trackGroupArrayArr, iArr5, iArr6, new TrackGroupArray((TrackGroup[]) I.a((T[]) trackGroupArr[sArr.length], iArr2[sArr.length])));
        Pair<T[], n[]> a5 = a(aVar2, iArr3, a2);
        return new s((T[]) a5.first, (n[]) a5.second, aVar2);
    }

    public static int a(S[] sArr, TrackGroup trackGroup) {
        int length = sArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < sArr.length) {
            S s = sArr[i2];
            int i4 = i3;
            int i5 = length;
            for (int i6 = 0; i6 < trackGroup.f12695a; i6++) {
                int a2 = s.a(trackGroup.a(i6)) & 7;
                if (a2 > i4) {
                    if (a2 == 4) {
                        return i2;
                    }
                    i5 = i2;
                    i4 = a2;
                }
            }
            i2++;
            length = i5;
            i3 = i4;
        }
        return length;
    }

    public static int[] a(S s, TrackGroup trackGroup) {
        int[] iArr = new int[trackGroup.f12695a];
        for (int i2 = 0; i2 < trackGroup.f12695a; i2++) {
            iArr[i2] = s.a(trackGroup.a(i2));
        }
        return iArr;
    }

    public static int[] a(S[] sArr) {
        int[] iArr = new int[sArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = sArr[i2].o();
        }
        return iArr;
    }
}
