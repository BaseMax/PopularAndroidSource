package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import b.b.g.C0218i;
import b.b.g.C0224o;
import b.b.g.ma;
import b.i.k.u;
import b.i.l.m;

public class AppCompatImageView extends ImageView implements u, m {

    /* renamed from: a  reason: collision with root package name */
    public final C0218i f375a;

    /* renamed from: b  reason: collision with root package name */
    public final C0224o f376b;

    public AppCompatImageView(Context context) {
        this(context, null);
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0218i iVar = this.f375a;
        if (iVar != null) {
            iVar.a();
        }
        C0224o oVar = this.f376b;
        if (oVar != null) {
            oVar.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0218i iVar = this.f375a;
        if (iVar != null) {
            return iVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0218i iVar = this.f375a;
        if (iVar != null) {
            return iVar.c();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        C0224o oVar = this.f376b;
        if (oVar != null) {
            return oVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        C0224o oVar = this.f376b;
        if (oVar != null) {
            return oVar.c();
        }
        return null;
    }

    public boolean hasOverlappingRendering() {
        return this.f376b.d() && super.hasOverlappingRendering();
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0218i iVar = this.f375a;
        if (iVar != null) {
            iVar.b(drawable);
        }
    }

    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C0218i iVar = this.f375a;
        if (iVar != null) {
            iVar.a(i2);
        }
    }

    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        C0224o oVar = this.f376b;
        if (oVar != null) {
            oVar.a();
        }
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        C0224o oVar = this.f376b;
        if (oVar != null) {
            oVar.a();
        }
    }

    public void setImageResource(int i2) {
        C0224o oVar = this.f376b;
        if (oVar != null) {
            oVar.a(i2);
        }
    }

    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        C0224o oVar = this.f376b;
        if (oVar != null) {
            oVar.a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0218i iVar = this.f375a;
        if (iVar != null) {
            iVar.b(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0218i iVar = this.f375a;
        if (iVar != null) {
            iVar.a(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        C0224o oVar = this.f376b;
        if (oVar != null) {
            oVar.a(colorStateList);
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        C0224o oVar = this.f376b;
        if (oVar != null) {
            oVar.a(mode);
        }
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet, int i2) {
        super(ma.b(context), attributeSet, i2);
        this.f375a = new C0218i(this);
        this.f375a.a(attributeSet, i2);
        this.f376b = new C0224o(this);
        this.f376b.a(attributeSet, i2);
    }
}
