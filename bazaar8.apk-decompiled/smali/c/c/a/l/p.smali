.class public final Lc/c/a/l/p;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.kt"

# interfaces
.implements Lc/e/a/a/m/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/player/VideoPlayerActivity;->z()Lc/e/a/a/m/p$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/player/VideoPlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/l/p;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/m/p;J)V
    .locals 0

    return-void
.end method

.method public a(Lc/e/a/a/m/p;JZ)V
    .locals 3

    .line 1
    iget-object p1, p0, Lc/c/a/l/p;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    .line 2
    sget-object p4, Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;->SEEK:Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lkotlin/Pair;

    invoke-static {p1}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->b(Lcom/farsitel/bazaar/player/VideoPlayerActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "end"

    invoke-static {p3, p2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    invoke-static {v0}, Lh/a/A;->b([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p4, p2}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Lcom/farsitel/bazaar/analytics/model/what/PlayerActionEvent$PlayerAction;Ljava/util/Map;)V

    .line 5
    iget-object p1, p0, Lc/c/a/l/p;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    const-wide/16 p2, 0x0

    invoke-static {p1, p2, p3}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;J)V

    return-void
.end method

.method public b(Lc/e/a/a/m/p;J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/c/a/l/p;->a:Lcom/farsitel/bazaar/player/VideoPlayerActivity;

    invoke-static {p1, p2, p3}, Lcom/farsitel/bazaar/player/VideoPlayerActivity;->a(Lcom/farsitel/bazaar/player/VideoPlayerActivity;J)V

    return-void
.end method
