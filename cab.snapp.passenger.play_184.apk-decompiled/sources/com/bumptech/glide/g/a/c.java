package com.bumptech.glide.g.a;

public abstract class c {

    static class a extends c {

        /* renamed from: a  reason: collision with root package name */
        private volatile boolean f2068a;

        a() {
            super((byte) 0);
        }

        public final void throwIfRecycled() {
            if (this.f2068a) {
                throw new IllegalStateException("Already released");
            }
        }

        public final void setRecycled(boolean z) {
            this.f2068a = z;
        }
    }

    /* access modifiers changed from: package-private */
    public abstract void setRecycled(boolean z);

    public abstract void throwIfRecycled();

    /* synthetic */ c(byte b2) {
        this();
    }

    public static c newInstance() {
        return new a();
    }

    private c() {
    }
}
