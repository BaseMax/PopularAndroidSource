package c.e.d;

import c.e.d.b.z;
import c.e.d.d.c;
import java.io.IOException;
import java.io.StringWriter;

/* compiled from: JsonElement */
public abstract class p {
    public int a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public m b() {
        if (f()) {
            return (m) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + this);
    }

    public r c() {
        if (h()) {
            return (r) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public t d() {
        if (i()) {
            return (t) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    public String e() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean f() {
        return this instanceof m;
    }

    public boolean g() {
        return this instanceof q;
    }

    public boolean h() {
        return this instanceof r;
    }

    public boolean i() {
        return this instanceof t;
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            c cVar = new c(stringWriter);
            cVar.b(true);
            z.a(this, cVar);
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }
}
