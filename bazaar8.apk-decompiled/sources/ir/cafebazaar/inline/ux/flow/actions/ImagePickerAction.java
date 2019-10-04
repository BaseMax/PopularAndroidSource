package ir.cafebazaar.inline.ux.flow.actions;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.MediaStore;
import android.view.View;
import f.a.a.e.g;
import f.a.a.e.r;

public class ImagePickerAction extends CallbackRemoteAction {
    public static final Parcelable.Creator<ImagePickerAction> CREATOR = new g();

    public ImagePickerAction() {
        super("", false, false);
    }

    public void a(g gVar, View view) {
        super.a(gVar, view);
        gVar.f().startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), 8);
    }

    public boolean a(int i2) {
        return i2 == 8;
    }

    public ImagePickerAction(Parcel parcel) {
        super(parcel);
    }

    public void a(g gVar, int i2, Intent intent, Parcelable parcelable) {
        r.a(gVar, new h(this), intent.getData());
    }
}
