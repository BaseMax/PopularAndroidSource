package com.google.zxing.c.a.a;

import com.google.zxing.c.a.c;

final class b {

    /* renamed from: a  reason: collision with root package name */
    final com.google.zxing.c.a.b f4265a;

    /* renamed from: b  reason: collision with root package name */
    final com.google.zxing.c.a.b f4266b;
    final c c;
    private final boolean d = true;

    b(com.google.zxing.c.a.b bVar, com.google.zxing.c.a.b bVar2, c cVar) {
        this.f4265a = bVar;
        this.f4266b = bVar2;
        this.c = cVar;
    }

    public final boolean mustBeLast() {
        return this.f4266b == null;
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("[ ");
        sb.append(this.f4265a);
        sb.append(" , ");
        sb.append(this.f4266b);
        sb.append(" : ");
        c cVar = this.c;
        if (cVar == null) {
            obj = "null";
        } else {
            obj = Integer.valueOf(cVar.getValue());
        }
        sb.append(obj);
        sb.append(" ]");
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (!a(this.f4265a, bVar.f4265a) || !a(this.f4266b, bVar.f4266b) || !a(this.c, bVar.c)) {
            return false;
        }
        return true;
    }

    private static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public final int hashCode() {
        return (a(this.f4265a) ^ a(this.f4266b)) ^ a(this.c);
    }

    private static int a(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }
}
