package c.e.a.b.g.f;

/* renamed from: c.e.a.b.g.f.ca  reason: case insensitive filesystem */
public final class C0807ca extends Rc<C0807ca> {

    /* renamed from: c  reason: collision with root package name */
    public C0811da[] f10357c = C0811da.d();

    public C0807ca() {
        this.f10213b = null;
        this.f10275a = -1;
    }

    public final void a(Qc qc) {
        C0811da[] daVarArr = this.f10357c;
        if (daVarArr != null && daVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                C0811da[] daVarArr2 = this.f10357c;
                if (i2 >= daVarArr2.length) {
                    break;
                }
                C0811da daVar = daVarArr2[i2];
                if (daVar != null) {
                    qc.a(1, (Wc) daVar);
                }
                i2++;
            }
        }
        super.a(qc);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0807ca)) {
            return false;
        }
        C0807ca caVar = (C0807ca) obj;
        if (!Vc.a((Object[]) this.f10357c, (Object[]) caVar.f10357c)) {
            return false;
        }
        Tc tc = this.f10213b;
        if (tc != null && !tc.a()) {
            return this.f10213b.equals(caVar.f10213b);
        }
        Tc tc2 = caVar.f10213b;
        return tc2 == null || tc2.a();
    }

    public final int hashCode() {
        int hashCode = (((C0807ca.class.getName().hashCode() + 527) * 31) + Vc.a((Object[]) this.f10357c)) * 31;
        Tc tc = this.f10213b;
        return hashCode + ((tc == null || tc.a()) ? 0 : this.f10213b.hashCode());
    }

    public final int a() {
        int a2 = super.a();
        C0811da[] daVarArr = this.f10357c;
        if (daVarArr != null && daVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                C0811da[] daVarArr2 = this.f10357c;
                if (i2 >= daVarArr2.length) {
                    break;
                }
                C0811da daVar = daVarArr2[i2];
                if (daVar != null) {
                    a2 += Qc.b(1, (Wc) daVar);
                }
                i2++;
            }
        }
        return a2;
    }

    public final /* synthetic */ Wc a(Pc pc) {
        while (true) {
            int c2 = pc.c();
            if (c2 == 0) {
                return this;
            }
            if (c2 == 10) {
                int a2 = Zc.a(pc, 10);
                C0811da[] daVarArr = this.f10357c;
                int length = daVarArr == null ? 0 : daVarArr.length;
                C0811da[] daVarArr2 = new C0811da[(a2 + length)];
                if (length != 0) {
                    System.arraycopy(this.f10357c, 0, daVarArr2, 0, length);
                }
                while (length < daVarArr2.length - 1) {
                    daVarArr2[length] = new C0811da();
                    pc.a((Wc) daVarArr2[length]);
                    pc.c();
                    length++;
                }
                daVarArr2[length] = new C0811da();
                pc.a((Wc) daVarArr2[length]);
                this.f10357c = daVarArr2;
            } else if (!super.a(pc, c2)) {
                return this;
            }
        }
    }
}
