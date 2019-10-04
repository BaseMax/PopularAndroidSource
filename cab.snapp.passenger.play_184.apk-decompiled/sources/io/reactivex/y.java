package io.reactivex;

import io.reactivex.internal.a.b;
import io.reactivex.internal.util.NotificationLite;

public final class y<T> {

    /* renamed from: b  reason: collision with root package name */
    static final y<Object> f8676b = new y<>(null);

    /* renamed from: a  reason: collision with root package name */
    final Object f8677a;

    private y(Object obj) {
        this.f8677a = obj;
    }

    public final boolean isOnComplete() {
        return this.f8677a == null;
    }

    public final boolean isOnError() {
        return NotificationLite.isError(this.f8677a);
    }

    public final boolean isOnNext() {
        Object obj = this.f8677a;
        return obj != null && !NotificationLite.isError(obj);
    }

    public final T getValue() {
        Object obj = this.f8677a;
        if (obj == null || NotificationLite.isError(obj)) {
            return null;
        }
        return this.f8677a;
    }

    public final Throwable getError() {
        Object obj = this.f8677a;
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof y) {
            return b.equals(this.f8677a, ((y) obj).f8677a);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f8677a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public final String toString() {
        Object obj = this.f8677a;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (NotificationLite.isError(obj)) {
            return "OnErrorNotification[" + NotificationLite.getError(obj) + "]";
        }
        return "OnNextNotification[" + this.f8677a + "]";
    }

    public static <T> y<T> createOnNext(T t) {
        b.requireNonNull(t, "value is null");
        return new y<>(t);
    }

    public static <T> y<T> createOnError(Throwable th) {
        b.requireNonNull(th, "error is null");
        return new y<>(NotificationLite.error(th));
    }

    public static <T> y<T> createOnComplete() {
        return f8676b;
    }
}
