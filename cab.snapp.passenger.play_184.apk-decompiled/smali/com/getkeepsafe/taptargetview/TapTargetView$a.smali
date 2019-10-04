.class public Lcom/getkeepsafe/taptargetview/TapTargetView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/taptargetview/TapTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOuterCircleClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 0

    return-void
.end method

.method public onTargetCancel(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->dismiss(Z)V

    return-void
.end method

.method public onTargetClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 1

    const/4 v0, 0x1

    .line 200
    invoke-virtual {p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->dismiss(Z)V

    return-void
.end method

.method public onTargetDismissed(Lcom/getkeepsafe/taptargetview/TapTargetView;Z)V
    .locals 0

    return-void
.end method

.method public onTargetLongClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 0

    .line 205
    invoke-virtual {p0, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    return-void
.end method
