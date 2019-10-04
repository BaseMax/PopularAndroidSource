package c.e.a.a.j.c.a;

import java.util.Collections;
import java.util.List;

/* compiled from: Period */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public final String f8553a;

    /* renamed from: b  reason: collision with root package name */
    public final long f8554b;

    /* renamed from: c  reason: collision with root package name */
    public final List<a> f8555c;

    /* renamed from: d  reason: collision with root package name */
    public final List<e> f8556d;

    public f(String str, long j2, List<a> list, List<e> list2) {
        this.f8553a = str;
        this.f8554b = j2;
        this.f8555c = Collections.unmodifiableList(list);
        this.f8556d = Collections.unmodifiableList(list2);
    }

    public int a(int i2) {
        int size = this.f8555c.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (this.f8555c.get(i3).f8518b == i2) {
                return i3;
            }
        }
        return -1;
    }
}
