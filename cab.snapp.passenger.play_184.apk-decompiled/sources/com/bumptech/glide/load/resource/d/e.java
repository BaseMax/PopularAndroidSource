package com.bumptech.glide.load.resource.d;

import com.bumptech.glide.load.b.r;
import com.bumptech.glide.load.resource.b.b;

public final class e extends b<c> implements r {
    public e(c cVar) {
        super(cVar);
    }

    public final Class<c> getResourceClass() {
        return c.class;
    }

    public final int getSize() {
        return ((c) this.f2333a).getSize();
    }

    public final void recycle() {
        ((c) this.f2333a).stop();
        ((c) this.f2333a).recycle();
    }

    public final void initialize() {
        ((c) this.f2333a).getFirstFrame().prepareToDraw();
    }
}
