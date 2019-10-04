package io.reactivex.internal.util;

import io.reactivex.ag;
import java.io.Serializable;
import org.b.d;

public enum NotificationLite {
    ;

    static final class a implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.b.c f8638a;

        a(io.reactivex.b.c cVar) {
            this.f8638a = cVar;
        }

        public final String toString() {
            return "NotificationLite.Disposable[" + this.f8638a + "]";
        }
    }

    static final class b implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final Throwable f8639a;

        b(Throwable th) {
            this.f8639a = th;
        }

        public final String toString() {
            return "NotificationLite.Error[" + this.f8639a + "]";
        }

        public final int hashCode() {
            return this.f8639a.hashCode();
        }

        public final boolean equals(Object obj) {
            if (obj instanceof b) {
                return io.reactivex.internal.a.b.equals(this.f8639a, ((b) obj).f8639a);
            }
            return false;
        }
    }

    static final class c implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final d f8640a;

        c(d dVar) {
            this.f8640a = dVar;
        }

        public final String toString() {
            return "NotificationLite.Subscription[" + this.f8640a + "]";
        }
    }

    public static <T> T getValue(Object obj) {
        return obj;
    }

    public static <T> Object next(T t) {
        return t;
    }

    public final String toString() {
        return "NotificationLite.Complete";
    }

    private NotificationLite(String str) {
    }

    public static Object complete() {
        return COMPLETE;
    }

    public static Object error(Throwable th) {
        return new b(th);
    }

    public static Object subscription(d dVar) {
        return new c(dVar);
    }

    public static Object disposable(io.reactivex.b.c cVar) {
        return new a(cVar);
    }

    public static boolean isComplete(Object obj) {
        return obj == COMPLETE;
    }

    public static boolean isError(Object obj) {
        return obj instanceof b;
    }

    public static boolean isSubscription(Object obj) {
        return obj instanceof c;
    }

    public static boolean isDisposable(Object obj) {
        return obj instanceof a;
    }

    public static Throwable getError(Object obj) {
        return ((b) obj).f8639a;
    }

    public static d getSubscription(Object obj) {
        return ((c) obj).f8640a;
    }

    public static io.reactivex.b.c getDisposable(Object obj) {
        return ((a) obj).f8638a;
    }

    public static <T> boolean accept(Object obj, org.b.c<? super T> cVar) {
        if (obj == COMPLETE) {
            cVar.onComplete();
            return true;
        } else if (obj instanceof b) {
            cVar.onError(((b) obj).f8639a);
            return true;
        } else {
            cVar.onNext(obj);
            return false;
        }
    }

    public static <T> boolean accept(Object obj, ag<? super T> agVar) {
        if (obj == COMPLETE) {
            agVar.onComplete();
            return true;
        } else if (obj instanceof b) {
            agVar.onError(((b) obj).f8639a);
            return true;
        } else {
            agVar.onNext(obj);
            return false;
        }
    }

    public static <T> boolean acceptFull(Object obj, org.b.c<? super T> cVar) {
        if (obj == COMPLETE) {
            cVar.onComplete();
            return true;
        } else if (obj instanceof b) {
            cVar.onError(((b) obj).f8639a);
            return true;
        } else if (obj instanceof c) {
            cVar.onSubscribe(((c) obj).f8640a);
            return false;
        } else {
            cVar.onNext(obj);
            return false;
        }
    }

    public static <T> boolean acceptFull(Object obj, ag<? super T> agVar) {
        if (obj == COMPLETE) {
            agVar.onComplete();
            return true;
        } else if (obj instanceof b) {
            agVar.onError(((b) obj).f8639a);
            return true;
        } else if (obj instanceof a) {
            agVar.onSubscribe(((a) obj).f8638a);
            return false;
        } else {
            agVar.onNext(obj);
            return false;
        }
    }
}
