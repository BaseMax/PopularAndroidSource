package c.e.a.b.g.f;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* renamed from: c.e.a.b.g.f.mc  reason: case insensitive filesystem */
public final class C0849mc extends C0845lc<FieldDescriptorType, Object> {
    public C0849mc(int i2) {
        super(i2, null);
    }

    public final void b() {
        if (!a()) {
            for (int i2 = 0; i2 < c(); i2++) {
                Map.Entry b2 = b(i2);
                if (((C0832ib) b2.getKey()).c()) {
                    b2.setValue(Collections.unmodifiableList((List) b2.getValue()));
                }
            }
            for (Map.Entry entry : d()) {
                if (((C0832ib) entry.getKey()).c()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.b();
    }
}
