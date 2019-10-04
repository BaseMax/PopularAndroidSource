package c.c.a.b;

import android.content.res.ColorStateList;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import b.i.l.e;
import c.c.a.d.a.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.reviews.VoteState;
import h.f.b.f;
import h.f.b.j;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: BazaarDataBindingComponent.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4555a = new a(null);

    /* compiled from: BazaarDataBindingComponent.kt */
    public static final class a {
        public a() {
        }

        public final void a(AppCompatImageView appCompatImageView, VoteState voteState, Boolean bool) {
            ColorStateList colorStateList;
            j.b(appCompatImageView, "imageView");
            if (voteState != null && bool != null) {
                if (bool.booleanValue()) {
                    int i2 = b.f4548a[voteState.ordinal()];
                    if (i2 == 1) {
                        colorStateList = ColorStateList.valueOf(b.i.b.a.a(appCompatImageView.getContext(), (int) R.color.colorAccent));
                    } else if (i2 == 2) {
                        colorStateList = ColorStateList.valueOf(b.i.b.a.a(appCompatImageView.getContext(), (int) R.color.c_icon_warning));
                    } else if (i2 == 3) {
                        colorStateList = ColorStateList.valueOf(b.i.b.a.a(appCompatImageView.getContext(), (int) R.color.c_review_thumb_inactive));
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                } else {
                    colorStateList = ColorStateList.valueOf(b.i.b.a.a(appCompatImageView.getContext(), (int) R.color.c_review_thumb_inactive));
                }
                e.a((ImageView) appCompatImageView, colorStateList);
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public final void a(ImageView imageView, String str) {
            j.b(imageView, "imageView");
            b.a.a(b.f4745a, imageView, str, b.i.b.a.c(imageView.getContext(), R.drawable.video_not_loaded), null, null, null, null, 64, null);
        }

        public final void a(AppCompatTextView appCompatTextView, int i2) {
            j.b(appCompatTextView, "textView");
            if (i2 == 0) {
                appCompatTextView.setText(appCompatTextView.getContext().getString(R.string.no_malicious_app_found));
            } else if (i2 != 1) {
                appCompatTextView.setText(appCompatTextView.getContext().getString(R.string.malicious_apps_placeholder, new Object[]{Integer.valueOf(i2)}));
            } else {
                appCompatTextView.setText(appCompatTextView.getContext().getString(R.string.one_malicious_app_found));
            }
        }
    }

    public static final void a(ImageView imageView, String str) {
        f4555a.a(imageView, str);
    }

    public static final void a(AppCompatImageView appCompatImageView, VoteState voteState, Boolean bool) {
        f4555a.a(appCompatImageView, voteState, bool);
    }

    public static final void a(AppCompatTextView appCompatTextView, int i2) {
        f4555a.a(appCompatTextView, i2);
    }
}
