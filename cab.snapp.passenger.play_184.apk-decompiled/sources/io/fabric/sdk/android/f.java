package io.fabric.sdk.android;

public interface f<T> {
    public static final f EMPTY = new a((byte) 0);

    public static class a implements f<Object> {
        public final void failure(Exception exc) {
        }

        public final void success(Object obj) {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        private a() {
        }
    }

    void failure(Exception exc);

    void success(T t);
}
