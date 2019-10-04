.class public final Lc/c/a/n/c/c/a/a/a/b;
.super Ljava/lang/Object;
.source "AppListDownloadView.kt"


# instance fields
.field public a:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/view/View;

.field public final d:Landroid/widget/Button;

.field public final e:Landroid/view/View;

.field public final f:Landroid/widget/ProgressBar;

.field public final g:Landroid/view/View;

.field public final h:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/view/View;Landroid/widget/Button;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Landroid/view/View;",
            "Landroid/widget/Button;",
            "Landroid/view/View;",
            "Landroid/widget/ProgressBar;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "contextRef"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaryButton"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelDownload"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressBar"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lc/c/a/n/c/c/a/a/a/b;->c:Landroid/view/View;

    iput-object p3, p0, Lc/c/a/n/c/c/a/a/a/b;->d:Landroid/widget/Button;

    iput-object p4, p0, Lc/c/a/n/c/c/a/a/a/b;->e:Landroid/view/View;

    iput-object p5, p0, Lc/c/a/n/c/c/a/a/a/b;->f:Landroid/widget/ProgressBar;

    iput-object p6, p0, Lc/c/a/n/c/c/a/a/a/b;->g:Landroid/view/View;

    iput-object p7, p0, Lc/c/a/n/c/c/a/a/a/b;->h:Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Landroid/view/View;Landroid/widget/Button;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/view/View;Landroid/view/View;ILh/f/b/f;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 2
    invoke-direct/range {v1 .. v8}, Lc/c/a/n/c/c/a/a/a/b;-><init>(Ljava/lang/ref/WeakReference;Landroid/view/View;Landroid/widget/Button;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 14
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/n/c/c/a/a/a/b;->a(ZZZ)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 11
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 13
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 8
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 10
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getProgressInfo()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->getProgress()I

    move-result v1

    :cond_0
    const/4 p1, 0x4

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p0

    .line 2
    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->c:Landroid/view/View;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    .line 5
    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->d:Landroid/widget/Button;

    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    const v2, 0x7f100130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->d:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(ZZZ)V
    .locals 4

    .line 15
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->a:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getIapVisibility()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_1
    iget-object v3, p0, Lc/c/a/n/c/c/a/a/a/b;->a:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getNoDiscountPriceString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-nez v3, :cond_5

    if-nez p3, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz p1, :cond_6

    .line 17
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->d:Landroid/widget/Button;

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->d:Landroid/widget/Button;

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :goto_5
    if-eqz p2, :cond_7

    .line 18
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->e:Landroid/view/View;

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_6

    :cond_7
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->e:Landroid/view/View;

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :goto_6
    if-eqz p3, :cond_8

    .line 19
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->f:Landroid/widget/ProgressBar;

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_7

    :cond_8
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->f:Landroid/widget/ProgressBar;

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :goto_7
    if-eqz v0, :cond_9

    .line 20
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->g:Landroid/view/View;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_8

    :cond_9
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->g:Landroid/view/View;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :cond_a
    :goto_8
    if-eqz v1, :cond_b

    .line 21
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->h:Landroid/view/View;

    if-eqz p1, :cond_c

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_9

    :cond_b
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->h:Landroid/view/View;

    if-eqz p1, :cond_c

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :cond_c
    :goto_9
    return-void
.end method

.method public final b()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 4
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->d:Landroid/widget/Button;

    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f1000d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/b;->d:Landroid/widget/Button;

    const-string v2, "context"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getInstallButtonLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 2
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->d:Landroid/widget/Button;

    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f100112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/n/c/c/a/a/a/b;->a:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    return-void
.end method

.method public final d()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->d:Landroid/widget/Button;

    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f1000fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e()V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method

.method public final f()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->d:Landroid/widget/Button;

    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f1001a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final g()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/b;->d:Landroid/widget/Button;

    const v2, 0x7f100209

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method

.method public final i()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    return-void
.end method

.method public final j()V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public final k()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    sget-object v1, Lc/c/a/d/a/b;->a:Lc/c/a/d/a/b$a;

    iget-object v2, p0, Lc/c/a/n/c/c/a/a/a/b;->a:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getIapVisibility()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v0, v2}, Lc/c/a/d/a/b$a;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/c/a/a/a/b;->a(Lc/c/a/n/c/c/a/a/a/b;ZZZILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->d:Landroid/widget/Button;

    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    const v3, 0x7f10020c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->g:Landroid/view/View;

    if-eqz v0, :cond_2

    sget-object v1, Lc/c/a/d/a/b;->a:Lc/c/a/d/a/b$a;

    iget-object v3, p0, Lc/c/a/n/c/c/a/a/a/b;->a:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getIapVisibility()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_1
    invoke-virtual {v1, v0, v2}, Lc/c/a/d/a/b$a;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->a:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/b;->d:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3
    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/b;->c:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 4
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getGetEntityStateForInitializeView()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v1

    sget-object v2, Lc/c/a/n/c/c/a/a/a/a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lc/c/a/n/c/c/a/a/a/b;->g()V

    sget-object v0, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lc/c/a/n/c/c/a/a/a/b;->e()V

    sget-object v0, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 7
    :pswitch_2
    invoke-virtual {p0}, Lc/c/a/n/c/c/a/a/a/b;->f()V

    sget-object v0, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 8
    :pswitch_3
    invoke-virtual {p0}, Lc/c/a/n/c/c/a/a/a/b;->d()V

    sget-object v0, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 9
    :pswitch_4
    invoke-virtual {p0}, Lc/c/a/n/c/c/a/a/a/b;->c()V

    sget-object v0, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 10
    :pswitch_5
    invoke-virtual {p0}, Lc/c/a/n/c/c/a/a/a/b;->a()V

    sget-object v0, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 11
    :pswitch_6
    invoke-virtual {p0}, Lc/c/a/n/c/c/a/a/a/b;->j()V

    sget-object v0, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 12
    :pswitch_7
    invoke-virtual {p0, v0}, Lc/c/a/n/c/c/a/a/a/b;->a(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V

    sget-object v0, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 13
    :pswitch_8
    invoke-virtual {p0}, Lc/c/a/n/c/c/a/a/a/b;->b()V

    sget-object v0, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 14
    :pswitch_9
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/b;->a:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isEnabled()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lc/c/a/n/c/c/a/a/a/b;->a(Ljava/lang/Boolean;)V

    sget-object v0, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 15
    :pswitch_a
    invoke-virtual {p0}, Lc/c/a/n/c/c/a/a/a/b;->i()V

    sget-object v0, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 16
    :pswitch_b
    invoke-virtual {p0}, Lc/c/a/n/c/c/a/a/a/b;->h()V

    sget-object v0, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 17
    :pswitch_c
    invoke-virtual {p0}, Lc/c/a/n/c/c/a/a/a/b;->l()V

    sget-object v0, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 18
    :pswitch_d
    invoke-virtual {p0, v0}, Lc/c/a/n/c/c/a/a/a/b;->b(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V

    sget-object v0, Lh/h;->a:Lh/h;

    goto :goto_1

    .line 19
    :pswitch_e
    invoke-virtual {p0}, Lc/c/a/n/c/c/a/a/a/b;->k()V

    sget-object v0, Lh/h;->a:Lh/h;

    .line 20
    :goto_1
    invoke-static {v0}, Lc/c/a/c/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    nop

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
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
