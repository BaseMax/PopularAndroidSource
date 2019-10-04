package c.e.d.b;

import java.lang.reflect.Type;

/* compiled from: ConstructorConstructor */
class f implements w<T> {

    /* renamed from: a  reason: collision with root package name */
    public final E f11779a = E.a();

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Class f11780b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Type f11781c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ p f11782d;

    public f(p pVar, Class cls, Type type) {
        this.f11782d = pVar;
        this.f11780b = cls;
        this.f11781c = type;
    }

    public T a() {
        try {
            return this.f11779a.b(this.f11780b);
        } catch (Exception e2) {
            throw new RuntimeException("Unable to invoke no-args constructor for " + this.f11781c + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e2);
        }
    }
}
