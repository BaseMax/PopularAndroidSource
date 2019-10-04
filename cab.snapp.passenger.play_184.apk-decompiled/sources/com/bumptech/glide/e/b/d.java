package com.bumptech.glide.e.b;

import android.content.Context;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.bumptech.glide.e.b.g;
import com.bumptech.glide.load.DataSource;

public final class d<R> implements c<R> {

    /* renamed from: a  reason: collision with root package name */
    private final g.a f2036a;

    /* renamed from: b  reason: collision with root package name */
    private b<R> f2037b;

    static class a implements g.a {

        /* renamed from: a  reason: collision with root package name */
        private final Animation f2038a;

        a(Animation animation) {
            this.f2038a = animation;
        }

        public final Animation build(Context context) {
            return this.f2038a;
        }
    }

    static class b implements g.a {

        /* renamed from: a  reason: collision with root package name */
        private final int f2039a;

        b(int i) {
            this.f2039a = i;
        }

        public final Animation build(Context context) {
            return AnimationUtils.loadAnimation(context, this.f2039a);
        }
    }

    public d(Animation animation) {
        this((g.a) new a(animation));
    }

    public d(int i) {
        this((g.a) new b(i));
    }

    private d(g.a aVar) {
        this.f2036a = aVar;
    }

    public final b<R> build(DataSource dataSource, boolean z) {
        if (dataSource == DataSource.MEMORY_CACHE || !z) {
            return a.get();
        }
        if (this.f2037b == null) {
            this.f2037b = new g(this.f2036a);
        }
        return this.f2037b;
    }
}
