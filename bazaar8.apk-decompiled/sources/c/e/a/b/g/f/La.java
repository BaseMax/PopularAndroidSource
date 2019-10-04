package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzdp;
import java.util.NoSuchElementException;

public final class La extends Na {

    /* renamed from: a  reason: collision with root package name */
    public int f10188a = 0;

    /* renamed from: b  reason: collision with root package name */
    public final int f10189b = this.f10190c.size();

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ zzdp f10190c;

    public La(zzdp zzdp) {
        this.f10190c = zzdp;
    }

    public final boolean hasNext() {
        return this.f10188a < this.f10189b;
    }

    public final byte nextByte() {
        int i2 = this.f10188a;
        if (i2 < this.f10189b) {
            this.f10188a = i2 + 1;
            return this.f10190c.e(i2);
        }
        throw new NoSuchElementException();
    }
}
