package kotlin.jvm.internal;

import h.f.b.j;
import h.i.b;
import h.i.i;

public abstract class PropertyReference extends CallableReference implements i {
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj instanceof PropertyReference) {
            PropertyReference propertyReference = (PropertyReference) obj;
            if (!e().equals(propertyReference.e()) || !getName().equals(propertyReference.getName()) || !g().equals(propertyReference.g()) || !j.a(d(), propertyReference.d())) {
                z = false;
            }
            return z;
        } else if (obj instanceof i) {
            return obj.equals(b());
        } else {
            return false;
        }
    }

    public i f() {
        return (i) super.f();
    }

    public int hashCode() {
        return (((e().hashCode() * 31) + getName().hashCode()) * 31) + g().hashCode();
    }

    public String toString() {
        b b2 = b();
        if (b2 != this) {
            return b2.toString();
        }
        return "property " + getName() + " (Kotlin reflection is not available)";
    }
}
