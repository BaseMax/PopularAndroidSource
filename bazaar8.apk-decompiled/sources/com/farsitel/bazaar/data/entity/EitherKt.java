package com.farsitel.bazaar.data.entity;

import com.farsitel.bazaar.data.entity.Either;
import h.f.a.b;
import h.f.b.j;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: Either.kt */
public final class EitherKt {
    public static final <R, T> R fold(Either<? extends T> either, b<? super T, ? extends R> bVar, b<? super ErrorModel, ? extends R> bVar2) {
        j.b(either, "$this$fold");
        j.b(bVar, "ifSuccess");
        j.b(bVar2, "ifFailure");
        if (either instanceof Either.Success) {
            return bVar.a(((Either.Success) either).getValue());
        }
        if (either instanceof Either.Failure) {
            return bVar2.a(((Either.Failure) either).getError());
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final <V> V getOrDefault(Either<? extends V> either, V v) {
        j.b(either, "$this$getOrDefault");
        V orNull = getOrNull(either);
        return orNull != null ? orNull : v;
    }

    public static final <V> V getOrNull(Either<? extends V> either) {
        j.b(either, "$this$getOrNull");
        if (!(either instanceof Either.Success)) {
            either = null;
        }
        Either.Success success = (Either.Success) either;
        if (success != null) {
            return success.getValue();
        }
        return null;
    }

    public static final <V, V2> Either<V2> map(Either<? extends V> either, b<? super V, ? extends V2> bVar) {
        j.b(either, "$this$map");
        j.b(bVar, "transform");
        if (either instanceof Either.Failure) {
            return either;
        }
        if (either instanceof Either.Success) {
            return new Either.Success(bVar.a(((Either.Success) either).getValue()));
        }
        throw new NoWhenBranchMatchedException();
    }
}
