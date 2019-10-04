.class final Lcom/getkeepsafe/taptargetview/TapTargetView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/taptargetview/TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/getkeepsafe/taptargetview/c;Lcom/getkeepsafe/taptargetview/TapTargetView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/getkeepsafe/taptargetview/c;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Lcom/getkeepsafe/taptargetview/TapTargetView;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/taptargetview/TapTargetView;Lcom/getkeepsafe/taptargetview/c;Landroid/view/ViewGroup;Landroid/content/Context;ZZ)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->f:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->a:Lcom/getkeepsafe/taptargetview/c;

    iput-object p3, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->c:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->d:Z

    iput-boolean p6, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 11

    .line 444
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->f:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-static {v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->b(Lcom/getkeepsafe/taptargetview/TapTargetView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->f:Lcom/getkeepsafe/taptargetview/TapTargetView;

    .line 1884
    invoke-virtual {v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->getWidth()I

    move-result v1

    iget v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->f:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->d:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lez v1, :cond_2

    .line 1889
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v4, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->v:Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->p:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    move v6, v1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->w:Landroid/text/StaticLayout;

    .line 1892
    iget-object v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->x:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 1893
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v4, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->x:Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->q:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    move v6, v1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1896
    iput-object v1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->y:Landroid/text/StaticLayout;

    .line 448
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->a:Lcom/getkeepsafe/taptargetview/c;

    new-instance v1, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;

    invoke-direct {v1, p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$12$1;-><init>(Lcom/getkeepsafe/taptargetview/TapTargetView$12;)V

    invoke-virtual {v0, v1}, Lcom/getkeepsafe/taptargetview/c;->onReady(Ljava/lang/Runnable;)V

    return-void
.end method
