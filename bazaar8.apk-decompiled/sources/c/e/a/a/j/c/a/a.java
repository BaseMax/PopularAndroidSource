package c.e.a.a.j.c.a;

import java.util.Collections;
import java.util.List;

/* compiled from: AdaptationSet */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final int f8517a;

    /* renamed from: b  reason: collision with root package name */
    public final int f8518b;

    /* renamed from: c  reason: collision with root package name */
    public final List<j> f8519c;

    /* renamed from: d  reason: collision with root package name */
    public final List<d> f8520d;

    /* renamed from: e  reason: collision with root package name */
    public final List<d> f8521e;

    public a(int i2, int i3, List<j> list, List<d> list2, List<d> list3) {
        List<d> list4;
        List<d> list5;
        this.f8517a = i2;
        this.f8518b = i3;
        this.f8519c = Collections.unmodifiableList(list);
        if (list2 == null) {
            list4 = Collections.emptyList();
        } else {
            list4 = Collections.unmodifiableList(list2);
        }
        this.f8520d = list4;
        if (list3 == null) {
            list5 = Collections.emptyList();
        } else {
            list5 = Collections.unmodifiableList(list3);
        }
        this.f8521e = list5;
    }
}
