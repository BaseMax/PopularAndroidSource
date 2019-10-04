.class public final Lc/c/a/n/j/k/a/b;
.super Lc/c/a/n/c/d/n;
.source "VideoActionsViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/n<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# instance fields
.field public final v:I

.field public final w:I

.field public final x:Lc/c/a/f/bc;

.field public final y:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;


# direct methods
.method public constructor <init>(Lc/c/a/f/bc;Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;)V
    .locals 1

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoInfoClickListener"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/j/k/a/b;->x:Lc/c/a/f/bc;

    iput-object p2, p0, Lc/c/a/n/j/k/a/b;->y:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    const/16 p1, 0x24

    .line 2
    invoke-static {p1}, Lc/c/a/d/b/i;->a(I)I

    move-result p1

    iput p1, p0, Lc/c/a/n/j/k/a/b;->v:I

    const/16 p1, 0x10

    .line 3
    invoke-static {p1}, Lc/c/a/d/b/i;->a(I)I

    move-result p1

    iput p1, p0, Lc/c/a/n/j/k/a/b;->w:I

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/j/k/a/b;Lc/c/a/f/bc;ZZZZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x2

    if-eqz p2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    .line 20
    invoke-virtual/range {v1 .. v6}, Lc/c/a/n/j/k/a/b;->a(Lc/c/a/f/bc;ZZZZ)V

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/f/bc;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 18
    invoke-static/range {v0 .. v7}, Lc/c/a/n/j/k/a/b;->a(Lc/c/a/n/j/k/a/b;Lc/c/a/f/bc;ZZZZILjava/lang/Object;)V

    .line 19
    iget-object p1, p1, Lc/c/a/f/bc;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v0, "videoDownloadState"

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

