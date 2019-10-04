package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c.c.a.e.d.r.a.f;
import com.farsitel.bazaar.work.CommentActionWorker;
import g.a.a;

/* renamed from: c.c.a.p.d  reason: case insensitive filesystem */
/* compiled from: CommentActionWorker_AssistedFactory */
public final class C0679d implements CommentActionWorker.b {

    /* renamed from: a  reason: collision with root package name */
    public final a<f> f7158a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f7159b;

    public C0679d(a<f> aVar, a<I> aVar2) {
        this.f7158a = aVar;
        this.f7159b = aVar2;
    }

    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new CommentActionWorker(context, workerParameters, this.f7158a.get(), this.f7159b.get());
    }
}
