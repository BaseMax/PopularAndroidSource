package kotlin;

import h.c;
import java.io.Serializable;

/* compiled from: Lazy.kt */
public final class InitializedLazyImpl<T> implements c<T>, Serializable {
    public final T value;

    public InitializedLazyImpl(T t) {
        this.value = t;
    }

    public T getValue() {
        return this.value;
    }

    public String toString() {
        return String.valueOf(getValue());
    }
}
