package f.a.a.g.b;

import ir.cafebazaar.inline.ux.audio.MusicDescriptor;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: PlayListContainer */
public class m {

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<MusicDescriptor> f14415a;

    /* renamed from: b  reason: collision with root package name */
    public int f14416b = 0;

    public m() {
        if (this.f14415a == null) {
            this.f14415a = new ArrayList<>();
        }
    }

    public int a() {
        if (this.f14415a.size() > 0) {
            return this.f14415a.get(this.f14416b).d();
        }
        return -1;
    }

    public MusicDescriptor b() {
        if (this.f14415a.size() > 0) {
            return this.f14415a.get(this.f14416b);
        }
        return null;
    }

    public boolean c() {
        this.f14416b++;
        if (this.f14416b > this.f14415a.size() - 1) {
            this.f14416b = 0;
        }
        return true;
    }

    public void d() {
        this.f14416b--;
        if (this.f14416b < 0) {
            this.f14416b = this.f14415a.size() - 1;
        }
    }

    public void a(MusicDescriptor musicDescriptor) {
        Iterator<MusicDescriptor> it = this.f14415a.iterator();
        while (it.hasNext()) {
            MusicDescriptor next = it.next();
            if (next.d() == musicDescriptor.d()) {
                next.c(musicDescriptor.g());
                next.a(musicDescriptor.a());
                next.b(musicDescriptor.b());
                next.a(musicDescriptor.c());
                next.a(musicDescriptor.e());
                return;
            }
        }
        this.f14415a.add(musicDescriptor);
    }

    public MusicDescriptor a(Integer num) {
        Iterator<MusicDescriptor> it = this.f14415a.iterator();
        while (it.hasNext()) {
            MusicDescriptor next = it.next();
            if (next.d() == num.intValue()) {
                a(this.f14415a.indexOf(next));
                return next;
            }
        }
        return null;
    }

    public final void a(int i2) {
        this.f14416b = i2;
    }
}
