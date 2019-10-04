package com.webengage.sdk.android.actions.rules;

public class d {

    /* renamed from: a  reason: collision with root package name */
    private String f5452a;

    /* renamed from: b  reason: collision with root package name */
    private String f5453b;
    private String c;
    private String d;
    private com.webengage.sdk.android.actions.rules.a.d e;

    public static class a {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public String f5454a;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public String f5455b;
        /* access modifiers changed from: private */
        public String c;
        /* access modifiers changed from: private */
        public String d;
        /* access modifiers changed from: private */
        public com.webengage.sdk.android.actions.rules.a.d e;

        public a a(com.webengage.sdk.android.actions.rules.a.d dVar) {
            this.e = dVar;
            return this;
        }

        public a a(String str) {
            this.f5454a = str;
            return this;
        }

        public d a() {
            return new d(this);
        }

        public a b(String str) {
            this.f5455b = str;
            return this;
        }

        public a c(String str) {
            this.c = str;
            return this;
        }

        public a d(String str) {
            this.d = str;
            return this;
        }
    }

    private d(a aVar) {
        this.f5452a = aVar.f5454a;
        this.f5453b = aVar.f5455b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
    }

    public String a() {
        return this.f5452a;
    }

    public String b() {
        return this.f5453b;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public com.webengage.sdk.android.actions.rules.a.d e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return ((d) obj).a().equals(a());
    }

    public int hashCode() {
        return a().hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String property = System.getProperty("line.separator");
        sb.append(getClass().getName() + " Object { " + property);
        StringBuilder sb2 = new StringBuilder(" Id : ");
        sb2.append(a());
        sb2.append(property);
        sb.append(sb2.toString());
        sb.append(" Function : " + b().toString() + property);
        sb.append(" Attribute : " + c() + property);
        sb.append(" Attribute Category : " + d() + property);
        StringBuilder sb3 = new StringBuilder(" Rule : ");
        sb3.append(e().toString());
        sb.append(sb3.toString());
        sb.append("}");
        return sb.toString();
    }
}
