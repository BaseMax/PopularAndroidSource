package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c.c.a.e.d.r.b.b;
import com.farsitel.bazaar.work.PostCommentWorker;
import g.a.a;

/* compiled from: PostCommentWorker_AssistedFactory */
public final class q implements PostCommentWorker.b {

    /* renamed from: a  reason: collision with root package name */
    public final a<b> f7173a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f7174b;

    public q(a<b> aVar, a<I> aVar2) {
        this.f7173a = aVar;
        this.f7174b = aVar2;
    }

    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new PostCommentWorker(context, workerParameters, this.f7173a.get(), this.f7174b.get());
    }
}
