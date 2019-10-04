package c.f.a;

import com.squareup.picasso.Picasso;

/* compiled from: Picasso */
class B implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Exception f11877a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Picasso.b f11878b;

    public B(Picasso.b bVar, Exception exc) {
        this.f11878b = bVar;
        this.f11877a = exc;
    }

    public void run() {
        throw new RuntimeException(this.f11877a);
    }
}
