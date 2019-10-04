package kotlin.jvm.internal;

import h.i.e;

public class MutablePropertyReference1Impl extends MutablePropertyReference1 {
    public final String name;
    public final e owner;
    public final String signature;

    public MutablePropertyReference1Impl(e eVar, String str, String str2) {
        this.owner = eVar;
        this.name = str;
        this.signature = str2;
    }

    public e e() {
        return this.owner;
    }

    public String g() {
        return this.signature;
    }

    public Object get(Object obj) {
        return a().a(obj);
    }

    public String getName() {
        return this.name;
    }
}
