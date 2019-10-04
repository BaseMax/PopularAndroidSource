package io.fabric.sdk.android.services.common;

public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    private final String f6597a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6598b;

    public static class a extends j {
        public a(String str) {
            super(str);
        }

        public a(String str, String str2) {
            super(str, str2);
        }
    }

    public static class b extends j {
        public b(String str) {
            super(str);
        }

        public b(String str, String str2) {
            super(str, str2);
        }
    }

    public j(String str) {
        this(str, "<unknown>");
    }

    public j(String str, String str2) {
        this.f6597a = str;
        this.f6598b = str2;
    }

    public String getSessionId() {
        return this.f6597a;
    }

    public String getExceptionName() {
        return this.f6598b;
    }
}
