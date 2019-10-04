.class public final Lc/c/a/n/b/d/d;
.super Lc/c/a/n/b/v;
.source "AppInfoViewHolder.kt"


# instance fields
.field public final v:Landroidx/databinding/ViewDataBinding;

.field public final w:Lc/c/a/n/b/d/a;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/b/d/a;)V
    .locals 1

    const-string v0, "viewDataBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfoCommunicator"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/b/v;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/b/d/d;->v:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lc/c/a/n/b/d/d;->w:Lc/c/a/n/b/d/a;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/b/d/d;)Lc/c/a/n/b/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/b/d/d;->w:Lc/c/a/n/b/d/a;

    return-object p0
.end method

.method public static synthetic a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v4, p7, 0x8

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    move v4, p5

    :goto_3
    and-int/lit8 v5, p7, 0x10

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v1, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move p4, v0

    move p5, v2

    move p6, v3

    move p7, v4

    move p8, v1

    .line 33
    invoke-virtual/range {p2 .. p8}, Lc/c/a/n/b/d/d;->a(Lc/c/a/f/E;ZZZZZ)V

    return-void
.end method


# virtual methods
.method public C()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/d/d;->v:Landroidx/databinding/ViewDataBinding;

    instance-of v1, v0, Lc/c/a/f/E;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lc/c/a/f/E;

    iget-object v0, v0, Lc/c/a/f/E;->U:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lc/c/a/n/b/d/d;->v:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lc/c/a/f/E;

    iget-object v0, v0, Lc/c/a/f/E;->V:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget-object v0, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    iget-object v2, p0, Lc/c/a/n/b/d/d;->v:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lc/c/a/f/E;

    iget-object v2, v2, Lc/c/a/f/E;->aa:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "viewDataBinding.ivAppDetailAppIcon"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lc/c/a/d/g/a/i;->a(Landroid/widget/ImageView;)V

    .line 5
    sget-object v0, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    iget-object v2, p0, Lc/c/a/n/b/d/d;->v:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lc/c/a/f/E;

    iget-object v2, v2, Lc/c/a/f/E;->Z:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "viewDataBinding.ivAppDetailAppCover"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lc/c/a/d/g/a/i;->a(Landroid/widget/ImageView;)V

    .line 6
    iget-object v0, p0, Lc/c/a/n/b/d/d;->v:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lc/c/a/f/E;

    iget-object v0, v0, Lc/c/a/f/E;->Z:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lc/c/a/n/b/d/d;->v:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lc/c/a/f/E;

    iget-object v0, v0, Lc/c/a/f/E;->aa:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-super {p0}, Lc/c/a/n/c/d/n;->C()V

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public D()V
    .locals 3

    .line 1
    invoke-super {p0}, Lc/c/a/n/c/d/n;->D()V

    .line 2
    iget-object v0, p0, Lc/c/a/n/b/d/d;->v:Landroidx/databinding/ViewDataBinding;

    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)Ljava/lang/String;
    .locals 3

    .line 39
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isInlineOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x7f1001aa

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.run_inline)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 40
    :cond_0
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPackageId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const p2, 0x7f100130

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.not_compatible)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getIncompatible()Z

    move-result v0

    if-eqz v0, :cond_2

    const p2, 0x7f100131

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.stri\u2026t_compatible_with_device)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getCanBeInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    const p2, 0x7f1000fe

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.install)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPrices()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;->getPriceString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object p1, v0

    goto :goto_0

    :cond_4
    sget-object v0, Lh/f/b/n;->a:Lh/f/b/n;

    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Locale.getDefault()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f100185

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "context.getString(R.string.price_placeholder)"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 46
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPrice()I

    move-result p2

    div-int/lit8 p2, p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    .line 47
    array-length p2, v1

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final a(Lc/c/a/f/E;)V
    .locals 8

    .line 20
    iget-object v0, p1, Lc/c/a/f/E;->V:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "btnAppDetailPrimary"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 21
    iget-object v2, p1, Lc/c/a/f/E;->W:Lcom/google/android/material/button/MaterialButton;

    const-string v3, "btnAppDetailUninstall"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 22
    iget-object v4, p1, Lc/c/a/f/E;->U:Lcom/google/android/material/button/MaterialButton;

    const-string v5, "btnAppDetailInstallButton"

    invoke-static {v4, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 23
    iget-object v6, p1, Lc/c/a/f/E;->V:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v6, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/material/button/MaterialButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object v6, p1, Lc/c/a/f/E;->W:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v6, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/android/material/button/MaterialButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    iget-object v6, p1, Lc/c/a/f/E;->U:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v6, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/android/material/button/MaterialButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    iget-object v6, p1, Lc/c/a/f/E;->V:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v6, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/material/button/MaterialButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object v0, p1, Lc/c/a/f/E;->W:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 28
    iget-object p1, p1, Lc/c/a/f/E;->U:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/google/android/material/button/MaterialButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 29
    invoke-static/range {v0 .. v8}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    .line 30
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getProgressInfo()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->getProgress()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 31
    :goto_0
    iget-object v1, p1, Lc/c/a/f/E;->C:Landroid/widget/ProgressBar;

    const-string v2, "appDownloadProgressBar"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_1

    move v2, p2

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 32
    iget-object p1, p1, Lc/c/a/f/E;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v1, "appDownloadState"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "itemView.context"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10008c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Lc/c/a/f/E;ZZZZZ)V
    .locals 1

    const-string v0, "btnAppDetailInstallButton"

    if-eqz p2, :cond_0

    .line 34
    iget-object p2, p1, Lc/c/a/f/E;->U:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lc/c/a/f/E;->U:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :goto_0
    const-string p2, "btnAppDetailInlineApp"

    if-eqz p3, :cond_1

    .line 35
    iget-object p3, p1, Lc/c/a/f/E;->T:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p3, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object p3, p1, Lc/c/a/f/E;->T:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p3, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :goto_1
    const-string p2, "btnAppDetailUninstall"

    if-eqz p4, :cond_2

    .line 36
    iget-object p3, p1, Lc/c/a/f/E;->W:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p3, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object p3, p1, Lc/c/a/f/E;->W:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p3, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lc/c/a/d/b/l;->b(Landroid/view/View;)V

    :goto_2
    const-string p2, "btnAppDetailPrimary"

    if-eqz p5, :cond_3

    .line 37
    iget-object p3, p1, Lc/c/a/f/E;->V:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p3, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_3

    :cond_3
    iget-object p3, p1, Lc/c/a/f/E;->V:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p3, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lc/c/a/d/b/l;->b(Landroid/view/View;)V

    :goto_3
    const-string p2, "appDetailDownloadGroup"

    if-eqz p6, :cond_4

    .line 38
    iget-object p1, p1, Lc/c/a/f/E;->B:Landroidx/constraintlayout/widget/Group;

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_4

    :cond_4
    iget-object p1, p1, Lc/c/a/f/E;->B:Landroidx/constraintlayout/widget/Group;

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :goto_4
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;Lc/c/a/f/E;)V
    .locals 2

    .line 2
    invoke-virtual {p0, p2}, Lc/c/a/n/b/d/d;->a(Lc/c/a/f/E;)V

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getGetAppStateForInitializeView()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lc/c/a/n/b/d/b;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance p2, Ljava/lang/Throwable;

    const-string v0, "AppDetail malicious app"

    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p0, p2}, Lc/c/a/n/b/d/d;->c(Lc/c/a/f/E;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p0, p2, p1}, Lc/c/a/n/b/d/d;->f(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 7
    :pswitch_3
    invoke-virtual {p0, p2, p1}, Lc/c/a/n/b/d/d;->d(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 8
    :pswitch_4
    invoke-virtual {p0, p2, p1}, Lc/c/a/n/b/d/d;->c(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 9
    :pswitch_5
    invoke-virtual {p0, p2}, Lc/c/a/n/b/d/d;->b(Lc/c/a/f/E;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 10
    :pswitch_6
    invoke-virtual {p0, p2}, Lc/c/a/n/b/d/d;->f(Lc/c/a/f/E;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 11
    :pswitch_7
    invoke-virtual {p0, p2, p1}, Lc/c/a/n/b/d/d;->a(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 12
    :pswitch_8
    invoke-virtual {p0, p2, p1}, Lc/c/a/n/b/d/d;->b(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 13
    :pswitch_9
    invoke-virtual {p0, p2, p1}, Lc/c/a/n/b/d/d;->e(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 14
    :pswitch_a
    invoke-virtual {p0, p2}, Lc/c/a/n/b/d/d;->d(Lc/c/a/f/E;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 15
    :pswitch_b
    invoke-virtual {p0, p2}, Lc/c/a/n/b/d/d;->e(Lc/c/a/f/E;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 16
    :pswitch_c
    invoke-virtual {p0, p2, p1}, Lc/c/a/n/b/d/d;->h(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 17
    :pswitch_d
    invoke-virtual {p0, p2, p1}, Lc/c/a/n/b/d/d;->g(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 18
    :pswitch_e
    invoke-virtual {p0, p2}, Lc/c/a/n/b/d/d;->g(Lc/c/a/f/E;)V

    sget-object p1, Lh/h;->a:Lh/h;

    .line 19
    :goto_0
    invoke-static {p1}, Lc/c/a/c/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lc/c/a/f/E;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 12
    invoke-static/range {v0 .. v8}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    .line 13
    iget-object p1, p1, Lc/c/a/f/E;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v0, "appDownloadState"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 9

    .line 10
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isDualInlineApp()Z

    move-result v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    .line 11
    iget-object p1, p1, Lc/c/a/f/E;->U:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "btnAppDetailInstallButton"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "itemView.context"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1000d3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/d/n;->b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/b/d/d;->v:Landroidx/databinding/ViewDataBinding;

    iget-object v1, p0, Lc/c/a/n/b/d/d;->w:Lc/c/a/n/b/d/a;

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lc/c/a/n/b/d/d;->v:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    check-cast v0, Lc/c/a/f/E;

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    .line 5
    new-instance v1, Lc/c/a/n/b/d/c;

    invoke-direct {v1, p0, p1}, Lc/c/a/n/b/d/c;-><init>(Lc/c/a/n/b/d/d;Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    .line 6
    iget-object p1, p0, Lc/c/a/n/b/d/d;->v:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lc/c/a/f/E;

    iget-object p1, p1, Lc/c/a/f/E;->U:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lc/c/a/n/b/d/d;->v:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lc/c/a/f/E;

    iget-object p1, p1, Lc/c/a/f/E;->V:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lc/c/a/n/b/d/d;->v:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lc/c/a/f/E;

    invoke-virtual {p0, v0, p1}, Lc/c/a/n/b/d/d;->a(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;Lc/c/a/f/E;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.farsitel.bazaar.databinding.ItemAppdetailAppInfoBinding"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lc/c/a/f/E;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-static/range {v0 .. v8}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    .line 4
    iget-object p1, p1, Lc/c/a/f/E;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v0, "appDownloadState"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isDualInlineApp()Z

    move-result v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lc/c/a/f/E;->U:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "btnAppDetailInstallButton"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "itemView.context"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1000d3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d(Lc/c/a/f/E;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v8}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lc/c/a/f/E;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v0, "appDownloadState"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 9

    .line 3
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isDualInlineApp()Z

    move-result v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    .line 4
    iget-object p1, p1, Lc/c/a/f/E;->U:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "btnAppDetailInstallButton"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "itemView.context"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1000fe

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e(Lc/c/a/f/E;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v8}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lc/c/a/f/E;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v0, "appDownloadState"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 9

    .line 3
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isDualInlineApp()Z

    move-result v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    .line 4
    iget-object p2, p1, Lc/c/a/f/E;->U:Lcom/google/android/material/button/MaterialButton;

    const-string v0, "btnAppDetailInstallButton"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "itemView.context"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p1, Lc/c/a/f/E;->U:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final f(Lc/c/a/f/E;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v8}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lc/c/a/f/E;->C:Landroid/widget/ProgressBar;

    const-string v1, "appDownloadProgressBar"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    iget-object p1, p1, Lc/c/a/f/E;->D:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v0, "appDownloadState"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final f(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 12

    .line 4
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isUnInstallable()Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const v0, 0x7f1001a9

    const-string v1, "itemView.context"

    const-string v2, "itemView"

    if-eqz p2, :cond_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 5
    invoke-static/range {v3 .. v11}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    .line 6
    iget-object p1, p1, Lc/c/a/f/E;->U:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "btnAppDetailInstallButton"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    invoke-static {p2, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x13

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 7
    invoke-static/range {v3 .. v11}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    .line 8
    iget-object p1, p1, Lc/c/a/f/E;->V:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "btnAppDetailPrimary"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    invoke-static {p2, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final g(Lc/c/a/f/E;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v8}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    return-void
.end method

.method public final g(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 9

    .line 2
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isDualInlineApp()Z

    move-result v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    .line 3
    iget-object p1, p1, Lc/c/a/f/E;->U:Lcom/google/android/material/button/MaterialButton;

    const-string v0, "btnAppDetailInstallButton"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lc/c/a/n/b/d/d;->a(Landroid/content/Context;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final h(Lc/c/a/f/E;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isUnInstallable()Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const v0, 0x7f10020c

    const-string v1, "itemView.context"

    const-string v2, "itemView"

    if-eqz p2, :cond_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 2
    invoke-static/range {v3 .. v11}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    .line 3
    iget-object p1, p1, Lc/c/a/f/E;->U:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "btnAppDetailInstallButton"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    invoke-static {p2, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x13

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 4
    invoke-static/range {v3 .. v11}, Lc/c/a/n/b/d/d;->a(Lc/c/a/n/b/d/d;Lc/c/a/f/E;ZZZZZILjava/lang/Object;)V

    .line 5
    iget-object p1, p1, Lc/c/a/f/E;->V:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "btnAppDetailPrimary"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    invoke-static {p2, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
