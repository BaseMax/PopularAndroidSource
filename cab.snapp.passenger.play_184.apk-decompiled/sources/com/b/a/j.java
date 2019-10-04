package com.b.a;

public interface j {

    public static class a implements j {
        public final boolean isBuilt() {
            return false;
        }

        public final <T> boolean put(String str, T t) {
            a();
            return false;
        }

        public final <T> T get(String str) {
            a();
            return null;
        }

        public final <T> T get(String str, T t) {
            a();
            return null;
        }

        public final long count() {
            a();
            return 0;
        }

        public final boolean deleteAll() {
            a();
            return false;
        }

        public final boolean delete(String str) {
            a();
            return false;
        }

        public final boolean contains(String str) {
            a();
            return false;
        }

        public final void destroy() {
            a();
        }

        private static void a() {
            throw new IllegalStateException("Hawk is not built. Please call build() and wait the initialisation finishes.");
        }
    }

    boolean contains(String str);

    long count();

    boolean delete(String str);

    boolean deleteAll();

    void destroy();

    <T> T get(String str);

    <T> T get(String str, T t);

    boolean isBuilt();

    <T> boolean put(String str, T t);
}
