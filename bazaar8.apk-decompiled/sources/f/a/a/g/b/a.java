package f.a.a.g.b;

import android.support.v4.media.session.MediaControllerCompat;
import android.util.SparseArray;

/* compiled from: InlineAudioManager */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public SparseArray<MediaControllerCompat.a> f14380a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    public Integer f14381b;

    public void a(Integer num, MediaControllerCompat.a aVar) {
        this.f14380a.put(num.intValue(), aVar);
        this.f14381b = num;
    }

    public void a(Integer num) {
        this.f14381b = num;
    }

    public MediaControllerCompat.a a() {
        SparseArray<MediaControllerCompat.a> sparseArray = this.f14380a;
        if (sparseArray != null && sparseArray.size() > 0) {
            Integer num = this.f14381b;
            if (num != null) {
                return this.f14380a.get(num.intValue());
            }
        }
        return null;
    }
}
