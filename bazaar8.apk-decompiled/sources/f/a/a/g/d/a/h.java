package f.a.a.g.d.a;

import android.graphics.drawable.BitmapDrawable;
import android.util.Log;
import f.a.a.e.b.b.y;
import ir.cafebazaar.inline.ux.flow.actions.ImagePickerAction;

/* compiled from: ImagePickerAction */
class h implements y.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ImagePickerAction f14447a;

    public h(ImagePickerAction imagePickerAction) {
        this.f14447a = imagePickerAction;
    }

    public void a(BitmapDrawable bitmapDrawable) {
        Log.d("InlineActivity", "setImage() called with: image = [" + bitmapDrawable + "]");
    }

    public void setValue(String str) {
        Log.d("InlineActivity", "setValue() called with: token = [" + str + "]");
    }

    public void a(double d2) {
        Log.d("InlineActivity", "setProgress() called with: progress = [" + d2 + "]");
    }
}
