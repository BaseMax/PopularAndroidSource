package kotlinx.coroutines.internal;

import c.b.a.b.e;
import h.f.a.b;
import h.f.b.j;
import java.lang.reflect.Constructor;
import kotlin.Result;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Lambda;

/* compiled from: ExceptionsConstuctor.kt */
public final class ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$3 extends Lambda implements b<Throwable, Throwable> {
    public final /* synthetic */ Constructor $constructor$inlined;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$3(Constructor constructor) {
        super(1);
        this.$constructor$inlined = constructor;
    }

    public final Throwable a(Throwable th) {
        Throwable th2;
        j.b(th, e.f3754a);
        try {
            Result.a aVar = Result.f15776a;
            Object newInstance = this.$constructor$inlined.newInstance(new Object[]{th.getMessage()});
            if (newInstance != null) {
                Throwable th3 = (Throwable) newInstance;
                th3.initCause(th);
                Result.a(th3);
                th2 = th3;
                boolean d2 = Result.d(th2);
                Throwable th4 = th2;
                if (d2) {
                    th4 = null;
                }
                return th4;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Throwable");
        } catch (Throwable th5) {
            Result.a aVar2 = Result.f15776a;
            Object a2 = h.e.a(th5);
            Result.a(a2);
            th2 = a2;
        }
    }
}
