.class public final Lc/c/a/l/r;
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

    iput-object p1, p0, Lc/c/a/l/r;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    iput-object p2, p0, Lc/c/a/l/r;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    iput-object p3, p0, Lc/c/a/l/r;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

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

    if-eqz p1, :cond_2

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/player/view/PlaybackState;

    .line 2
    iget-object v0, p0, Lc/c/a/l/r;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v1, Lc/c/a/l/k;->buttonPlayPause:I

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/player/view/PlayPauseControl;

    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/player/view/PlayPauseControl;->setState(Lcom/farsitel/bazaar/player/view/PlaybackState;)V

    .line 3
    iget-object v0, p0, Lc/c/a/l/r;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v1, Lc/c/a/l/k;->buttonInfoControl:I

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/player/view/InfoControl;

    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/player/view/InfoControl;->setState(Lcom/farsitel/bazaar/player/view/PlaybackState;)V

    .line 4
    iget-object v0, p0, Lc/c/a/l/r;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/farsitel/bazaar/player/view/PlaybackState;)V

    .line 5
    iget-object v0, p0, Lc/c/a/l/r;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v1, Lc/c/a/l/k;->progressBar:I

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;

    const-string v1, "progressBar"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/farsitel/bazaar/player/view/PlaybackState;->LOADING:Lcom/farsitel/bazaar/player/view/PlaybackState;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 6
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lc/c/a/l/r;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/player/view/PlaybackState;->f()Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method
