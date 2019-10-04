package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.internal.bm;
import com.google.android.gms.common.api.internal.bz;
import com.google.android.gms.common.internal.ap;

public final class i {

    static final class a<R extends m> extends BasePendingResult<R> {

        /* renamed from: a  reason: collision with root package name */
        private final R f2743a;

        public a(R r) {
            super(Looper.getMainLooper());
            this.f2743a = r;
        }

        public final R zzb(Status status) {
            if (status.getStatusCode() == this.f2743a.getStatus().getStatusCode()) {
                return this.f2743a;
            }
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
    }

    static final class b<R extends m> extends BasePendingResult<R> {

        /* renamed from: a  reason: collision with root package name */
        private final R f2744a;

        public b(f fVar, R r) {
            super(fVar);
            this.f2744a = r;
        }

        public final R zzb(Status status) {
            return this.f2744a;
        }
    }

    static final class c<R extends m> extends BasePendingResult<R> {
        public c(f fVar) {
            super(fVar);
        }

        public final R zzb(Status status) {
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
    }

    private i() {
    }

    public static h<Status> canceledPendingResult() {
        bz bzVar = new bz(Looper.getMainLooper());
        bzVar.cancel();
        return bzVar;
    }

    public static <R extends m> h<R> canceledPendingResult(R r) {
        ap.checkNotNull(r, "Result must not be null");
        ap.checkArgument(r.getStatus().getStatusCode() == 16, "Status code must be CommonStatusCodes.CANCELED");
        a aVar = new a(r);
        aVar.cancel();
        return aVar;
    }

    public static <R extends m> g<R> immediatePendingResult(R r) {
        ap.checkNotNull(r, "Result must not be null");
        c cVar = new c(null);
        cVar.setResult(r);
        return new bm(cVar);
    }

    public static h<Status> immediatePendingResult(Status status) {
        ap.checkNotNull(status, "Result must not be null");
        bz bzVar = new bz(Looper.getMainLooper());
        bzVar.setResult(status);
        return bzVar;
    }

    public static h<Status> zza(Status status, f fVar) {
        ap.checkNotNull(status, "Result must not be null");
        bz bzVar = new bz(fVar);
        bzVar.setResult(status);
        return bzVar;
    }

    public static <R extends m> h<R> zza(R r, f fVar) {
        ap.checkNotNull(r, "Result must not be null");
        ap.checkArgument(!r.getStatus().isSuccess(), "Status code must not be SUCCESS");
        b bVar = new b(fVar, r);
        bVar.setResult(r);
        return bVar;
    }

    public static <R extends m> g<R> zzb(R r, f fVar) {
        ap.checkNotNull(r, "Result must not be null");
        c cVar = new c(fVar);
        cVar.setResult(r);
        return new bm(cVar);
    }
}
