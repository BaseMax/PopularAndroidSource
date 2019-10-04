package c.f.a;

import android.graphics.Bitmap;
import com.squareup.picasso.Picasso;

/* compiled from: FetchAction */
public class s extends C1030a<Object> {
    public final Object m = new Object();
    public C1041l n;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public s(Picasso picasso, G g2, int i2, int i3, Object obj, String str, C1041l lVar) {
        super(picasso, null, g2, i2, i3, 0, null, str, obj, false);
        this.n = lVar;
    }

    public void a(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        C1041l lVar = this.n;
        if (lVar != null) {
            lVar.onSuccess();
        }
    }

    public Object i() {
        return this.m;
    }

    public void a(Exception exc) {
        C1041l lVar = this.n;
        if (lVar != null) {
            lVar.a(exc);
        }
    }

    public void a() {
        super.a();
        this.n = null;
    }
}
