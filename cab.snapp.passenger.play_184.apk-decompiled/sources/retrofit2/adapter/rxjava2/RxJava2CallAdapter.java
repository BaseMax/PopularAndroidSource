package retrofit2.adapter.rxjava2;

import io.reactivex.BackpressureStrategy;
import io.reactivex.ah;
import io.reactivex.g.a;
import io.reactivex.z;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import retrofit2.Call;
import retrofit2.CallAdapter;

final class RxJava2CallAdapter<R> implements CallAdapter<R, Object> {
    private final boolean isAsync;
    private final boolean isBody;
    private final boolean isCompletable;
    private final boolean isFlowable;
    private final boolean isMaybe;
    private final boolean isResult;
    private final boolean isSingle;
    private final Type responseType;
    @Nullable
    private final ah scheduler;

    RxJava2CallAdapter(Type type, @Nullable ah ahVar, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.responseType = type;
        this.scheduler = ahVar;
        this.isAsync = z;
        this.isResult = z2;
        this.isBody = z3;
        this.isFlowable = z4;
        this.isSingle = z5;
        this.isMaybe = z6;
        this.isCompletable = z7;
    }

    public final Type responseType() {
        return this.responseType;
    }

    public final Object adapt(Call<R> call) {
        z zVar;
        z zVar2;
        if (this.isAsync) {
            zVar = new CallEnqueueObservable(call);
        } else {
            zVar = new CallExecuteObservable(call);
        }
        if (this.isResult) {
            zVar2 = new ResultObservable(zVar);
        } else {
            zVar2 = this.isBody ? new BodyObservable(zVar) : zVar;
        }
        ah ahVar = this.scheduler;
        if (ahVar != null) {
            zVar2 = zVar2.subscribeOn(ahVar);
        }
        if (this.isFlowable) {
            return zVar2.toFlowable(BackpressureStrategy.LATEST);
        }
        if (this.isSingle) {
            return zVar2.singleOrError();
        }
        if (this.isMaybe) {
            return zVar2.singleElement();
        }
        if (this.isCompletable) {
            return zVar2.ignoreElements();
        }
        return a.onAssembly(zVar2);
    }
}
