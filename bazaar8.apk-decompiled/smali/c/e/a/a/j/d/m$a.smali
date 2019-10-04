.class public final Lc/e/a/a/j/d/m$a;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"

# interfaces
.implements Lc/e/a/a/j/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/d/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/j/d/g;

.field public b:Lc/e/a/a/j/d/h;

.field public c:Lc/e/a/a/j/d/a/i;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$a;

.field public f:Lc/e/a/a/j/q;

.field public g:Lc/e/a/a/n/v;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc/e/a/a/j/d/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/j/d/g;

    iput-object p1, p0, Lc/e/a/a/j/d/m$a;->a:Lc/e/a/a/j/d/g;

    .line 4
    new-instance p1, Lc/e/a/a/j/d/a/b;

    invoke-direct {p1}, Lc/e/a/a/j/d/a/b;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/d/m$a;->c:Lc/e/a/a/j/d/a/i;

    .line 5
    sget-object p1, Lc/e/a/a/j/d/a/c;->a:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$a;

    iput-object p1, p0, Lc/e/a/a/j/d/m$a;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$a;

    .line 6
    sget-object p1, Lc/e/a/a/j/d/h;->a:Lc/e/a/a/j/d/h;

    iput-object p1, p0, Lc/e/a/a/j/d/m$a;->b:Lc/e/a/a/j/d/h;

    .line 7
    new-instance p1, Lc/e/a/a/n/t;

    invoke-direct {p1}, Lc/e/a/a/n/t;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/d/m$a;->g:Lc/e/a/a/n/v;

    .line 8
    new-instance p1, Lc/e/a/a/j/r;

    invoke-direct {p1}, Lc/e/a/a/j/r;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/d/m$a;->f:Lc/e/a/a/j/q;

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/n/j$a;)V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/a/j/d/e;

    invoke-direct {v0, p1}, Lc/e/a/a/j/d/e;-><init>(Lc/e/a/a/n/j$a;)V

    invoke-direct {p0, v0}, Lc/e/a/a/j/d/m$a;-><init>(Lc/e/a/a/j/d/g;)V

    return-void
.end method


# virtual methods
.method public createMediaSource(Landroid/net/Uri;)Lc/e/a/a/j/d/m;
    .locals 14

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/j/d/m$a;->j:Z

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/d/m$a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lc/e/a/a/j/d/a/d;

    iget-object v2, p0, Lc/e/a/a/j/d/m$a;->c:Lc/e/a/a/j/d/a/i;

    invoke-direct {v1, v2, v0}, Lc/e/a/a/j/d/a/d;-><init>(Lc/e/a/a/j/d/a/i;Ljava/util/List;)V

    iput-object v1, p0, Lc/e/a/a/j/d/m$a;->c:Lc/e/a/a/j/d/a/i;

    .line 4
    :cond_0
    new-instance v0, Lc/e/a/a/j/d/m;

    iget-object v5, p0, Lc/e/a/a/j/d/m$a;->a:Lc/e/a/a/j/d/g;

    iget-object v6, p0, Lc/e/a/a/j/d/m$a;->b:Lc/e/a/a/j/d/h;

    iget-object v7, p0, Lc/e/a/a/j/d/m$a;->f:Lc/e/a/a/j/q;

    iget-object v8, p0, Lc/e/a/a/j/d/m$a;->g:Lc/e/a/a/n/v;

    iget-object v1, p0, Lc/e/a/a/j/d/m$a;->e:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$a;

    iget-object v2, p0, Lc/e/a/a/j/d/m$a;->c:Lc/e/a/a/j/d/a/i;

    .line 5
    invoke-interface {v1, v5, v8, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$a;->a(Lc/e/a/a/j/d/g;Lc/e/a/a/n/v;Lc/e/a/a/j/d/a/i;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    move-result-object v9

    iget-boolean v10, p0, Lc/e/a/a/j/d/m$a;->h:Z

    iget-boolean v11, p0, Lc/e/a/a/j/d/m$a;->i:Z

    iget-object v12, p0, Lc/e/a/a/j/d/m$a;->k:Ljava/lang/Object;

    const/4 v13, 0x0

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v13}, Lc/e/a/a/j/d/m;-><init>(Landroid/net/Uri;Lc/e/a/a/j/d/g;Lc/e/a/a/j/d/h;Lc/e/a/a/j/q;Lc/e/a/a/n/v;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;Lc/e/a/a/j/d/l;)V

    return-object v0
.end method
