package com.bumptech.glide.e;

import com.bumptech.glide.e.a.i;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.b.q;

public interface g<R> {
    boolean onLoadFailed(q qVar, Object obj, i<R> iVar, boolean z);

    boolean onResourceReady(R r, Object obj, i<R> iVar, DataSource dataSource, boolean z);
}
