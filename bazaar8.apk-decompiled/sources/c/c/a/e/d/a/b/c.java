package c.c.a.e.d.a.b;

import c.c.a.e.d.a.b.a.g;
import c.c.a.e.d.a.b.a.i;
import c.c.a.e.d.a.b.a.j;
import c.c.a.e.d.a.b.a.k;
import c.c.a.e.d.a.b.b.d;
import c.c.a.e.d.a.b.b.e;
import c.c.a.e.d.a.b.b.f;
import c.c.a.e.d.a.b.b.h;
import c.c.a.e.d.a.b.b.l;
import c.c.a.e.d.a.b.b.n;
import com.farsitel.bazaar.data.entity.None;
import l.C1158b;
import l.b.a;
import l.b.m;

/* compiled from: AccountService.kt */
public interface c {
    @m("rest-v1/process/ChangePhoneNumberRequest")
    C1158b<None> a(@a c.c.a.e.d.a.b.a.a aVar);

    @m("rest-v1/process/GetMergeAccountOtpTokenRequest")
    C1158b<d> a(@a c.c.a.e.d.a.b.a.c cVar);

    @m("rest-v1/process/GetOtpTokenRequest")
    C1158b<e> a(@a c.c.a.e.d.a.b.a.d dVar);

    @m("rest-v1/process/GetUserInfoRequest")
    C1158b<f> a(@a c.c.a.e.d.a.b.a.e eVar);

    @m("rest-v1/process/LogoutRequest")
    C1158b<None> a(@a c.c.a.e.d.a.b.a.f fVar);

    @m("rest-v1/process/MergeAccountRequest")
    C1158b<h> a(@a g gVar);

    @m("rest-v1/process/RegisterDeviceAndGetInfo")
    C1158b<l> a(@a c.c.a.e.d.a.b.a.h hVar);

    @m("rest-v1/process/SetNicknameRequest")
    C1158b<None> a(@a i iVar);

    @m("rest-v1/process/VerifyEmailOtpTokenRequest")
    C1158b<c.c.a.e.d.a.b.b.m> a(@a j jVar);

    @m("rest-v1/process/VerifyOtpTokenRequest")
    C1158b<n> a(@a k kVar);
}
