.class Lcom/getkeepsafe/taptargetview/f;
.super Lcom/getkeepsafe/taptargetview/c;
.source "SourceFile"


# instance fields
.field final C:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 29
    invoke-direct {p0, p2, p3}, Lcom/getkeepsafe/taptargetview/c;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 33
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/f;->C:Landroid/view/View;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given null view to target"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onReady(Ljava/lang/Runnable;)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/f;->C:Landroid/view/View;

    new-instance v1, Lcom/getkeepsafe/taptargetview/f$1;

    invoke-direct {v1, p0, p1}, Lcom/getkeepsafe/taptargetview/f$1;-><init>(Lcom/getkeepsafe/taptargetview/f;Ljava/lang/Runnable;)V

    .line 2030
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1036
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1040
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 1041
    new-instance v2, Lcom/getkeepsafe/taptargetview/g$1;

    invoke-direct {v2, p1, v0, v1}, Lcom/getkeepsafe/taptargetview/g$1;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
