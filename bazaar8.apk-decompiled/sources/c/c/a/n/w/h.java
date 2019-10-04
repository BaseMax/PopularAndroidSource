package c.c.a.n.w;

import android.text.Editable;
import android.text.TextWatcher;
import androidx.appcompat.widget.AppCompatImageView;
import c.c.a.d.b.l;
import c.c.a.e;
import com.farsitel.bazaar.ui.search.SearchFragment;

/* compiled from: SearchFragment.kt */
public final class h implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SearchFragment f7044a;

    public h(SearchFragment searchFragment) {
        this.f7044a = searchFragment;
    }

    public void afterTextChanged(Editable editable) {
        if ((editable != null ? editable.length() : 0) > 0) {
            AppCompatImageView appCompatImageView = (AppCompatImageView) this.f7044a.e(e.clearSearchInputButton);
            if (appCompatImageView != null) {
                l.c(appCompatImageView);
            }
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) this.f7044a.e(e.voiceSearchButton);
            if (appCompatImageView2 != null) {
                l.a(appCompatImageView2);
                return;
            }
            return;
        }
        AppCompatImageView appCompatImageView3 = (AppCompatImageView) this.f7044a.e(e.clearSearchInputButton);
        if (appCompatImageView3 != null) {
            l.a(appCompatImageView3);
        }
        AppCompatImageView appCompatImageView4 = (AppCompatImageView) this.f7044a.e(e.voiceSearchButton);
        if (appCompatImageView4 != null) {
            l.c(appCompatImageView4);
        }
    }

    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        this.f7044a.Aa = String.valueOf(charSequence);
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        if (!this.f7044a.Da && charSequence != null) {
            SearchFragment.e(this.f7044a).a(charSequence.toString());
        }
        this.f7044a.Da = false;
        SearchFragment.f(this.f7044a).a(charSequence);
    }
}
