package e.a.a.a.a.b;

import e.a.a.a.a.b.z;
import java.io.InputStream;

/* compiled from: QueueFile */
class y implements z.c {

    /* renamed from: a  reason: collision with root package name */
    public boolean f13705a = true;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ StringBuilder f13706b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ z f13707c;

    public y(z zVar, StringBuilder sb) {
        this.f13707c = zVar;
        this.f13706b = sb;
    }

    public void read(InputStream inputStream, int i2) {
        if (this.f13705a) {
            this.f13705a = false;
        } else {
            this.f13706b.append(", ");
        }
        this.f13706b.append(i2);
    }
}
