package com.yandex.metrica.impl.ob;

class hm {

    /* renamed from: a  reason: collision with root package name */
    private hq f6113a;

    /* renamed from: b  reason: collision with root package name */
    private final ft f6114b;
    private final fs c;

    public hm(hq hqVar, ft ftVar, fs fsVar) {
        this.f6113a = hqVar;
        this.f6114b = ftVar;
        this.c = fsVar;
    }

    public void a() {
        hq hqVar = this.f6113a;
        if (hqVar != null) {
            boolean z = true;
            if (this.f6114b.a() > ((long) hqVar.h)) {
                this.f6114b.c((int) (((float) hqVar.h) * 0.1f));
            }
            hq hqVar2 = this.f6113a;
            if (this.c.a() <= ((long) hqVar2.h)) {
                z = false;
            }
            if (z) {
                this.c.c((int) (((float) hqVar2.h) * 0.1f));
            }
        }
    }

    public void a(hq hqVar) {
        this.f6113a = hqVar;
    }
}
