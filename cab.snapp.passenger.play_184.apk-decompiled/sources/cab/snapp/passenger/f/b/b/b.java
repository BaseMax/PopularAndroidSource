package cab.snapp.passenger.f.b.b;

import org.a.c;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    c f556a;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        b f557a = new b((byte) 0);

        public final a addKeyValue(String str, String str2) {
            try {
                this.f557a.f556a.put(str, (Object) str2);
            } catch (org.a.b e) {
                e.printStackTrace();
            }
            return this;
        }

        public final a addOuterKeyToCurrentAsValue(String str) {
            b bVar = this.f557a;
            c cVar = bVar.f556a;
            try {
                bVar.f556a = new c();
                bVar.f556a.put(str, (Object) cVar);
            } catch (org.a.b e) {
                e.printStackTrace();
            }
            return this;
        }

        public final c build() {
            return this.f557a.f556a;
        }
    }

    /* synthetic */ b(byte b2) {
        this();
    }

    private b() {
        this.f556a = new c();
    }
}
