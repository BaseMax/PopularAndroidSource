package c.e.a.b.d.d;

import android.content.Context;
import android.util.SparseIntArray;
import c.e.a.b.d.a.a;
import c.e.a.b.d.d;

/* renamed from: c.e.a.b.d.d.k  reason: case insensitive filesystem */
public class C0788k {

    /* renamed from: a  reason: collision with root package name */
    public final SparseIntArray f10024a = new SparseIntArray();

    /* renamed from: b  reason: collision with root package name */
    public d f10025b;

    public C0788k(d dVar) {
        r.a(dVar);
        this.f10025b = dVar;
    }

    public int a(Context context, a.f fVar) {
        r.a(context);
        r.a(fVar);
        if (!fVar.d()) {
            return 0;
        }
        int e2 = fVar.e();
        int i2 = this.f10024a.get(e2, -1);
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= this.f10024a.size()) {
                break;
            }
            int keyAt = this.f10024a.keyAt(i3);
            if (keyAt > e2 && this.f10024a.get(keyAt) == 0) {
                i2 = 0;
                break;
            }
            i3++;
        }
        if (i2 == -1) {
            i2 = this.f10025b.a(context, e2);
        }
        this.f10024a.put(e2, i2);
        return i2;
    }

    public void a() {
        this.f10024a.clear();
    }
}
