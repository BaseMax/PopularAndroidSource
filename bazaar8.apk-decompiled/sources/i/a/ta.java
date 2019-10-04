package i.a;

/* compiled from: JobSupport.kt */
public class ta extends xa implements C1128u {

    /* renamed from: b  reason: collision with root package name */
    public final boolean f14865b = n();

    public ta(C1125ra raVar) {
        super(true);
        a(raVar);
    }

    public boolean f() {
        return this.f14865b;
    }

    public boolean g() {
        return true;
    }

    public final boolean n() {
        C1119o oVar = this.parentHandle;
        if (!(oVar instanceof C1121p)) {
            oVar = null;
        }
        C1121p pVar = (C1121p) oVar;
        if (pVar != null) {
            xa xaVar = (xa) pVar.f14868d;
            if (xaVar != null) {
                while (!xaVar.f()) {
                    C1119o oVar2 = xaVar.parentHandle;
                    if (!(oVar2 instanceof C1121p)) {
                        oVar2 = null;
                    }
                    C1121p pVar2 = (C1121p) oVar2;
                    if (pVar2 != null) {
                        xaVar = (xa) pVar2.f14868d;
                        if (xaVar == null) {
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }
}
