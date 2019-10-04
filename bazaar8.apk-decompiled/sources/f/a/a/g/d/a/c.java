package f.a.a.g.d.a;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import f.a.a.e.g;
import f.a.a.g.d.b;

/* compiled from: ActionHandler */
public class c implements f.a.a.a.c.c, b {

    /* renamed from: a  reason: collision with root package name */
    public g f14443a;

    /* renamed from: b  reason: collision with root package name */
    public Parcelable f14444b = null;

    /* renamed from: c  reason: collision with root package name */
    public b f14445c = null;

    public c(g gVar) {
        this.f14443a = gVar;
    }

    public void a(b bVar, View view) {
        if (!this.f14443a.f().w().e()) {
            if (bVar instanceof b) {
                this.f14445c = (b) bVar;
            }
            bVar.a(this.f14443a, view);
        }
    }

    public void b(Bundle bundle) {
        bundle.putParcelable("pending", this.f14444b);
        b bVar = this.f14445c;
        if (bVar instanceof Parcelable) {
            bundle.putParcelable("action", (Parcelable) bVar);
        }
    }

    public Parcelable a() {
        return this.f14444b;
    }

    public void a(Parcelable parcelable) {
        this.f14444b = parcelable;
    }

    public void a(Bundle bundle) {
        this.f14444b = bundle.getParcelable("pending");
        this.f14445c = (b) bundle.getParcelable("action");
    }

    public boolean a(g gVar, int i2, int i3, Intent intent) {
        b bVar = this.f14445c;
        if (bVar != null) {
            return bVar.a(gVar, i2, i3, intent);
        }
        return false;
    }
}
