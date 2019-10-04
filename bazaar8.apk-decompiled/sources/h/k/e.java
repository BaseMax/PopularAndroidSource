package h.k;

import h.f.a.c;
import h.f.b.j;
import h.j.d;
import java.util.Iterator;
import kotlin.Pair;

/* compiled from: Strings.kt */
public final class e implements d<h.h.d> {

    /* renamed from: a  reason: collision with root package name */
    public final CharSequence f14626a;

    /* renamed from: b  reason: collision with root package name */
    public final int f14627b;

    /* renamed from: c  reason: collision with root package name */
    public final int f14628c;

    /* renamed from: d  reason: collision with root package name */
    public final c<CharSequence, Integer, Pair<Integer, Integer>> f14629d;

    public e(CharSequence charSequence, int i2, int i3, c<? super CharSequence, ? super Integer, Pair<Integer, Integer>> cVar) {
        j.b(charSequence, "input");
        j.b(cVar, "getNextMatch");
        this.f14626a = charSequence;
        this.f14627b = i2;
        this.f14628c = i3;
        this.f14629d = cVar;
    }

    public Iterator<h.h.d> iterator() {
        return new d(this);
    }
}
