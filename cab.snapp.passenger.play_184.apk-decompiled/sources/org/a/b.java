package org.a;

public class b extends RuntimeException {
    public b(String str) {
        super(str);
    }

    public b(String str, Throwable th) {
        super(str, th);
    }

    public b(Throwable th) {
        super(th.getMessage(), th);
    }
}
