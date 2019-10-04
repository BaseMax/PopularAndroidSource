package c.e.d;

import c.e.d.b.a.T;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.LongSerializationPolicy;
import com.google.gson.internal.Excluder;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: GsonBuilder */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public Excluder f11859a = Excluder.f13528a;

    /* renamed from: b  reason: collision with root package name */
    public LongSerializationPolicy f11860b = LongSerializationPolicy.DEFAULT;

    /* renamed from: c  reason: collision with root package name */
    public d f11861c = FieldNamingPolicy.IDENTITY;

    /* renamed from: d  reason: collision with root package name */
    public final Map<Type, l<?>> f11862d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public final List<y> f11863e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    public final List<y> f11864f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    public boolean f11865g = false;

    /* renamed from: h  reason: collision with root package name */
    public String f11866h;

    /* renamed from: i  reason: collision with root package name */
    public int f11867i = 2;

    /* renamed from: j  reason: collision with root package name */
    public int f11868j = 2;

    /* renamed from: k  reason: collision with root package name */
    public boolean f11869k = false;

    /* renamed from: l  reason: collision with root package name */
    public boolean f11870l = false;
    public boolean m = true;
    public boolean n = false;
    public boolean o = false;
    public boolean p = false;

    public k a(y yVar) {
        this.f11863e.add(yVar);
        return this;
    }

    public j a() {
        ArrayList arrayList = r1;
        ArrayList arrayList2 = new ArrayList(this.f11863e.size() + this.f11864f.size() + 3);
        arrayList2.addAll(this.f11863e);
        Collections.reverse(arrayList2);
        ArrayList arrayList3 = new ArrayList(this.f11864f);
        Collections.reverse(arrayList3);
        arrayList2.addAll(arrayList3);
        a(this.f11866h, this.f11867i, this.f11868j, arrayList2);
        j jVar = new j(this.f11859a, this.f11861c, this.f11862d, this.f11865g, this.f11869k, this.o, this.m, this.n, this.p, this.f11870l, this.f11860b, this.f11866h, this.f11867i, this.f11868j, this.f11863e, this.f11864f, arrayList);
        return jVar;
    }

    public final void a(String str, int i2, int i3, List<y> list) {
        a aVar;
        a aVar2;
        a aVar3;
        if (str != null && !"".equals(str.trim())) {
            a aVar4 = new a(Date.class, str);
            aVar = new a(Timestamp.class, str);
            aVar3 = new a(java.sql.Date.class, str);
            aVar2 = aVar4;
        } else if (i2 != 2 && i3 != 2) {
            aVar2 = new a(Date.class, i2, i3);
            a aVar5 = new a(Timestamp.class, i2, i3);
            a aVar6 = new a(java.sql.Date.class, i2, i3);
            aVar = aVar5;
            aVar3 = aVar6;
        } else {
            return;
        }
        list.add(T.a(Date.class, aVar2));
        list.add(T.a(Timestamp.class, aVar));
        list.add(T.a(java.sql.Date.class, aVar3));
    }
}
