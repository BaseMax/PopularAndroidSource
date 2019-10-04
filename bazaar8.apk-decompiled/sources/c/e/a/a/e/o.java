package c.e.a.a.e;

import c.e.a.a.o.C0737e;

/* compiled from: SeekMap */
public interface o {

    /* compiled from: SeekMap */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final p f8321a;

        /* renamed from: b  reason: collision with root package name */
        public final p f8322b;

        public a(p pVar) {
            this(pVar, pVar);
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (!this.f8321a.equals(aVar.f8321a) || !this.f8322b.equals(aVar.f8322b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f8321a.hashCode() * 31) + this.f8322b.hashCode();
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append(this.f8321a);
            if (this.f8321a.equals(this.f8322b)) {
                str = "";
            } else {
                str = ", " + this.f8322b;
            }
            sb.append(str);
            sb.append("]");
            return sb.toString();
        }

        public a(p pVar, p pVar2) {
            C0737e.a(pVar);
            this.f8321a = pVar;
            C0737e.a(pVar2);
            this.f8322b = pVar2;
        }
    }

    /* compiled from: SeekMap */
    public static final class b implements o {

        /* renamed from: a  reason: collision with root package name */
        public final long f8323a;

        /* renamed from: b  reason: collision with root package name */
        public final a f8324b;

        public b(long j2) {
            this(j2, 0);
        }

        public a b(long j2) {
            return this.f8324b;
        }

        public boolean c() {
            return false;
        }

        public long d() {
            return this.f8323a;
        }

        public b(long j2, long j3) {
            this.f8323a = j2;
            this.f8324b = new a(j3 == 0 ? p.f8325a : new p(0, j3));
        }
    }

    a b(long j2);

    boolean c();

    long d();
}
