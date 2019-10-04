package c.c.a.n.p.a.a;

import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.c.h.g;
import c.c.a.e.d.a.a;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;

/* compiled from: VerifyEmailOtpViewModel.kt */
public final class p extends c.c.a.d.f.p {

    /* renamed from: d  reason: collision with root package name */
    public final g<Resource> f6725d = new g<>();

    /* renamed from: e  reason: collision with root package name */
    public final t<Resource<Long>> f6726e = new t<>();

    /* renamed from: f  reason: collision with root package name */
    public final a f6727f;

    public p(a aVar) {
        j.b(aVar, "accountRepository");
        this.f6727f = aVar;
    }

    public final LiveData<Resource<Long>> e() {
        return this.f6726e;
    }

    public final LiveData<Resource> f() {
        return this.f6725d;
    }

    public final void a(String str, String str2) {
        j.b(str, "email");
        j.b(str2, "code");
        g<Resource> gVar = this.f6725d;
        Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
        gVar.b(resource);
        C1125ra unused = C1103g.b(this, null, null, new VerifyEmailOtpViewModel$verifyCode$1(this, str, str2, null), 3, null);
    }

    public final void a(None none) {
        g<Resource> gVar = this.f6725d;
        Resource resource = new Resource(ResourceState.Success.f12179a, null, null, 6, null);
        gVar.b(resource);
    }

    public final void a(ErrorModel errorModel) {
        g<Resource> gVar = this.f6725d;
        Resource resource = new Resource(ResourceState.Error.f12177a, null, errorModel, 2, null);
        gVar.b(resource);
    }

    public final C1125ra a(String str) {
        j.b(str, "email");
        return C1103g.b(this, null, null, new VerifyEmailOtpViewModel$resendEmail$1(this, str, null), 3, null);
    }
}
