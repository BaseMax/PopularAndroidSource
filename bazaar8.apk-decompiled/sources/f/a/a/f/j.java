package f.a.a.f;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.widget.TextView;
import com.squareup.picasso.Picasso;

/* compiled from: PicassoImageGetter */
public class j implements Html.ImageGetter {

    /* renamed from: a  reason: collision with root package name */
    public Resources f14334a;

    /* renamed from: b  reason: collision with root package name */
    public Picasso f14335b;

    /* renamed from: c  reason: collision with root package name */
    public TextView f14336c;

    public j(TextView textView, Resources resources, Picasso picasso) {
        this.f14336c = textView;
        this.f14334a = resources;
        this.f14335b = picasso;
    }

    public Drawable getDrawable(String str) {
        b bVar = new b();
        new i(this, str, bVar).execute(new Void[0]);
        return bVar;
    }
}
