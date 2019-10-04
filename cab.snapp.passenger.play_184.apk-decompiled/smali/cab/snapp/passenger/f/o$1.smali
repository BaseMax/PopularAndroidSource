.class final Lcab/snapp/passenger/f/o$1;
.super Lcom/getkeepsafe/taptargetview/TapTargetView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/f/o;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/f/o;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/f/o;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcab/snapp/passenger/f/o$1;->a:Lcab/snapp/passenger/f/o;

    invoke-direct {p0}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOuterCircleClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onOuterCircleClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    return-void
.end method

.method public final onTargetCancel(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetCancel(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    return-void
.end method

.method public final onTargetClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 54
    invoke-super {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    :cond_0
    return-void
.end method

.method public final onTargetDismissed(Lcom/getkeepsafe/taptargetview/TapTargetView;Z)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetDismissed(Lcom/getkeepsafe/taptargetview/TapTargetView;Z)V

    return-void
.end method

.method public final onTargetLongClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetLongClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    return-void
.end method
