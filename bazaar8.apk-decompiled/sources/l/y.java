package l;

import java.lang.reflect.Array;

/* compiled from: ParameterHandler */
class y extends z<Object> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ z f15954a;

    public y(z zVar) {
        this.f15954a = zVar;
    }

    public void a(B b2, Object obj) {
        if (obj != null) {
            int length = Array.getLength(obj);
            for (int i2 = 0; i2 < length; i2++) {
                this.f15954a.a(b2, Array.get(obj, i2));
            }
        }
    }
}
