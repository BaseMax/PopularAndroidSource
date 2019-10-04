package c.c.a.e.c;

import c.c.a.c.c.a;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.c.b.a.f;
import h.f.b.j;
import h.h;
import i.a.C1111k;
import java.io.IOException;
import kotlin.Result;
import l.C1158b;
import l.D;
import retrofit2.HttpException;

/* compiled from: CallExt.kt */
public final class b {
    public static final ErrorModel b(Throwable th) {
        a.f4699b.b(th);
        if (th instanceof IOException) {
            return new ErrorModel.NetworkConnection("No Network Connection", th);
        }
        if (th instanceof HttpException) {
            return a((HttpException) th);
        }
        if (th instanceof ErrorModel) {
            return (ErrorModel) th;
        }
        return new ErrorModel.Server("Server Error", th);
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x00b8 A[Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final com.farsitel.bazaar.data.entity.ErrorModel a(retrofit2.HttpException r5) {
        /*
            java.lang.String r0 = "Internal Server Error"
            l.D r5 = r5.a()
            r1 = 0
            if (r5 == 0) goto L_0x000e
            j.S r2 = r5.c()
            goto L_0x000f
        L_0x000e:
            r2 = r1
        L_0x000f:
            java.lang.String r3 = "Server Error"
            if (r2 != 0) goto L_0x0021
            com.farsitel.bazaar.data.entity.ErrorModel$Server r5 = new com.farsitel.bazaar.data.entity.ErrorModel$Server
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "response.errorBody() is null"
            r0.<init>(r1)
            r5.<init>(r3, r0)
            goto L_0x00f2
        L_0x0021:
            j.S r5 = r5.c()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            if (r5 == 0) goto L_0x00c9
            java.lang.String r5 = r5.x()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            c.e.d.k r2 = new c.e.d.k     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            r2.<init>()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            c.e.d.j r2 = r2.a()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            java.lang.Class<com.farsitel.bazaar.data.dto.responsedto.ErrorResponseDto> r4 = com.farsitel.bazaar.data.dto.responsedto.ErrorResponseDto.class
            java.lang.Object r5 = r2.a((java.lang.String) r5, r4)     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            com.farsitel.bazaar.data.dto.responsedto.ErrorResponseDto r5 = (com.farsitel.bazaar.data.dto.responsedto.ErrorResponseDto) r5     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            com.farsitel.bazaar.data.dto.responsedto.PropertiesResponseDto r2 = r5.getProperties()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            if (r2 == 0) goto L_0x004a
            int r1 = r2.getErrorCode()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
        L_0x004a:
            com.farsitel.bazaar.data.entity.ErrorCode r2 = com.farsitel.bazaar.data.entity.ErrorCode.NOT_FOUND     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            int r2 = r2.getValue()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            if (r1 != 0) goto L_0x0053
            goto L_0x0068
        L_0x0053:
            int r4 = r1.intValue()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            if (r4 != r2) goto L_0x0068
            com.farsitel.bazaar.data.entity.ErrorModel$NotFound r0 = new com.farsitel.bazaar.data.entity.ErrorModel$NotFound     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            com.farsitel.bazaar.data.dto.responsedto.PropertiesResponseDto r5 = r5.getProperties()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            java.lang.String r5 = r5.getErrorMessage()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            r0.<init>(r5)     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            goto L_0x00f1
        L_0x0068:
            com.farsitel.bazaar.data.entity.ErrorCode r2 = com.farsitel.bazaar.data.entity.ErrorCode.RATE_LIMIT_EXCEEDED     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            int r2 = r2.getValue()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            if (r1 != 0) goto L_0x0071
            goto L_0x0086
        L_0x0071:
            int r4 = r1.intValue()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            if (r4 != r2) goto L_0x0086
            com.farsitel.bazaar.data.entity.ErrorModel$RateLimitExceeded r0 = new com.farsitel.bazaar.data.entity.ErrorModel$RateLimitExceeded     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            com.farsitel.bazaar.data.dto.responsedto.PropertiesResponseDto r5 = r5.getProperties()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            java.lang.String r5 = r5.getErrorMessage()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            r0.<init>(r5)     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            goto L_0x00f1
        L_0x0086:
            com.farsitel.bazaar.data.entity.ErrorCode r2 = com.farsitel.bazaar.data.entity.ErrorCode.INTERNAL_SERVER_ERROR     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            int r2 = r2.getValue()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            if (r1 != 0) goto L_0x008f
            goto L_0x00a1
        L_0x008f:
            int r1 = r1.intValue()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            if (r1 != r2) goto L_0x00a1
            com.farsitel.bazaar.data.entity.ErrorModel$Server r5 = new com.farsitel.bazaar.data.entity.ErrorModel$Server     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            android.accounts.NetworkErrorException r1 = new android.accounts.NetworkErrorException     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            r1.<init>(r0)     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            r5.<init>(r0, r1)     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            r0 = r5
            goto L_0x00f1
        L_0x00a1:
            com.farsitel.bazaar.data.entity.ErrorModel$Http r0 = new com.farsitel.bazaar.data.entity.ErrorModel$Http     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            com.farsitel.bazaar.data.dto.responsedto.PropertiesResponseDto r1 = r5.getProperties()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            if (r1 == 0) goto L_0x00b0
            java.lang.String r1 = r1.getErrorMessage()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            if (r1 == 0) goto L_0x00b0
            goto L_0x00b2
        L_0x00b0:
            java.lang.String r1 = ""
        L_0x00b2:
            com.farsitel.bazaar.data.dto.responsedto.PropertiesResponseDto r5 = r5.getProperties()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            if (r5 == 0) goto L_0x00c3
            int r5 = r5.getErrorCode()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            com.farsitel.bazaar.data.entity.ErrorCode r5 = c.c.a.e.f.g.a((int) r5)     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            if (r5 == 0) goto L_0x00c3
            goto L_0x00c5
        L_0x00c3:
            com.farsitel.bazaar.data.entity.ErrorCode r5 = com.farsitel.bazaar.data.entity.ErrorCode.UNKNOWN     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
        L_0x00c5:
            r0.<init>(r1, r5)     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            goto L_0x00f1
        L_0x00c9:
            h.f.b.j.a()     // Catch:{ JsonSyntaxException -> 0x00eb, IOException -> 0x00e4, IllegalStateException -> 0x00dd, ClassCastException -> 0x00d6, Exception -> 0x00cd }
            throw r1
        L_0x00cd:
            r5 = move-exception
            com.farsitel.bazaar.data.entity.ErrorModel$Server r0 = new com.farsitel.bazaar.data.entity.ErrorModel$Server
            java.lang.String r1 = "Internal error during parsing error body"
            r0.<init>(r1, r5)
            goto L_0x00f1
        L_0x00d6:
            r5 = move-exception
            com.farsitel.bazaar.data.entity.ErrorModel$Server r0 = new com.farsitel.bazaar.data.entity.ErrorModel$Server
            r0.<init>(r3, r5)
            goto L_0x00f1
        L_0x00dd:
            r5 = move-exception
            com.farsitel.bazaar.data.entity.ErrorModel$Server r0 = new com.farsitel.bazaar.data.entity.ErrorModel$Server
            r0.<init>(r3, r5)
            goto L_0x00f1
        L_0x00e4:
            r5 = move-exception
            com.farsitel.bazaar.data.entity.ErrorModel$Server r0 = new com.farsitel.bazaar.data.entity.ErrorModel$Server
            r0.<init>(r3, r5)
            goto L_0x00f1
        L_0x00eb:
            r5 = move-exception
            com.farsitel.bazaar.data.entity.ErrorModel$Server r0 = new com.farsitel.bazaar.data.entity.ErrorModel$Server
            r0.<init>(r3, r5)
        L_0x00f1:
            r5 = r0
        L_0x00f2:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.c.b.a(retrofit2.HttpException):com.farsitel.bazaar.data.entity.ErrorModel");
    }

    public static final <T, R> Object b(C1158b<T> bVar, h.f.a.b<? super T, ? extends R> bVar2, h.c.b<? super Either<? extends R>> bVar3) {
        C1111k kVar = new C1111k(h.c.a.a.a(bVar3), 1);
        try {
            D<T> execute = bVar.execute();
            if (execute.b() == 200) {
                j.a((Object) execute, "response");
                if (execute.d()) {
                    T a2 = execute.a();
                    if (a2 != null) {
                        Either.Success success = new Either.Success(bVar2.a(a2));
                        Result.a aVar = Result.f15776a;
                        Result.a(success);
                        kVar.b(success);
                    } else {
                        j.a();
                        throw null;
                    }
                } else {
                    Either.Failure failure = new Either.Failure(b(new HttpException(execute)));
                    Result.a aVar2 = Result.f15776a;
                    Result.a(failure);
                    kVar.b(failure);
                }
            } else {
                Either.Failure failure2 = new Either.Failure(b(new HttpException(execute)));
                Result.a aVar3 = Result.f15776a;
                Result.a(failure2);
                kVar.b(failure2);
            }
        } catch (Throwable th) {
            Either.Failure failure3 = new Either.Failure(b(th));
            Result.a aVar4 = Result.f15776a;
            Result.a(failure3);
            kVar.b(failure3);
        }
        kVar.a((h.f.a.b<? super Throwable, h>) new CallExtKt$syncEither$$inlined$suspendCancellableCoroutine$lambda$1(bVar, bVar2));
        Object h2 = kVar.h();
        if (h2 == h.c.a.b.a()) {
            f.c(bVar3);
        }
        return h2;
    }

    public static final <T, R> Object a(C1158b<T> bVar, h.f.a.b<? super T, ? extends R> bVar2, h.c.b<? super Either<? extends R>> bVar3) {
        C1111k kVar = new C1111k(h.c.a.a.a(bVar3), 1);
        try {
            bVar.a(new a(kVar, bVar, bVar2));
        } catch (Throwable th) {
            Either.Failure failure = new Either.Failure(b(th));
            Result.a aVar = Result.f15776a;
            Result.a(failure);
            kVar.b(failure);
        }
        kVar.a((h.f.a.b<? super Throwable, h>) new CallExtKt$awaitEither$$inlined$suspendCancellableCoroutine$lambda$2(bVar, bVar2));
        Object h2 = kVar.h();
        if (h2 == h.c.a.b.a()) {
            f.c(bVar3);
        }
        return h2;
    }
}
