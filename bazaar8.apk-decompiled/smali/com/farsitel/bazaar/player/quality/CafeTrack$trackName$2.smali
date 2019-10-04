.class public final Lcom/farsitel/bazaar/player/quality/CafeTrack$trackName$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CafeTrack.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/l/a/a;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/Format;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $_trackName:Ljava/lang/String;

.field public final synthetic this$0:Lc/c/a/l/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/l/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/player/quality/CafeTrack$trackName$2;->this$0:Lc/c/a/l/a/a;

    iput-object p2, p0, Lcom/farsitel/bazaar/player/quality/CafeTrack$trackName$2;->$_trackName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/player/quality/CafeTrack$trackName$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/player/quality/CafeTrack$trackName$2;->$_trackName:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/player/quality/CafeTrack$trackName$2;->this$0:Lc/c/a/l/a/a;

    invoke-virtual {v0}, Lc/c/a/l/a/a;->d()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/farsitel/bazaar/player/quality/CafeTrack$trackName$2;->this$0:Lc/c/a/l/a/a;

    invoke-virtual {v0}, Lc/c/a/l/a/a;->b()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->A:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/farsitel/bazaar/player/quality/CafeTrack$trackName$2;->this$0:Lc/c/a/l/a/a;

    invoke-virtual {v0}, Lc/c/a/l/a/a;->b()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->b:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_4
    sget-object v0, Lc/c/a/l/a/a;->c:Lc/c/a/l/a/a$a;

    iget-object v1, p0, Lcom/farsitel/bazaar/player/quality/CafeTrack$trackName$2;->this$0:Lc/c/a/l/a/a;

    invoke-virtual {v1}, Lc/c/a/l/a/a;->b()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/l/a/a$a;->a(Lc/c/a/l/a/a$a;Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method
