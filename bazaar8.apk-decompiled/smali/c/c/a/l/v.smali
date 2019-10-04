.class public final Lc/c/a/l/v;
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

    iput-object p1, p0, Lc/c/a/l/v;->a:Lcom/farsitel/bazaar/player/CafePlayer;

    iput-object p2, p0, Lc/c/a/l/v;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    iput-object p3, p0, Lc/c/a/l/v;->c:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    iput-object p4, p0, Lc/c/a/l/v;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Lc/c/a/l/v;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v1, Lc/c/a/l/k;->buttonSubtitle:I

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "buttonSubtitle"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lc/c/a/l/v;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v1, Lc/c/a/l/k;->buttonSubtitleLive:I

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "buttonSubtitleLive"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lc/c/a/l/v;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v1, Lc/c/a/l/k;->exo_subtitles:I

    invoke-virtual {v0, v1}, Lb/b/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_0

    .line 5
    new-instance v8, Lc/e/a/a/k/a;

    .line 6
    iget-object v1, p0, Lc/c/a/l/v;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v2, Lc/c/a/l/h;->white:I

    invoke-static {v1, v2}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v2

    .line 7
    iget-object v1, p0, Lc/c/a/l/v;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v3, Lc/c/a/l/h;->background_dark_transparent:I

    invoke-static {v1, v3}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v3

    .line 8
    iget-object v1, p0, Lc/c/a/l/v;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v4, Lc/c/a/l/h;->transparent:I

    invoke-static {v1, v4}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x0

    .line 9
    iget-object v1, p0, Lc/c/a/l/v;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v6, Lc/c/a/l/h;->white:I

    invoke-static {v1, v6}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v6

    .line 10
    iget-object v1, p0, Lc/c/a/l/v;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v7, Lc/c/a/l/j;->regular:I

    invoke-static {v1, v7}, Lb/i/b/a/h;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v7, 0x0

    .line 11
    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    move-object v1, v8

    .line 12
    invoke-direct/range {v1 .. v7}, Lc/e/a/a/k/a;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 13
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lc/e/a/a/k/a;)V

    .line 14
    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;

    invoke-direct {v0, p1, p0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1;-><init>(Ljava/util/List;Lc/c/a/l/v;)V

    .line 15
    iget-object p1, p0, Lc/c/a/l/v;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v1, Lc/c/a/l/k;->buttonSubtitle:I

    invoke-virtual {p1, v1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v1, Lc/c/a/l/A;

    invoke-direct {v1, v0}, Lc/c/a/l/A;-><init>(Lh/f/a/b;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lc/c/a/l/v;->b:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    sget v1, Lc/c/a/l/k;->buttonSubtitleLive:I

    invoke-virtual {p1, v1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v1, Lc/c/a/l/A;

    invoke-direct {v1, v0}, Lc/c/a/l/A;-><init>(Lh/f/a/b;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
