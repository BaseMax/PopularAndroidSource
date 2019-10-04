.class public final Lc/c/a/l/x;
.super Ljava/lang/Object;
.source "LiveData.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/player/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

.field public final synthetic b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

.field public final synthetic c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/l/x;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    iput-object p2, p0, Lc/c/a/l/x;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    iput-object p3, p0, Lc/c/a/l/x;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Lc/c/a/l/a/c;

    .line 2
    iget-object v0, p0, Lc/c/a/l/x;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v1, Lc/c/a/l/k;->buttonQualityPicker:I

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/player/view/InfoControl;

    invoke-virtual {p1}, Lc/c/a/l/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/player/view/InfoControl;->setText(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/c/a/l/x;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget-object v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->QUALITY_CHANGED:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    invoke-virtual {p1}, Lc/c/a/l/a/c;->b()Ljava/lang/String;

    move-result-object p1

    const-string v2, "quality"

    invoke-static {v2, p1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lh/a/z;->a(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
