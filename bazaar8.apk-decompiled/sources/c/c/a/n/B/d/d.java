package c.c.a.n.b.d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.ViewDataBinding;
import c.c.a.c.b.c;
import c.c.a.c.c.a;
import c.c.a.d.b.l;
import c.c.a.d.g.a.i;
import c.c.a.f.E;
import c.c.a.n.b.v;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.google.android.material.button.MaterialButton;
import h.f.b.j;
import h.f.b.n;
import h.h;
import java.util.Arrays;
import java.util.Locale;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TypeCastException;

/* compiled from: AppInfoViewHolder.kt */
public final class d extends v {
    public final ViewDataBinding v;
    public final a w;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public d(ViewDataBinding viewDataBinding, a aVar) {
        super(viewDataBinding);
        j.b(viewDataBinding, "viewDataBinding");
        j.b(aVar, "appInfoCommunicator");
        this.v = viewDataBinding;
        this.w = aVar;
    }

    public void C() {
        ViewDataBinding viewDataBinding = this.v;
        if (viewDataBinding instanceof E) {
            ((E) viewDataBinding).U.setOnClickListener(null);
            ((E) this.v).V.setOnClickListener(null);
            i iVar = i.f4812a;
            AppCompatImageView appCompatImageView = ((E) this.v).aa;
            j.a((Object) appCompatImageView, "viewDataBinding.ivAppDetailAppIcon");
            iVar.a(appCompatImageView);
            i iVar2 = i.f4812a;
            AppCompatImageView appCompatImageView2 = ((E) this.v).Z;
            j.a((Object) appCompatImageView2, "viewDataBinding.ivAppDetailAppCover");
            iVar2.a(appCompatImageView2);
            ((E) this.v).Z.setImageDrawable(null);
            ((E) this.v).aa.setImageDrawable(null);
            super.C();
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public void D() {
        super.D();
        this.v.a(37, (Object) null);
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        super.b(recyclerData);
        this.v.a(37, (Object) this.w);
        ViewDataBinding viewDataBinding = this.v;
        if (viewDataBinding != null) {
            E e2 = (E) viewDataBinding;
            c cVar = new c(this, recyclerData);
            ((E) this.v).U.setOnClickListener(cVar);
            ((E) this.v).V.setOnClickListener(cVar);
            a((AppInfoItem) recyclerData, (E) this.v);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.databinding.ItemAppdetailAppInfoBinding");
    }

    public final void c(E e2, AppInfoItem appInfoItem) {
        a(this, e2, true, appInfoItem.isDualInlineApp(), false, false, false, 28, null);
        MaterialButton materialButton = e2.U;
        j.a((Object) materialButton, "btnAppDetailInstallButton");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        materialButton.setText(context.getResources().getString(R.string.failed_download));
    }

    public final void d(E e2) {
        a(this, e2, false, false, false, false, true, 15, null);
        LocalAwareTextView localAwareTextView = e2.D;
        j.a((Object) localAwareTextView, "appDownloadState");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        localAwareTextView.setText(context.getResources().getString(R.string.pause));
    }

    public final void e(E e2) {
        a(this, e2, false, false, false, false, true, 15, null);
        LocalAwareTextView localAwareTextView = e2.D;
        j.a((Object) localAwareTextView, "appDownloadState");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        localAwareTextView.setText(context.getResources().getString(R.string.waiting_for_network));
    }

    public final void f(E e2) {
        a(this, e2, false, false, false, false, true, 15, null);
        ProgressBar progressBar = e2.C;
        j.a((Object) progressBar, "appDownloadProgressBar");
        progressBar.setProgress(0);
        LocalAwareTextView localAwareTextView = e2.D;
        j.a((Object) localAwareTextView, "appDownloadState");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        localAwareTextView.setText(context.getResources().getString(R.string.download_preparing));
    }

    public final void g(E e2) {
        a(this, e2, false, false, false, false, false, 31, null);
    }

    public final void h(E e2, AppInfoItem appInfoItem) {
        if (j.a((Object) appInfoItem.isUnInstallable(), (Object) false)) {
            a(this, e2, true, false, false, false, false, 30, null);
            MaterialButton materialButton = e2.U;
            j.a((Object) materialButton, "btnAppDetailInstallButton");
            View view = this.f891b;
            j.a((Object) view, "itemView");
            Context context = view.getContext();
            j.a((Object) context, "itemView.context");
            materialButton.setText(context.getResources().getString(R.string.update));
            return;
        }
        a(this, e2, false, false, true, true, false, 19, null);
        MaterialButton materialButton2 = e2.V;
        j.a((Object) materialButton2, "btnAppDetailPrimary");
        View view2 = this.f891b;
        j.a((Object) view2, "itemView");
        Context context2 = view2.getContext();
        j.a((Object) context2, "itemView.context");
        materialButton2.setText(context2.getResources().getString(R.string.update));
    }

    public final void a(AppInfoItem appInfoItem, E e2) {
        h hVar;
        a(e2);
        switch (b.f6242b[appInfoItem.getGetAppStateForInitializeView().ordinal()]) {
            case 1:
                g(e2);
                hVar = h.f14579a;
                break;
            case 2:
                g(e2, appInfoItem);
                hVar = h.f14579a;
                break;
            case 3:
                h(e2, appInfoItem);
                hVar = h.f14579a;
                break;
            case 4:
                e(e2);
                hVar = h.f14579a;
                break;
            case 5:
                d(e2);
                hVar = h.f14579a;
                break;
            case 6:
                e(e2, appInfoItem);
                hVar = h.f14579a;
                break;
            case 7:
                b(e2, appInfoItem);
                hVar = h.f14579a;
                break;
            case 8:
                a(e2, appInfoItem);
                hVar = h.f14579a;
                break;
            case 9:
                f(e2);
                hVar = h.f14579a;
                break;
            case 10:
            case 11:
                b(e2);
                hVar = h.f14579a;
                break;
            case 12:
                c(e2, appInfoItem);
                hVar = h.f14579a;
                break;
            case 13:
                d(e2, appInfoItem);
                hVar = h.f14579a;
                break;
            case 14:
                f(e2, appInfoItem);
                hVar = h.f14579a;
                break;
            case 15:
                c(e2);
                hVar = h.f14579a;
                break;
            case 16:
                a.f4699b.a(new Throwable("AppDetail malicious app"));
                hVar = h.f14579a;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        c.a(hVar);
    }

    public final void g(E e2, AppInfoItem appInfoItem) {
        a(this, e2, true, appInfoItem.isDualInlineApp(), false, false, false, 28, null);
        MaterialButton materialButton = e2.U;
        j.a((Object) materialButton, "btnAppDetailInstallButton");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        materialButton.setText(a(context, appInfoItem));
    }

    public final void c(E e2) {
        a(this, e2, false, false, false, false, true, 15, null);
        LocalAwareTextView localAwareTextView = e2.D;
        j.a((Object) localAwareTextView, "appDownloadState");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        localAwareTextView.setText(context.getResources().getString(R.string.download_in_queue));
    }

    public final void d(E e2, AppInfoItem appInfoItem) {
        a(this, e2, true, appInfoItem.isDualInlineApp(), false, false, false, 28, null);
        MaterialButton materialButton = e2.U;
        j.a((Object) materialButton, "btnAppDetailInstallButton");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        materialButton.setText(context.getResources().getString(R.string.install));
    }

    public final void e(E e2, AppInfoItem appInfoItem) {
        a(this, e2, true, appInfoItem.isDualInlineApp(), false, false, false, 28, null);
        MaterialButton materialButton = e2.U;
        j.a((Object) materialButton, "btnAppDetailInstallButton");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        materialButton.setText(context.getResources().getString(R.string.not_compatible));
        MaterialButton materialButton2 = e2.U;
        j.a((Object) materialButton2, "btnAppDetailInstallButton");
        materialButton2.setEnabled(false);
    }

    public final void f(E e2, AppInfoItem appInfoItem) {
        if (j.a((Object) appInfoItem.isUnInstallable(), (Object) false)) {
            a(this, e2, true, false, false, false, false, 30, null);
            MaterialButton materialButton = e2.U;
            j.a((Object) materialButton, "btnAppDetailInstallButton");
            View view = this.f891b;
            j.a((Object) view, "itemView");
            Context context = view.getContext();
            j.a((Object) context, "itemView.context");
            materialButton.setText(context.getResources().getString(R.string.run));
            return;
        }
        a(this, e2, false, false, true, true, false, 19, null);
        MaterialButton materialButton2 = e2.V;
        j.a((Object) materialButton2, "btnAppDetailPrimary");
        View view2 = this.f891b;
        j.a((Object) view2, "itemView");
        Context context2 = view2.getContext();
        j.a((Object) context2, "itemView.context");
        materialButton2.setText(context2.getResources().getString(R.string.run));
    }

    public final void b(E e2, AppInfoItem appInfoItem) {
        a(this, e2, true, appInfoItem.isDualInlineApp(), false, false, false, 28, null);
        MaterialButton materialButton = e2.U;
        j.a((Object) materialButton, "btnAppDetailInstallButton");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        materialButton.setText(context.getResources().getString(R.string.failed_download));
    }

    public final void b(E e2) {
        a(this, e2, false, false, false, false, true, 15, null);
        LocalAwareTextView localAwareTextView = e2.D;
        j.a((Object) localAwareTextView, "appDownloadState");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        localAwareTextView.setText(context.getResources().getString(R.string.download_checking));
    }

    public final void a(E e2) {
        MaterialButton materialButton = e2.V;
        j.a((Object) materialButton, "btnAppDetailPrimary");
        Drawable background = materialButton.getBackground();
        MaterialButton materialButton2 = e2.W;
        j.a((Object) materialButton2, "btnAppDetailUninstall");
        Drawable background2 = materialButton2.getBackground();
        MaterialButton materialButton3 = e2.U;
        j.a((Object) materialButton3, "btnAppDetailInstallButton");
        Drawable background3 = materialButton3.getBackground();
        MaterialButton materialButton4 = e2.V;
        j.a((Object) materialButton4, "btnAppDetailPrimary");
        materialButton4.setBackground(null);
        MaterialButton materialButton5 = e2.W;
        j.a((Object) materialButton5, "btnAppDetailUninstall");
        materialButton5.setBackground(null);
        MaterialButton materialButton6 = e2.U;
        j.a((Object) materialButton6, "btnAppDetailInstallButton");
        materialButton6.setBackground(null);
        MaterialButton materialButton7 = e2.V;
        j.a((Object) materialButton7, "btnAppDetailPrimary");
        materialButton7.setBackground(background);
        MaterialButton materialButton8 = e2.W;
        j.a((Object) materialButton8, "btnAppDetailUninstall");
        materialButton8.setBackground(background2);
        MaterialButton materialButton9 = e2.U;
        j.a((Object) materialButton9, "btnAppDetailInstallButton");
        materialButton9.setBackground(background3);
    }

    @SuppressLint({"StringFormatMatches"})
    public final void a(E e2, AppInfoItem appInfoItem) {
        a(this, e2, false, false, false, false, true, 15, null);
        DownloaderProgressInfo progressInfo = appInfoItem.getProgressInfo();
        int progress = progressInfo != null ? progressInfo.getProgress() : 0;
        ProgressBar progressBar = e2.C;
        j.a((Object) progressBar, "appDownloadProgressBar");
        progressBar.setProgress(progress == 0 ? progress : Math.max(progress, 4));
        LocalAwareTextView localAwareTextView = e2.D;
        j.a((Object) localAwareTextView, "appDownloadState");
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        localAwareTextView.setText(context.getResources().getString(R.string.downloading_percentage, new Object[]{Integer.valueOf(progress)}));
    }

    public static /* synthetic */ void a(d dVar, E e2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, Object obj) {
        boolean z6 = false;
        boolean z7 = (i2 & 1) != 0 ? false : z;
        boolean z8 = (i2 & 2) != 0 ? false : z2;
        boolean z9 = (i2 & 4) != 0 ? false : z3;
        boolean z10 = (i2 & 8) != 0 ? false : z4;
        if ((i2 & 16) == 0) {
            z6 = z5;
        }
        dVar.a(e2, z7, z8, z9, z10, z6);
    }

    public final void a(E e2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        if (z) {
            MaterialButton materialButton = e2.U;
            j.a((Object) materialButton, "btnAppDetailInstallButton");
            l.c(materialButton);
        } else {
            MaterialButton materialButton2 = e2.U;
            j.a((Object) materialButton2, "btnAppDetailInstallButton");
            l.a(materialButton2);
        }
        if (z2) {
            MaterialButton materialButton3 = e2.T;
            j.a((Object) materialButton3, "btnAppDetailInlineApp");
            l.c(materialButton3);
        } else {
            MaterialButton materialButton4 = e2.T;
            j.a((Object) materialButton4, "btnAppDetailInlineApp");
            l.a(materialButton4);
        }
        if (z3) {
            MaterialButton materialButton5 = e2.W;
            j.a((Object) materialButton5, "btnAppDetailUninstall");
            l.c(materialButton5);
        } else {
            MaterialButton materialButton6 = e2.W;
            j.a((Object) materialButton6, "btnAppDetailUninstall");
            l.b(materialButton6);
        }
        if (z4) {
            MaterialButton materialButton7 = e2.V;
            j.a((Object) materialButton7, "btnAppDetailPrimary");
            l.c(materialButton7);
        } else {
            MaterialButton materialButton8 = e2.V;
            j.a((Object) materialButton8, "btnAppDetailPrimary");
            l.b(materialButton8);
        }
        if (z5) {
            Group group = e2.B;
            j.a((Object) group, "appDetailDownloadGroup");
            l.c(group);
            return;
        }
        Group group2 = e2.B;
        j.a((Object) group2, "appDetailDownloadGroup");
        l.a(group2);
    }

    public final String a(Context context, AppInfoItem appInfoItem) {
        if (appInfoItem.isInlineOnly()) {
            String string = context.getString(R.string.run_inline);
            j.a((Object) string, "context.getString(R.string.run_inline)");
            return string;
        } else if (appInfoItem.getPackageId() == -1) {
            String string2 = context.getString(R.string.not_compatible);
            j.a((Object) string2, "context.getString(R.string.not_compatible)");
            return string2;
        } else if (appInfoItem.getIncompatible()) {
            String string3 = context.getString(R.string.not_compatible_with_device);
            j.a((Object) string3, "context.getString(R.stri…t_compatible_with_device)");
            return string3;
        } else if (appInfoItem.getCanBeInstalled()) {
            String string4 = context.getString(R.string.install);
            j.a((Object) string4, "context.getString(R.string.install)");
            return string4;
        } else {
            String priceString = appInfoItem.getPrices().getPriceString();
            if (priceString != null) {
                return priceString;
            }
            n nVar = n.f14575a;
            Locale locale = Locale.getDefault();
            j.a((Object) locale, "Locale.getDefault()");
            String string5 = context.getString(R.string.price_placeholder);
            j.a((Object) string5, "context.getString(R.string.price_placeholder)");
            Object[] objArr = {Integer.valueOf(appInfoItem.getPrice() / 10)};
            String format = String.format(locale, string5, Arrays.copyOf(objArr, objArr.length));
            j.a((Object) format, "java.lang.String.format(locale, format, *args)");
            return format;
        }
    }
}
