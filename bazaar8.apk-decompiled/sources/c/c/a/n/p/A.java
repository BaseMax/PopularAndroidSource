package c.c.a.n.p;

import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.d.c.b;
import c.c.a.d.f.p;
import c.c.a.e.d.m.d;
import c.c.a.p.I;
import com.farsitel.bazaar.common.model.login.LoginType;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;

/* compiled from: VerifyOtpViewModel.kt */
public final class A extends p {

    /* renamed from: d  reason: collision with root package name */
    public final t<Resource> f6696d = new t<>();

    /* renamed from: e  reason: collision with root package name */
    public final t<Resource<Long>> f6697e = new t<>();

    /* renamed from: f  reason: collision with root package name */
    public final b f6698f;

    /* renamed from: g  reason: collision with root package name */
    public final I f6699g;

    /* renamed from: h  reason: collision with root package name */
    public final d f6700h;

    public A(b bVar, I i2, d dVar) {
        j.b(bVar, "accountManager");
        j.b(i2, "scheduler");
        j.b(dVar, "paymentRepository");
        this.f6698f = bVar;
        this.f6699g = i2;
        this.f6700h = dVar;
    }

    public final long e() {
        return this.f6700h.b();
    }

    public final LiveData<Resource<Long>> f() {
        return this.f6697e;
    }

    public final LiveData<Resource> g() {
        return this.f6696d;
    }

    public final void h() {
        this.f6699g.i();
        this.f6699g.n();
        t<Resource> tVar = this.f6696d;
        Resource resource = new Resource(ResourceState.Success.f12179a, null, null, 6, null);
        tVar.b(resource);
    }

    public final void a(String str, String str2, LoginType loginType) {
        j.b(str, "phoneNumber");
        j.b(str2, "code");
        j.b(loginType, "loginType");
        t<Resource> tVar = this.f6696d;
        Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
        tVar.b(resource);
        VerifyOtpViewModel$verifyCode$1 verifyOtpViewModel$verifyCode$1 = new VerifyOtpViewModel$verifyCode$1(this, str, str2, loginType, null);
        C1125ra unused = C1103g.b(this, null, null, verifyOtpViewModel$verifyCode$1, 3, null);
    }

    public final void a(ErrorModel errorModel) {
        t<Resource> tVar = this.f6696d;
        Resource resource = new Resource(ResourceState.Error.f12177a, null, errorModel, 2, null);
        tVar.b(resource);
    }

    public final C1125ra a(String str) {
        j.b(str, "phoneNumber");
        return C1103g.b(this, null, null, new VerifyOtpViewModel$resendSms$1(this, str, null), 3, null);
    }
}