.method public final a(Lc/c/a/f/bc;Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 14
    invoke-static/range {v0 .. v7}, Lc/c/a/n/j/k/a/b;->a(Lc/c/a/n/j/k/a/b;Lc/c/a/f/bc;ZZZZILjava/lang/Object;)V

    .line 15
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getProgressInfo()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->getProgress()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 16
    :goto_0
    iget-object v1, p1, Lc/c/a/f/bc;->B:Landroid/widget/ProgressBar;

    const-string v2, "videoDownloadProgressBar"

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

    .line 17
    iget-object p1, p1, Lc/c/a/f/bc;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v1, "videoDownloadState"

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

.method public final a(Lc/c/a/f/bc;ZZZZ)V
    .locals 2

    const-string v0, "videodetailPlayButton"

    if-eqz p2, :cond_0

    .line 21
    iget-object v1, p1, Lc/c/a/f/bc;->H:Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-static {v1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lc/c/a/f/bc;->H:Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-static {v1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :goto_0
    const-string v0, "videodetailDownloadButton"

    if-eqz p3, :cond_1

    .line 22
    iget-object v1, p1, Lc/c/a/f/bc;->F:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lc/c/a/f/bc;->F:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :goto_1
    const-string v0, "videodetailDownloadGroup"

    if-eqz p5, :cond_2

    .line 23
    iget-object v1, p1, Lc/c/a/f/bc;->G:Landroidx/constraintlayout/widget/Group;

    invoke-static {v1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lc/c/a/f/bc;->G:Landroidx/constraintlayout/widget/Group;

    invoke-static {v1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :goto_2
    const-string v0, "videodetailPurchaseButton"

    if-eqz p4, :cond_3

    .line 24
    iget-object p4, p1, Lc/c/a/f/bc;->I:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p4, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_3

    :cond_3
    iget-object p4, p1, Lc/c/a/f/bc;->I:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p4, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :goto_3
    const/4 p4, 0x0

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 25
    iget-object p1, p1, Lc/c/a/f/bc;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget p2, p0, Lc/c/a/n/j/k/a/b;->w:I

    invoke-virtual {p1, p2, p4, p2, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    :cond_4
    if-nez p5, :cond_5

    .line 26
    iget-object p1, p1, Lc/c/a/f/bc;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget p2, p0, Lc/c/a/n/j/k/a/b;->v:I

    invoke-virtual {p1, p2, p4, p2, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_5
    :goto_4
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;Lc/c/a/f/bc;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getVideoState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lc/c/a/n/j/k/a/a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2
    :goto_0
    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p2}, Lc/c/a/n/j/k/a/b;->e(Lc/c/a/f/bc;)V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0, p2}, Lc/c/a/n/j/k/a/b;->d(Lc/c/a/f/bc;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 4
    :pswitch_2
    invoke-virtual {p0, p2}, Lc/c/a/n/j/k/a/b;->a(Lc/c/a/f/bc;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 5
    :pswitch_3
    invoke-virtual {p0, p2}, Lc/c/a/n/j/k/a/b;->h(Lc/c/a/f/bc;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 6
    :pswitch_4
    invoke-virtual {p0, p2, p1}, Lc/c/a/n/j/k/a/b;->a(Lc/c/a/f/bc;Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 7
    :pswitch_5
    invoke-virtual {p0, p2}, Lc/c/a/n/j/k/a/b;->c(Lc/c/a/f/bc;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 8
    :pswitch_6
    invoke-virtual {p0, p2}, Lc/c/a/n/j/k/a/b;->b(Lc/c/a/f/bc;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 9
    :pswitch_7
    invoke-virtual {p0, p2}, Lc/c/a/n/j/k/a/b;->g(Lc/c/a/f/bc;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 10
    :pswitch_8
    invoke-virtual {p0, p2}, Lc/c/a/n/j/k/a/b;->f(Lc/c/a/f/bc;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 11
    :pswitch_9
    invoke-virtual {p0, p2, p1}, Lc/c/a/n/j/k/a/b;->b(Lc/c/a/f/bc;Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 12
    :pswitch_a
    invoke-virtual {p0, p2}, Lc/c/a/n/j/k/a/b;->i(Lc/c/a/f/bc;)V

    sget-object p1, Lh/h;->a:Lh/h;

    .line 13
    :goto_1
    invoke-static {p1}, Lc/c/a/c/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lc/c/a/f/bc;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 11
    invoke-static/range {v0 .. v7}, Lc/c/a/n/j/k/a/b;->a(Lc/c/a/n/j/k/a/b;Lc/c/a/f/bc;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public final b(Lc/c/a/f/bc;Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 9

    .line 5
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->isFree()Z

    move-result v2

    .line 6
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->isFree()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getDownloadable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->isFree()Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 8
    invoke-static/range {v0 .. v7}, Lc/c/a/n/j/k/a/b;->a(Lc/c/a/n/j/k/a/b;Lc/c/a/f/bc;ZZZZILjava/lang/Object;)V

    .line 9
    iget-object v0, p1, Lc/c/a/f/bc;->I:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "videodetailPurchaseButton"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v1

    const-string v2, "root"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "root.context"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getPrice()Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v2

    :goto_1
    const/4 v3, 0x4

    invoke-static {v1, p2, v8, v3, v2}, Lc/c/a/c/g/b;->a(Landroid/content/Context;Ljava/lang/Long;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p1, Lc/c/a/f/bc;->F:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "videodetailDownloadButton"

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

    const v0, 0x7f100086

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
    iget-object v0, p0, Lc/c/a/n/j/k/a/b;->x:Lc/c/a/f/bc;

    iget-object v1, p0, Lc/c/a/n/j/k/a/b;->y:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 2
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    iget-object v0, p0, Lc/c/a/n/j/k/a/b;->x:Lc/c/a/f/bc;

    invoke-virtual {p0, p1, v0}, Lc/c/a/n/j/k/a/b;->a(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;Lc/c/a/f/bc;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lc/c/a/f/bc;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v7}, Lc/c/a/n/j/k/a/b;->a(Lc/c/a/n/j/k/a/b;Lc/c/a/f/bc;ZZZZILjava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lc/c/a/f/bc;->F:Lcom/google/android/material/button/MaterialButton;

    const-string v0, "videodetailDownloadButton"

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

    const v1, 0x7f1000d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d(Lc/c/a/f/bc;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v7}, Lc/c/a/n/j/k/a/b;->a(Lc/c/a/n/j/k/a/b;Lc/c/a/f/bc;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public final e(Lc/c/a/f/bc;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v7}, Lc/c/a/n/j/k/a/b;->a(Lc/c/a/n/j/k/a/b;Lc/c/a/f/bc;ZZZZILjava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lc/c/a/f/bc;->B:Landroid/widget/ProgressBar;

    const-string v1, "videoDownloadProgressBar"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    iget-object p1, p1, Lc/c/a/f/bc;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v0, "videoDownloadState"

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

.method public final f(Lc/c/a/f/bc;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v7}, Lc/c/a/n/j/k/a/b;->a(Lc/c/a/n/j/k/a/b;Lc/c/a/f/bc;ZZZZILjava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lc/c/a/f/bc;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v0, "videoDownloadState"

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

.method public final g(Lc/c/a/f/bc;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v7}, Lc/c/a/n/j/k/a/b;->a(Lc/c/a/n/j/k/a/b;Lc/c/a/f/bc;ZZZZILjava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lc/c/a/f/bc;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v0, "videoDownloadState"

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

.method public final h(Lc/c/a/f/bc;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v7}, Lc/c/a/n/j/k/a/b;->a(Lc/c/a/n/j/k/a/b;Lc/c/a/f/bc;ZZZZILjava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lc/c/a/f/bc;->B:Landroid/widget/ProgressBar;

    const-string v1, "videoDownloadProgressBar"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    iget-object p1, p1, Lc/c/a/f/bc;->C:Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v0, "videoDownloadState"

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

.method public final i(Lc/c/a/f/bc;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v7}, Lc/c/a/n/j/k/a/b;->a(Lc/c/a/n/j/k/a/b;Lc/c/a/f/bc;ZZZZILjava/lang/Object;)V

    return-void
.end method
