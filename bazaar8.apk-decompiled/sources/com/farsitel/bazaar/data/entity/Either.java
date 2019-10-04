package com.farsitel.bazaar.data.entity;

import com.crashlytics.android.core.CrashlyticsController;
import h.f.b.f;
import h.f.b.j;

/* compiled from: Either.kt */
public abstract class Either<V> {

    /* compiled from: Either.kt */
    public static final class Failure extends Either {
        public final ErrorModel error;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public Failure(ErrorModel errorModel) {
            super(null);
            j.b(errorModel, CrashlyticsController.EVENT_TYPE_LOGGED);
            this.error = errorModel;
        }

        public static /* synthetic */ Failure copy$default(Failure failure, ErrorModel errorModel, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                errorModel = failure.error;
            }
            return failure.copy(errorModel);
        }

        public final ErrorModel component1() {
            return this.error;
        }

        public final Failure copy(ErrorModel errorModel) {
            j.b(errorModel, CrashlyticsController.EVENT_TYPE_LOGGED);
            return new Failure(errorModel);
        }

        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof Failure) && j.a((Object) this.error, (Object) ((Failure) obj).error));
        }

        public final ErrorModel getError() {
            return this.error;
        }

        public int hashCode() {
            ErrorModel errorModel = this.error;
            if (errorModel != null) {
                return errorModel.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "Failure(error=" + this.error + ")";
        }
    }

    /* compiled from: Either.kt */
    public static final class Success<V> extends Either<V> {
        public final V value;

        public Success(V v) {
            super(null);
            this.value = v;
        }

        public static /* synthetic */ Success copy$default(Success success, V v, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                v = success.value;
            }
            return success.copy(v);
        }

        public final V component1() {
            return this.value;
        }

        public final Success<V> copy(V v) {
            return new Success<>(v);
        }

        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof Success) && j.a((Object) this.value, (Object) ((Success) obj).value));
        }

        public final V getValue() {
            return this.value;
        }

        public int hashCode() {
            V v = this.value;
            if (v != null) {
                return v.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "Success(value=" + this.value + ")";
        }
    }

    public Either() {
    }

    public /* synthetic */ Either(f fVar) {
        this();
    }
}
