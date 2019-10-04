package h.f.b;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

/* compiled from: SpreadBuilder */
public class m {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList<Object> f14574a;

    public m(int i2) {
        this.f14574a = new ArrayList<>(i2);
    }

    public int a() {
        return this.f14574a.size();
    }

    public void b(Object obj) {
        if (obj != null) {
            if (obj instanceof Object[]) {
                Object[] objArr = (Object[]) obj;
                if (objArr.length > 0) {
                    ArrayList<Object> arrayList = this.f14574a;
                    arrayList.ensureCapacity(arrayList.size() + objArr.length);
                    Collections.addAll(this.f14574a, objArr);
                }
            } else if (obj instanceof Collection) {
                this.f14574a.addAll((Collection) obj);
            } else if (obj instanceof Iterable) {
                for (Object add : (Iterable) obj) {
                    this.f14574a.add(add);
                }
            } else if (obj instanceof Iterator) {
                Iterator it = (Iterator) obj;
                while (it.hasNext()) {
                    this.f14574a.add(it.next());
                }
            } else {
                throw new UnsupportedOperationException("Don't know how to spread " + obj.getClass());
            }
        }
    }

    public void a(Object obj) {
        this.f14574a.add(obj);
    }

    public Object[] a(Object[] objArr) {
        return this.f14574a.toArray(objArr);
    }
}
