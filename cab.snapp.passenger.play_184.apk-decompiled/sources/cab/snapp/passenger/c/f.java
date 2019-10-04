package cab.snapp.passenger.c;

import cab.snapp.passenger.data.models.Profile;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.requests.CreditRequest;
import cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse;
import cab.snapp.passenger.data_access_layer.network.responses.CreditResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ProfileResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RegisterEmailResponse;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.snappnetwork.model.f;
import io.reactivex.e.g;
import io.reactivex.j.a;
import io.reactivex.j.b;
import io.reactivex.z;
import javax.inject.Inject;

public final class f {

    /* renamed from: a  reason: collision with root package name */
    private b f463a;

    /* renamed from: b  reason: collision with root package name */
    private ProfileResponse f464b;
    private b<ProfileResponse> c = b.create();
    private a<CreditResponse> d = a.create();
    private d e;
    private c f;

    @Inject
    public f(b bVar, d dVar, c cVar) {
        this.f = cVar;
        this.f463a = bVar;
        this.e = dVar;
        bVar.getConfigObservable().subscribe(new g() {
            public final void accept(Object obj) {
                f.this.a((ConfigResponse) obj);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ConfigResponse configResponse) throws Exception {
        if (configResponse != null && configResponse.getProfileResponse() != null) {
            a(configResponse.getProfileResponse());
            this.c.onNext(this.f464b);
        }
    }

    private void a(ProfileResponse profileResponse) {
        this.f464b = profileResponse;
        c cVar = this.f;
        if (cVar != null) {
            cVar.setUserProfile(profileResponse);
        }
    }

    public final z<ProfileResponse> fetchAndRefreshProfile() {
        return this.e.getProfile().doOnNext(new g() {
            public final void accept(Object obj) {
                f.this.b((ProfileResponse) obj);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(ProfileResponse profileResponse) throws Exception {
        a(profileResponse);
        this.c.onNext(profileResponse);
    }

    public final z<CreditResponse> fetchAndRefreshCredit(CreditRequest.PLACE place) {
        return this.e.getCredit(place).doOnNext(new g() {
            public final void accept(Object obj) {
                f.this.a((CreditResponse) obj);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(CreditResponse creditResponse) throws Exception {
        if (creditResponse != null) {
            c cVar = this.f;
            if (cVar != null) {
                cVar.setCreditResponse(creditResponse);
            }
            this.d.onNext(creditResponse);
        }
    }

    public final z<cab.snapp.snappnetwork.model.f> saveChanges(Profile profile) {
        return this.e.updateProfile(profile).doOnNext(new g(profile) {
            private final /* synthetic */ Profile f$1;

            {
                this.f$1 = r2;
            }

            public final void accept(Object obj) {
                f.this.a(this.f$1, (f) obj);
            }
        });
    }

    public final z<RegisterEmailResponse> sendRegistrationEmail(String str) {
        return this.e.sendRegisterationEmail(str);
    }

    public final z<RegisterEmailResponse> resendRegistrationEmail() {
        return this.e.resendRegistrationEmail();
    }

    public final void reset() {
        this.f464b = null;
        CreditResponse creditResponse = new CreditResponse();
        creditResponse.setApCredit(-1L);
        creditResponse.setSnappCredit(-1);
        creditResponse.setDefaultWallet(1);
        this.d.onNext(creditResponse);
    }

    public final ProfileResponse getProfile() {
        return this.f464b;
    }

    public final CreditResponse getCredit() {
        return this.d.getValue();
    }

    public final z<ProfileResponse> getProfileObservable() {
        return this.c;
    }

    public final z<CreditResponse> getCreditObservable() {
        return this.d;
    }

    public final void updateCredit(CreditResponse creditResponse) {
        this.d.onNext(creditResponse);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Profile profile, cab.snapp.snappnetwork.model.f fVar) throws Exception {
        if (profile != null) {
            if (profile.getName() != null && !profile.getName().isEmpty()) {
                this.f464b.setFullname(profile.getName());
            }
            if (profile.getEmail() != null && !profile.getEmail().isEmpty()) {
                this.f464b.setEmail(profile.getEmail());
            }
            if (profile.getPhone() != null && !profile.getPhone().isEmpty()) {
                this.f464b.setCellphone(profile.getPhone());
            }
            if (!(profile.getAddress() == null || profile.getAddress().isEmpty() || this.f464b.getProfileMeta() == null)) {
                this.f464b.getProfileMeta().setAddress(profile.getAddress());
            }
            if (!(profile.getGender() == null || this.f464b.getProfileMeta() == null)) {
                this.f464b.getProfileMeta().setGender(profile.getGender());
            }
            if (!(profile.getBirthday() == null || profile.getBirthday().isEmpty() || this.f464b.getProfileMeta() == null)) {
                this.f464b.getProfileMeta().setBirthDate(profile.getBirthday());
            }
        }
        this.c.onNext(this.f464b);
    }
}
