package c.e.a.a.k.h;

import android.text.SpannableStringBuilder;
import c.e.a.a.k.b;
import c.e.a.a.k.e;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: WebvttSubtitle */
public final class j implements e {

    /* renamed from: a  reason: collision with root package name */
    public final List<f> f9283a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9284b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f9285c = new long[(this.f9284b * 2)];

    /* renamed from: d  reason: collision with root package name */
    public final long[] f9286d;

    public j(List<f> list) {
        this.f9283a = list;
        this.f9284b = list.size();
        for (int i2 = 0; i2 < this.f9284b; i2++) {
            f fVar = list.get(i2);
            int i3 = i2 * 2;
            long[] jArr = this.f9285c;
            jArr[i3] = fVar.o;
            jArr[i3 + 1] = fVar.p;
        }
        long[] jArr2 = this.f9285c;
        this.f9286d = Arrays.copyOf(jArr2, jArr2.length);
        Arrays.sort(this.f9286d);
    }

    public int a(long j2) {
        int a2 = I.a(this.f9286d, j2, false, false);
        if (a2 < this.f9286d.length) {
            return a2;
        }
        return -1;
    }

    public List<b> b(long j2) {
        SpannableStringBuilder spannableStringBuilder = null;
        f fVar = null;
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < this.f9284b; i2++) {
            long[] jArr = this.f9285c;
            int i3 = i2 * 2;
            if (jArr[i3] <= j2 && j2 < jArr[i3 + 1]) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                f fVar2 = this.f9283a.get(i2);
                if (!fVar2.f()) {
                    arrayList.add(fVar2);
                } else if (fVar == null) {
                    fVar = fVar2;
                } else if (spannableStringBuilder == null) {
                    spannableStringBuilder = new SpannableStringBuilder();
                    spannableStringBuilder.append(fVar.f9114a).append("\n").append(fVar2.f9114a);
                } else {
                    spannableStringBuilder.append("\n").append(fVar2.f9114a);
                }
            }
        }
        if (spannableStringBuilder != null) {
            arrayList.add(new f(spannableStringBuilder));
        } else if (fVar != null) {
            arrayList.add(fVar);
        }
        if (arrayList != null) {
            return arrayList;
        }
        return Collections.emptyList();
    }

    public int f() {
        return this.f9286d.length;
    }

    public long a(int i2) {
        boolean z = true;
        C0737e.a(i2 >= 0);
        if (i2 >= this.f9286d.length) {
            z = false;
        }
        C0737e.a(z);
        return this.f9286d[i2];
    }
}
