package com.bumptech.glide.e;

public interface d {
    void begin();

    void clear();

    boolean isCleared();

    boolean isComplete();

    boolean isEquivalentTo(d dVar);

    boolean isFailed();

    boolean isResourceSet();

    boolean isRunning();

    void recycle();
}
