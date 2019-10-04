package com.squareup.picasso;

import com.squareup.picasso.Picasso;
import com.squareup.picasso.af;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

final class u extends ThreadPoolExecutor {

    static final class a extends FutureTask<c> implements Comparable<a> {

        /* renamed from: a  reason: collision with root package name */
        private final c f5302a;

        a(c cVar) {
            super(cVar, null);
            this.f5302a = cVar;
        }

        public final int compareTo(a aVar) {
            Picasso.Priority priority = this.f5302a.s;
            Picasso.Priority priority2 = aVar.f5302a.s;
            return priority == priority2 ? this.f5302a.f5266a - aVar.f5302a.f5266a : priority2.ordinal() - priority.ordinal();
        }
    }

    u() {
        super(3, 3, 0, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new af.b());
    }

    /* access modifiers changed from: package-private */
    public final void a(int i) {
        setCorePoolSize(i);
        setMaximumPoolSize(i);
    }

    public final Future<?> submit(Runnable runnable) {
        a aVar = new a((c) runnable);
        execute(aVar);
        return aVar;
    }
}
