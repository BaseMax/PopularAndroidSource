.class public final Lcom/farsitel/bazaar/player/CafePlayer$a;
.super Ljava/lang/Object;
.source "CafePlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/player/CafePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/player/CafePlayer$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lc/c/a/l/f;Lc/c/a/l/b/b;)Lb/r/F$b;
    .locals 1

    .line 7
    new-instance v0, Lc/c/a/l/d;

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/l/d;-><init>(Landroid/content/Context;Lc/c/a/l/f;Lc/c/a/l/b/b;)V

    return-object v0
.end method

.method public final a(Lb/b/a/m;Lcom/google/android/exoplayer2/ui/PlayerView;Lc/c/a/l/f;Lc/c/a/l/b/b;)Lcom/farsitel/bazaar/player/CafePlayer;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exoPlayerView"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStatRepository"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity.applicationContext"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/farsitel/bazaar/player/CafePlayer$a;->a(Landroid/content/Context;Lc/c/a/l/f;Lc/c/a/l/b/b;)Lb/r/F$b;

    move-result-object p3

    .line 2
    invoke-static {p1, p3}, Lb/r/G;->a(Lb/o/a/i;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-string p3, "ViewModelProviders.of(\n \u2026Repository)\n            )"

    invoke-static {p1, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/player/CafePlayer$a;->a(Lb/r/F;Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/farsitel/bazaar/player/CafePlayer;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/r/F;Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/farsitel/bazaar/player/CafePlayer;
    .locals 1

    .line 4
    const-class v0, Lcom/farsitel/bazaar/player/CafePlayer;

    invoke-virtual {p1, v0}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/player/CafePlayer;

    .line 5
    invoke-static {v0, p2}, Lcom/farsitel/bazaar/player/CafePlayer;->a(Lcom/farsitel/bazaar/player/CafePlayer;Lcom/google/android/exoplayer2/ui/PlayerView;)V

    const-string p2, "provider[CafePlayer::cla\u2026PlayerView)\n            }"

    .line 6
    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
