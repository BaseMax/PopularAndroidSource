package b.z;

import android.os.RemoteCallbackList;
import androidx.room.MultiInstanceInvalidationService;

/* compiled from: MultiInstanceInvalidationService */
class s extends RemoteCallbackList<C0357f> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MultiInstanceInvalidationService f3670a;

    public s(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.f3670a = multiInstanceInvalidationService;
    }

    /* renamed from: a */
    public void onCallbackDied(C0357f fVar, Object obj) {
        this.f3670a.f934b.d(((Integer) obj).intValue());
    }
}
