package com.bumptech.glide.load.b.b;

import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.d;

public interface h {

    public interface a {
        void onResourceRemoved(v<?> vVar);
    }

    void clearMemory();

    long getCurrentSize();

    long getMaxSize();

    v<?> put(d dVar, v<?> vVar);

    v<?> remove(d dVar);

    void setResourceRemovedListener(a aVar);

    void setSizeMultiplier(float f);

    void trimMemory(int i);
}
