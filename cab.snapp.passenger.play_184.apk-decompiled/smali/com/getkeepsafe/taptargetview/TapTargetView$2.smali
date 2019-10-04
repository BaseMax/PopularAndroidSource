.class final Lcom/getkeepsafe/taptargetview/TapTargetView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/taptargetview/TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/getkeepsafe/taptargetview/c;Lcom/getkeepsafe/taptargetview/TapTargetView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/getkeepsafe/taptargetview/TapTargetView;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 500
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->ae:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-static {p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->d(Lcom/getkeepsafe/taptargetview/TapTargetView;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 502
    :cond_0
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    .line 503
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v1, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->W:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v2, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->aa:F

    float-to-int v2, v2

    invoke-static {p1, v0, v1, v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(IIII)D

    move-result-wide v0

    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->S:F

    float-to-double v2, p1

    const/4 p1, 0x1

    const/4 v4, 0x0

    cmpg-double v5, v0, v2

    if-gtz v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v1, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v2, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->O:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v3, v3, Lcom/getkeepsafe/taptargetview/TapTargetView;->W:F

    float-to-int v3, v3

    iget-object v5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v5, v5, Lcom/getkeepsafe/taptargetview/TapTargetView;->aa:F

    float-to-int v5, v5

    invoke-static {v1, v2, v3, v5}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(IIII)D

    move-result-wide v1

    .line 506
    iget-object v3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v3, v3, Lcom/getkeepsafe/taptargetview/TapTargetView;->M:F

    float-to-double v5, v3

    cmpg-double v3, v1, v5

    if-gtz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 509
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-static {p1, v4}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(Lcom/getkeepsafe/taptargetview/TapTargetView;Z)Z

    .line 510
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->ae:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 512
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->ae:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onOuterCircleClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    return-void

    .line 513
    :cond_4
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-boolean p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->D:Z

    if-eqz p1, :cond_5

    .line 514
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-static {p1, v4}, Lcom/getkeepsafe/taptargetview/TapTargetView;->a(Lcom/getkeepsafe/taptargetview/TapTargetView;Z)Z

    .line 515
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->ae:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$2;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetCancel(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    :cond_5
    :goto_2
    return-void
.end method
