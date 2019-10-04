.class public final Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "VideoStatsRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/l/b/b;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.player.stats.VideoStatsRepository"
    f = "VideoStatsRepository.kt"
    l = {
        0x17,
        0x1b
    }
    m = "setVideoStats"
.end annotation


# instance fields
.field public I$0:I

.field public J$0:J

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lc/c/a/l/b/b;


# direct methods
.method public constructor <init>(Lc/c/a/l/b/b;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->this$0:Lc/c/a/l/b/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lh/c/b;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->label:I

    iget-object v0, p0, Lcom/farsitel/bazaar/player/stats/VideoStatsRepository$setVideoStats$1;->this$0:Lc/c/a/l/b/b;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lc/c/a/l/b/b;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
