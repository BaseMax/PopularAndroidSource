.class public final Lc/c/a/l/u;
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
.field public final synthetic a:Lcom/farsitel/bazaar/player/CafePlayer;

.field public final synthetic b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

.field public final synthetic c:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

.field public final synthetic d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/player/CafePlayer;Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/l/u;->a:Lcom/farsitel/bazaar/player/CafePlayer;

    iput-object p2, p0, Lc/c/a/l/u;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    iput-object p3, p0, Lc/c/a/l/u;->c:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    iput-object p4, p0, Lc/c/a/l/u;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Lc/c/a/l/u;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v1, Lc/c/a/l/k;->buttonQualityPicker:I

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/player/view/InfoControl;

    const-string v1, "buttonQualityPicker"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lc/c/a/l/u;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v1, Lc/c/a/l/k;->buttonQualityPicker:I

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/player/view/InfoControl;

    new-instance v1, Lc/c/a/l/t;

    invoke-direct {v1, p1, p0}, Lc/c/a/l/t;-><init>(Ljava/util/List;Lc/c/a/l/u;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
