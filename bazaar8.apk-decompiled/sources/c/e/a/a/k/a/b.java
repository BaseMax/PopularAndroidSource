package c.e.a.a.k.a;

import android.text.Layout;

/* compiled from: Cea708Cue */
public final class b extends c.e.a.a.k.b implements Comparable<b> {
    public final int o;

    public b(CharSequence charSequence, Layout.Alignment alignment, float f2, int i2, int i3, float f3, int i4, float f4, boolean z, int i5, int i6) {
        super(charSequence, alignment, f2, i2, i3, f3, i4, f4, z, i5);
        this.o = i6;
    }

    /* renamed from: a */
    public int compareTo(b bVar) {
        int i2 = bVar.o;
        int i3 = this.o;
        if (i2 < i3) {
            return -1;
        }
        return i2 > i3 ? 1 : 0;
    }
}
