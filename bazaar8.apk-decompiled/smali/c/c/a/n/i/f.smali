.class public final Lc/c/a/n/i/f;
.super Lc/c/a/d/f/l;
.source "BazaarForceUpdateDialogFragment.kt"

# interfaces
.implements Lc/c/a/d/f/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/d/f/l<",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;",
        "Lc/c/a/d/f/q;"
    }
.end annotation


# instance fields
.field public final sa:Ljava/lang/String;

.field public ta:Lc/c/a/n/y/a;

.field public ua:Lc/c/a/f/g;

.field public va:I

.field public wa:Z

.field public xa:Lc/c/a/d/f/q;

.field public ya:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/l;-><init>()V

    const-string v0, "BazaarForceUpdate"

    .line 2
    iput-object v0, p0, Lc/c/a/n/i/f;->sa:Ljava/lang/String;

    .line 3
    iput-object p0, p0, Lc/c/a/n/i/f;->xa:Lc/c/a/d/f/q;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/i/f;)Lc/c/a/n/y/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/i/f;->ta:Lc/c/a/n/y/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "bazaarForceUpdateViewModel"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(Lc/c/a/n/i/f;Lc/c/a/f/g;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 31
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/n/i/f;->a(Lc/c/a/f/g;ZZ)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/i/f;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/i/f;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/i/f;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/i/f;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/i/f;)Lc/c/a/f/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/i/f;->ua:Lc/c/a/f/g;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "dataBinding"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic c(Lc/c/a/n/i/f;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/i/f;->bb()V

    return-void
.end method

.method public static final synthetic d(Lc/c/a/n/i/f;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/i/f;->cb()V

    return-void
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lc/c/a/n/i/f;->ya:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/i/f;->sa:Ljava/lang/String;

    return-object v0
.end method

.method public Ta()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/i/f;->va:I

    return v0
.end method

.method public Ua()Lc/c/a/d/f/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/i/f;->xa:Lc/c/a/d/f/q;

    return-object v0
.end method

.method public Xa()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/i/f;->wa:Z

    return v0
.end method

.method public final Za()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/i/f;->ua:Lc/c/a/f/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lc/c/a/f/g;->F:Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lc/c/a/n/i/b;

    invoke-direct {v2, p0}, Lc/c/a/n/i/b;-><init>(Lc/c/a/n/i/f;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, v0, Lc/c/a/f/g;->H:Landroid/view/View;

    new-instance v1, Lc/c/a/n/i/c;

    invoke-direct {v1, p0}, Lc/c/a/n/i/c;-><init>(Lc/c/a/n/i/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string v0, "dataBinding"

    .line 4
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final _a()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Wa()Lb/r/F$b;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/y/a;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast v0, Lc/c/a/n/y/a;

    .line 4
    invoke-virtual {v0}, Lc/c/a/n/y/a;->j()V

    .line 5
    invoke-virtual {v0}, Lc/c/a/n/y/a;->i()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    .line 6
    new-instance v3, Lc/c/a/n/i/d;

    invoke-direct {v3, p0}, Lc/c/a/n/i/d;-><init>(Lc/c/a/n/i/f;)V

    .line 7
    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 8
    iput-object v0, p0, Lc/c/a/n/i/f;->ta:Lc/c/a/n/y/a;

    .line 9
    invoke-virtual {p0}, Lc/c/a/n/i/f;->ab()V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 3
    invoke-static {p1, p2, p3}, Lc/c/a/f/g;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/g;

    move-result-object p1

    const-string p2, "DialogForceUpdateBinding\u2026flater, container, false)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc/c/a/n/i/f;->ua:Lc/c/a/f/g;

    .line 4
    iget-object p1, p0, Lc/c/a/n/i/f;->ua:Lc/c/a/f/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p1

    const-string p2, "dataBinding.root"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "dataBinding"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0}, Lc/c/a/n/i/f;->_a()V

    .line 7
    invoke-virtual {p0}, Lc/c/a/n/i/f;->Za()V

    .line 8
    iget-object p1, p0, Lc/c/a/n/i/f;->ta:Lc/c/a/n/y/a;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/c/a/n/y/a;->f()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, p2}, Lc/c/a/n/i/f;->a(Lc/c/a/n/i/f;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "bazaarForceUpdateViewModel"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Lc/c/a/f/g;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 29
    invoke-static/range {v0 .. v5}, Lc/c/a/n/i/f;->a(Lc/c/a/n/i/f;Lc/c/a/f/g;ZZILjava/lang/Object;)V

    .line 30
    iget-object p1, p1, Lc/c/a/f/g;->C:Landroid/widget/TextView;

    const-string v0, "appDownloadState"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f100087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Lc/c/a/f/g;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 25
    invoke-static/range {v0 .. v5}, Lc/c/a/n/i/f;->a(Lc/c/a/n/i/f;Lc/c/a/f/g;ZZILjava/lang/Object;)V

    .line 26
    iget-object v0, p1, Lc/c/a/f/g;->C:Landroid/widget/TextView;

    const-string v1, "appDownloadState"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f10008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->getProgress()I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 28
    :goto_1
    iget-object p1, p1, Lc/c/a/f/g;->B:Landroid/widget/ProgressBar;

    const-string v0, "appDownloadProgressBar"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public final a(Lc/c/a/f/g;ZZ)V
    .locals 2

    const-string p1, "dataBinding.getBazaarButton"

    const/4 v0, 0x0

    const-string v1, "dataBinding"

    if-eqz p2, :cond_1

    .line 32
    iget-object p2, p0, Lc/c/a/n/i/f;->ua:Lc/c/a/f/g;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lc/c/a/f/g;->F:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p2, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p2, p0, Lc/c/a/n/i/f;->ua:Lc/c/a/f/g;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lc/c/a/f/g;->F:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p2, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lc/c/a/d/b/l;->b(Landroid/view/View;)V

    :goto_0
    const-string p1, "dataBinding.appDownloadGroup"

    if-eqz p3, :cond_3

    .line 33
    iget-object p2, p0, Lc/c/a/n/i/f;->ua:Lc/c/a/f/g;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lc/c/a/f/g;->A:Landroidx/constraintlayout/widget/Group;

    invoke-static {p2, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object p2, p0, Lc/c/a/n/i/f;->ua:Lc/c/a/f/g;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lc/c/a/f/g;->A:Landroidx/constraintlayout/widget/Group;

    invoke-static {p2, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_4
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_5
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lc/c/a/n/i/f;->ua:Lc/c/a/f/g;

    if-eqz v0, :cond_0

    .line 11
    sget-object v1, Lc/c/a/n/i/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    .line 12
    invoke-virtual {p0, v0}, Lc/c/a/n/i/f;->e(Lc/c/a/f/g;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 13
    :pswitch_0
    invoke-virtual {p0, v0}, Lc/c/a/n/i/f;->d(Lc/c/a/f/g;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 14
    :pswitch_1
    invoke-virtual {p0, v0}, Lc/c/a/n/i/f;->c(Lc/c/a/f/g;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 15
    :pswitch_2
    invoke-virtual {p0, v0}, Lc/c/a/n/i/f;->a(Lc/c/a/f/g;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 16
    :pswitch_3
    invoke-virtual {p0, v0}, Lc/c/a/n/i/f;->h(Lc/c/a/f/g;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 17
    :pswitch_4
    invoke-virtual {p0, v0, p2}, Lc/c/a/n/i/f;->a(Lc/c/a/f/g;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 18
    :pswitch_5
    invoke-virtual {p0, v0}, Lc/c/a/n/i/f;->b(Lc/c/a/f/g;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 19
    :pswitch_6
    invoke-virtual {p0, v0}, Lc/c/a/n/i/f;->f(Lc/c/a/f/g;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 20
    :pswitch_7
    invoke-virtual {p0, v0}, Lc/c/a/n/i/f;->g(Lc/c/a/f/g;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 21
    :pswitch_8
    invoke-virtual {p0, v0}, Lc/c/a/n/i/f;->e(Lc/c/a/f/g;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_0

    .line 22
    :pswitch_9
    invoke-virtual {p0, v0}, Lc/c/a/n/i/f;->i(Lc/c/a/f/g;)V

    sget-object p1, Lh/h;->a:Lh/h;

    .line 23
    :goto_0
    invoke-static {p1}, Lc/c/a/c/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string p1, "dataBinding"

    .line 24
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ab()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/i/f;->ta:Lc/c/a/n/y/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/y/a;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v1

    .line 3
    new-instance v2, Lc/c/a/n/i/e;

    invoke-direct {v2, p0}, Lc/c/a/n/i/e;-><init>(Lc/c/a/n/i/f;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-void

    :cond_0
    const-string v0, "bazaarForceUpdateViewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b(Lc/c/a/f/g;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-static/range {v0 .. v5}, Lc/c/a/n/i/f;->a(Lc/c/a/n/i/f;Lc/c/a/f/g;ZZILjava/lang/Object;)V

    .line 3
    iget-object p1, p1, Lc/c/a/f/g;->F:Lcom/google/android/material/button/MaterialButton;

    const-string v0, "getBazaarButton"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f1000d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final bb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/i/f;->ta:Lc/c/a/n/y/a;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lc/c/a/n/y/a;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lc/c/a/n/y/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/n/i/f;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lc/c/a/n/y/a;->l()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "bazaarForceUpdateViewModel"

    .line 5
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c(Lc/c/a/f/g;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-static/range {v0 .. v5}, Lc/c/a/n/i/f;->a(Lc/c/a/n/i/f;Lc/c/a/f/g;ZZILjava/lang/Object;)V

    .line 3
    iget-object p1, p1, Lc/c/a/f/g;->F:Lcom/google/android/material/button/MaterialButton;

    const-string v0, "getBazaarButton"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f1000d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public final cb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/i/f;->ta:Lc/c/a/n/y/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/y/a;->m()V

    return-void

    :cond_0
    const-string v0, "bazaarForceUpdateViewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d(Lc/c/a/f/g;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-static/range {v0 .. v5}, Lc/c/a/n/i/f;->a(Lc/c/a/n/i/f;Lc/c/a/f/g;ZZILjava/lang/Object;)V

    .line 3
    iget-object p1, p1, Lc/c/a/f/g;->F:Lcom/google/android/material/button/MaterialButton;

    const-string v0, "getBazaarButton"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f1000fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e(Lc/c/a/f/g;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lc/c/a/n/i/f;->a(Lc/c/a/n/i/f;Lc/c/a/f/g;ZZILjava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lc/c/a/f/g;->F:Lcom/google/android/material/button/MaterialButton;

    const-string v0, "getBazaarButton"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f10020c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final f(Lc/c/a/f/g;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lc/c/a/n/i/f;->a(Lc/c/a/n/i/f;Lc/c/a/f/g;ZZILjava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lc/c/a/f/g;->C:Landroid/widget/TextView;

    const-string v0, "appDownloadState"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f100160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final g(Lc/c/a/f/g;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lc/c/a/n/i/f;->a(Lc/c/a/n/i/f;Lc/c/a/f/g;ZZILjava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lc/c/a/f/g;->C:Landroid/widget/TextView;

    const-string v0, "appDownloadState"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f10022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final h(Lc/c/a/f/g;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lc/c/a/n/i/f;->a(Lc/c/a/n/i/f;Lc/c/a/f/g;ZZILjava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lc/c/a/f/g;->B:Landroid/widget/ProgressBar;

    const-string v1, "appDownloadProgressBar"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    iget-object p1, p1, Lc/c/a/f/g;->C:Landroid/widget/TextView;

    const-string v0, "appDownloadState"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f100089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final i(Lc/c/a/f/g;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lc/c/a/n/i/f;->a(Lc/c/a/n/i/f;Lc/c/a/f/g;ZZILjava/lang/Object;)V

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/d/f/l;->qa()V

    invoke-virtual {p0}, Lc/c/a/n/i/f;->Qa()V

    return-void
.end method
