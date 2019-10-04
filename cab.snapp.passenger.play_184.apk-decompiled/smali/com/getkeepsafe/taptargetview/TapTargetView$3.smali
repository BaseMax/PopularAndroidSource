.class final Lcom/getkeepsafe/taptargetview/TapTargetView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 520
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$3;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 523
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$3;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->ae:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 525
    :cond_0
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$3;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->o:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$3;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v1, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->W:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$3;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v2, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->aa:F

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 526
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$3;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->ae:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$3;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetLongClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
