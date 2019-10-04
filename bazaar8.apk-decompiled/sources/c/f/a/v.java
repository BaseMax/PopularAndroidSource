package c.f.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;

/* compiled from: ImageViewAction */
public class v extends C1030a<ImageView> {
    public C1041l m;

    public v(Picasso picasso, ImageView imageView, G g2, int i2, int i3, int i4, Drawable drawable, String str, Object obj, C1041l lVar, boolean z) {
        super(picasso, imageView, g2, i2, i3, i4, drawable, str, obj, z);
        this.m = lVar;
    }

    public void a(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        if (bitmap != null) {
            ImageView imageView = (ImageView) this.f11961c.get();
            if (imageView != null) {
                Picasso picasso = this.f11959a;
                Bitmap bitmap2 = bitmap;
                Picasso.LoadedFrom loadedFrom2 = loadedFrom;
                D.a(imageView, picasso.f13608g, bitmap2, loadedFrom2, this.f11962d, picasso.o);
                C1041l lVar = this.m;
                if (lVar != null) {
                    lVar.onSuccess();
                }
                return;
            }
            return;
        }
        throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", new Object[]{this}));
    }

    public void a(Exception exc) {
        ImageView imageView = (ImageView) this.f11961c.get();
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof Animatable) {
                ((Animatable) drawable).stop();
            }
            int i2 = this.f11965g;
            if (i2 != 0) {
                imageView.setImageResource(i2);
            } else {
                Drawable drawable2 = this.f11966h;
                if (drawable2 != null) {
                    imageView.setImageDrawable(drawable2);
                }
            }
            C1041l lVar = this.m;
            if (lVar != null) {
                lVar.a(exc);
            }
        }
    }

    public void a() {
        super.a();
        if (this.m != null) {
            this.m = null;
        }
    }
}
