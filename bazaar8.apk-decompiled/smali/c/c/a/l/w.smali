.class public final Lc/c/a/l/w;
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

    iput-object p1, p0, Lc/c/a/l/w;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    iput-object p2, p0, Lc/c/a/l/w;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    iput-object p3, p0, Lc/c/a/l/w;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    check-cast p1, Lc/c/a/l/a/c;

    .line 2
    iget-object v0, p0, Lc/c/a/l/w;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget-object v1, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->SUBTITLE_CHANGED:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    invoke-virtual {p1}, Lc/c/a/l/a/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "subtitleName"

    invoke-static {v3, v2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lh/a/z;->a(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;Ljava/util/Map;)V

    .line 3
    invoke-virtual {p1}, Lc/c/a/l/a/c;->a()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lc/c/a/l/w;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v0, Lc/c/a/l/k;->buttonSubtitle:I

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v0, "buttonSubtitle"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lc/c/a/l/w;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v0, Lc/c/a/l/k;->buttonSubtitle:I

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Lc/c/a/l/w;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v1, Lc/c/a/l/h;->md_red_900:I

    invoke-static {v0, v1}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v0

    .line 7
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method
