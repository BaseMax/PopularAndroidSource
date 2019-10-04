.class public final Lcom/farsitel/bazaar/player/VideoPlayerActivity;
.super Ld/a/a/b;
.source "VideoPlayerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;
    }
.end annotation


# static fields
.field public static final u:Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;


# instance fields
.field public A:J

.field public B:Ljava/util/HashMap;

.field public v:Lcom/farsitel/bazaar/player/CafePlayer;

.field public w:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/LinearLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field public x:Lc/c/a/l/b/b;

.field public y:Lc/c/a/l/f;

.field public z:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->u:Lcom/farsitel/bazaar/player/VideoPlayerActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/a/a/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;)Lcom/farsitel/bazaar/player/CafePlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->v:Lcom/farsitel/bazaar/player/CafePlayer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "cafePlayer"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->A:J

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/farsitel/bazaar/player/view/PlaybackState;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Lcom/farsitel/bazaar/player/view/PlaybackState;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/player/VideoPlayerActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->A:J

    return-wide v0
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/b/a/m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "action"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v1, v0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->y:Lc/c/a/l/f;

    if-eqz v1, :cond_2

    .line 23
    sget-object v15, Lc/c/a/a/a;->c:Lc/c/a/a/a;

    .line 24
    new-instance v14, Lc/c/a/a/a/a;

    .line 25
    new-instance v13, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;

    .line 26
    invoke-virtual {v1}, Lc/c/a/l/f;->g()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {v1}, Lc/c/a/l/f;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v2, "params.rawUrl.toString()"

    invoke-static {v5, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Lc/c/a/l/f;->i()Z

    move-result v6

    .line 29
    iget-object v2, v0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->v:Lcom/farsitel/bazaar/player/CafePlayer;

    const/4 v7, 0x0

    const-string v8, "cafePlayer"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/farsitel/bazaar/player/CafePlayer;->l()J

    move-result-wide v9

    .line 30
    iget-object v2, v0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->v:Lcom/farsitel/bazaar/player/CafePlayer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/farsitel/bazaar/player/CafePlayer;->h()J

    move-result-wide v11

    .line 31
    invoke-virtual {v1}, Lc/c/a/l/f;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x0

    const/16 v17, 0x80

    const/16 v18, 0x0

    move-object v2, v13

    move-object/from16 v3, p1

    move-wide v7, v9

    move-wide v9, v11

    move-object v11, v1

    move-object/from16 v12, v16

    move-object v1, v13

    move-object/from16 v13, p2

    move-object/from16 v19, v14

    move/from16 v14, v17

    move-object v0, v15

    move-object/from16 v15, v18

    .line 32
    invoke-direct/range {v2 .. v15}, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent;-><init>(Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;ILh/f/b/f;)V

    .line 33
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/where/PlayerScreen;

    invoke-direct {v2}, Lcom/farsitel/bazaar/analytics/model/where/PlayerScreen;-><init>()V

    const-string v3, "user"

    move-object/from16 v4, v19

    .line 34
    invoke-direct {v4, v3, v1, v2}, Lc/c/a/a/a/a;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;)V

    .line 35
    invoke-virtual {v0, v4}, Lc/c/a/a/a;->a(Lc/c/a/a/a/a;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v8}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v7

    .line 37
    :cond_1
    invoke-static {v8}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v7

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/player/view/PlaybackState;)V
    .locals 3

    .line 5
    sget v0, Lc/c/a/l/k;->exoPlay:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "exoPlay"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 6
    sget v0, Lc/c/a/l/k;->exoPause:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v2, "exoPause"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 7
    sget-object v0, Lc/c/a/l/o;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    sget p1, Lc/c/a/l/k;->exoPlay:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_1
    sget p1, Lc/c/a/l/k;->exoPause:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_2
    sget p1, Lc/c/a/l/k;->exoPlay:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_0

    .line 11
    :cond_3
    sget p1, Lc/c/a/l/k;->exoPause:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;)V"
        }
    .end annotation

    .line 12
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v1, 0x3

    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(I)V

    return-void
.end method

