package e.a.a.a.a.b;

import e.a.a.a.f;

/* renamed from: e.a.a.a.a.b.c  reason: case insensitive filesystem */
/* compiled from: AdvertisingInfoProvider */
class C1048c extends j {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1047b f13674a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ d f13675b;

    public C1048c(d dVar, C1047b bVar) {
        this.f13675b = dVar;
        this.f13674a = bVar;
    }

    public void onRun() {
        C1047b a2 = this.f13675b.b();
        if (!this.f13674a.equals(a2)) {
            f.e().d("Fabric", "Asychronously getting Advertising Info and storing it to preferences");
            this.f13675b.c(a2);
        }
    }
}
