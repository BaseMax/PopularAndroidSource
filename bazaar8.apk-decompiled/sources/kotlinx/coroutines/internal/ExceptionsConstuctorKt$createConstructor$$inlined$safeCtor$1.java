package kotlinx.coroutines.internal;

import c.b.a.b.e;
import h.f.a.b;
import h.f.b.j;
import java.lang.reflect.Constructor;
import kotlin.Result;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Lambda;

/* compiled from: ExceptionsConstuctor.kt */
public final class ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$1 extends Lambda implements b<Throwable, Throwable> {
    public final /* synthetic */ Constructor $constructor$inlined;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$1(Constructor constructor) {
        super(1);
        this.$constructor$inlined = constructor;
    }

    public final Throwable a(Throwable th) {
        Object obj;
        j.b(th, e.f3754a);
        try {
            Result.a aVar = Result.f15776a;
            Object newInstance = this.$constructor$inlined.newInstance(new Object[]{th.getMessage(), th});
            if (newInstance != null) {
                obj = (Throwable) newInstance;
                Result.a(obj);
                if (Result.d(obj)) {
                    obj = null;
                }
                return (Throwable) obj;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Throwable");
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f15776a;
            obj = h.e.a(th2);
            Result.a(obj);
        }
    }
}
