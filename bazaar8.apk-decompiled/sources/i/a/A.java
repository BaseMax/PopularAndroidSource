package i.a;

import i.a.A;
import java.lang.Throwable;

/* compiled from: Debug.kt */
public interface A<T extends Throwable & A<T>> {
    T a();
}
