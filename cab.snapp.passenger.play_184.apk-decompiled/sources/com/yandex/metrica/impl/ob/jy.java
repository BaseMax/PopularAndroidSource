package com.yandex.metrica.impl.ob;

import android.util.SparseArray;
import com.yandex.metrica.impl.ob.ke;
import java.util.ArrayList;
import java.util.HashMap;

public class jy {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f6185a = {0, 1, 2, 3};

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<HashMap<String, ke.a.C0115a>> f6186b;
    private int c;

    public jy() {
        this(f6185a);
    }

    jy(int[] iArr) {
        this.f6186b = new SparseArray<>();
        this.c = 0;
        for (int put : iArr) {
            this.f6186b.put(put, new HashMap());
        }
    }

    public ke.a.C0115a a(int i, String str) {
        return (ke.a.C0115a) this.f6186b.get(i).get(str);
    }

    /* access modifiers changed from: package-private */
    public void a(ke.a.C0115a aVar) {
        this.f6186b.get(aVar.c).put(new String(aVar.f6211b), aVar);
    }

    public int a() {
        return this.c;
    }

    public void b() {
        this.c++;
    }

    public ke.a c() {
        ke.a aVar = new ke.a();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.f6186b.size(); i++) {
            SparseArray<HashMap<String, ke.a.C0115a>> sparseArray = this.f6186b;
            for (ke.a.C0115a add : sparseArray.get(sparseArray.keyAt(i)).values()) {
                arrayList.add(add);
            }
        }
        aVar.f6210b = (ke.a.C0115a[]) arrayList.toArray(new ke.a.C0115a[arrayList.size()]);
        return aVar;
    }
}