.method public final a(Z)V
    .locals 5

    const-string v0, "window.decorView"

    const-string v1, "window"

    const/16 v2, 0x400

    const/16 v3, 0x800

    const/16 v4, 0x13

    if-eqz p1, :cond_1

    .line 13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1307

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 17
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_2

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/c/a/d/g/b;->b:Lc/c/a/d/g/b;

    invoke-virtual {v0, p1}, Lc/c/a/d/g/b;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lb/b/a/m;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public d(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->B:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->B:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->B:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lb/b/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->B:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public onBackPressed()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->w:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    const-string v2, "behavior"

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v3, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->w:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lb/b/a/m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "resources"

    invoke-static {v0, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->w:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c()I

    move-result v0

    if-eq v0, v3, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    invoke-super {p0}, Lb/a/c;->onBackPressed()V

    goto :goto_1

    .line 7
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->w:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(I)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_9
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Ld/a/a/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 3
    sget p1, Lc/c/a/l/l;->activity_video:I

    invoke-virtual {p0, p1}, Lb/b/a/m;->setContentView(I)V

    .line 4
    sget p1, Lc/c/a/l/k;->exo_progress:I

    invoke-virtual {p0, p1}, Lb/b/a/m;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    iput-object p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->z:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->z:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->z()Lc/e/a/a/m/p$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->a(Lc/e/a/a/m/p$a;)V

    .line 6
    :cond_0
    sget p1, Lc/c/a/l/k;->bottomSheetContainer:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const-string v0, "behavior"

    .line 7
    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(I)V

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->w:Ljava/lang/ref/WeakReference;

    .line 9
    sget v0, Lc/c/a/l/k;->list:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "list"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 10
    sget v0, Lc/c/a/l/k;->exoPlayerView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    const-string v1, "exoPlayerView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    .line 11
    sget-object v0, Lc/c/a/l/f;->b:Lc/c/a/l/f$a;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "intent"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lc/c/a/l/f$a;->a(Landroid/os/Bundle;)Lc/c/a/l/f;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->y:Lc/c/a/l/f;

    .line 12
    sget-object v0, Lcom/farsitel/bazaar/player/CafePlayer;->e:Lcom/farsitel/bazaar/player/CafePlayer$a;

    .line 13
    sget v2, Lc/c/a/l/k;->exoPlayerView:I

    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->y:Lc/c/a/l/f;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 15
    iget-object v4, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->x:Lc/c/a/l/b/b;

    if-eqz v4, :cond_2

    .line 16
    invoke-virtual {v0, p0, v2, v1, v4}, Lcom/farsitel/bazaar/player/CafePlayer$a;->a(Lb/b/a/m;Lcom/google/android/exoplayer2/ui/PlayerView;Lc/c/a/l/f;Lc/c/a/l/b/b;)Lcom/farsitel/bazaar/player/CafePlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->v:Lcom/farsitel/bazaar/player/CafePlayer;

    .line 17
    iget-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->v:Lcom/farsitel/bazaar/player/CafePlayer;

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v0}, Lcom/farsitel/bazaar/player/CafePlayer;->v()Li/a/ra;

    .line 19
    invoke-virtual {v0}, Lcom/farsitel/bazaar/player/CafePlayer;->k()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lc/c/a/l/q;

    invoke-direct {v2, p0, p0, p1}, Lc/c/a/l/q;-><init>(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 20
    invoke-virtual {v0}, Lcom/farsitel/bazaar/player/CafePlayer;->m()Landroidx/lifecycle/LiveData;

    move-result-object v1

    .line 21
    new-instance v2, Lc/c/a/l/r;

    invoke-direct {v2, p0, p0, p1}, Lc/c/a/l/r;-><init>(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 22
    invoke-virtual {v0}, Lcom/farsitel/bazaar/player/CafePlayer;->j()Landroidx/lifecycle/LiveData;

    move-result-object v1

    .line 23
    new-instance v2, Lc/c/a/l/s;

    invoke-direct {v2, p0, p0, p1}, Lc/c/a/l/s;-><init>(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 24
    invoke-virtual {v0}, Lcom/farsitel/bazaar/player/CafePlayer;->n()Landroidx/lifecycle/LiveData;

    move-result-object v1

    .line 25
    new-instance v2, Lc/c/a/l/u;

    invoke-direct {v2, v0, p0, p0, p1}, Lc/c/a/l/u;-><init>(Lcom/farsitel/bazaar/player/CafePlayer;Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 26
    invoke-virtual {v0}, Lcom/farsitel/bazaar/player/CafePlayer;->q()Landroidx/lifecycle/LiveData;

    move-result-object v1

    .line 27
    new-instance v2, Lc/c/a/l/v;

    invoke-direct {v2, v0, p0, p0, p1}, Lc/c/a/l/v;-><init>(Lcom/farsitel/bazaar/player/CafePlayer;Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 28
    invoke-virtual {v0}, Lcom/farsitel/bazaar/player/CafePlayer;->p()Landroidx/lifecycle/LiveData;

    move-result-object v1

    .line 29
    new-instance v2, Lc/c/a/l/w;

    invoke-direct {v2, p0, p0, p1}, Lc/c/a/l/w;-><init>(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 30
    invoke-virtual {v0}, Lcom/farsitel/bazaar/player/CafePlayer;->o()Landroidx/lifecycle/LiveData;

    move-result-object v1

    .line 31
    new-instance v2, Lc/c/a/l/x;

    invoke-direct {v2, p0, p0, p1}, Lc/c/a/l/x;-><init>(Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/farsitel/bazaar/player/VideoPlayerActivity;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 32
    sget p1, Lc/c/a/l/k;->buttonInfoControl:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/player/view/InfoControl;

    new-instance v1, Lc/c/a/l/y;

    invoke-direct {v1, v0}, Lc/c/a/l/y;-><init>(Lcom/farsitel/bazaar/player/CafePlayer;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    new-instance p1, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$playButtonClick$1;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$playButtonClick$1;-><init>(Lcom/farsitel/bazaar/player/VideoPlayerActivity;)V

    .line 34
    sget v0, Lc/c/a/l/k;->buttonPlayPause:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/player/view/PlayPauseControl;

    new-instance v1, Lc/c/a/l/z;

    invoke-direct {v1, p1}, Lc/c/a/l/z;-><init>(Lh/f/a/b;)V

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/player/view/PlayPauseControl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    sget v0, Lc/c/a/l/k;->exoPlay:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lc/c/a/l/z;

    invoke-direct {v1, p1}, Lc/c/a/l/z;-><init>(Lh/f/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    sget v0, Lc/c/a/l/k;->exoPause:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lc/c/a/l/z;

    invoke-direct {v1, p1}, Lc/c/a/l/z;-><init>(Lh/f/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    new-instance p1, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$fullScreenClick$1;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity$onCreate$fullScreenClick$1;-><init>(Lcom/farsitel/bazaar/player/VideoPlayerActivity;)V

    .line 38
    sget v0, Lc/c/a/l/k;->buttonFullScreen:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lc/c/a/l/z;

    invoke-direct {v1, p1}, Lc/c/a/l/z;-><init>(Lh/f/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    sget v0, Lc/c/a/l/k;->buttonFullScreenLive:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lc/c/a/l/z;

    invoke-direct {v1, p1}, Lc/c/a/l/z;-><init>(Lh/f/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {p0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->A()V

    return-void

    :cond_1
    const-string p1, "cafePlayer"

    .line 41
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string p1, "statsRepository"

    .line 42
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3

    .line 43
    :cond_3
    invoke-static {}, Lh/f/b/j;->a()V

    throw v3

    .line 44
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/l/k;->exoPlayerView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setControllerVisibilityListener(Lc/e/a/a/m/g$b;)V

    .line 2
    invoke-super {p0}, Lb/b/a/m;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->v:Lcom/farsitel/bazaar/player/CafePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/player/CafePlayer;->r()V

    goto :goto_0

    :cond_0
    const-string v0, "cafePlayer"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0}, Lb/o/a/i;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->v:Lcom/farsitel/bazaar/player/CafePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/player/CafePlayer;->t()V

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->A()V

    goto :goto_0

    :cond_0
    const-string v0, "cafePlayer"

    .line 4
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0}, Lb/o/a/i;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->v:Lcom/farsitel/bazaar/player/CafePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/player/CafePlayer;->t()V

    goto :goto_0

    :cond_0
    const-string v0, "cafePlayer"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0}, Lb/b/a/m;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->v:Lcom/farsitel/bazaar/player/CafePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/player/CafePlayer;->r()V

    goto :goto_0

    :cond_0
    const-string v0, "cafePlayer"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0}, Lb/b/a/m;->onStop()V

    return-void
.end method

.method public final z()Lc/e/a/a/m/p$a;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/l/p;

    invoke-direct {v0, p0}, Lc/c/a/l/p;-><init>(Lcom/farsitel/bazaar/player/VideoPlayerActivity;)V

    return-object v0
.end method
