.class public abstract Lc/e/a/a/j/b/d;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# instance fields
.field public final a:Lc/e/a/a/n/l;

.field public final b:I

.field public final c:Lcom/google/android/exoplayer2/Format;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:J

.field public final g:J

.field public final h:Lc/e/a/a/n/z;


# direct methods
.method public constructor <init>(Lc/e/a/a/n/j;Lc/e/a/a/n/l;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/e/a/a/n/z;

    invoke-direct {v0, p1}, Lc/e/a/a/n/z;-><init>(Lc/e/a/a/n/j;)V

    iput-object v0, p0, Lc/e/a/a/j/b/d;->h:Lc/e/a/a/n/z;

    .line 3
    invoke-static {p2}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lc/e/a/a/n/l;

    iput-object p2, p0, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    .line 4
    iput p3, p0, Lc/e/a/a/j/b/d;->b:I

    .line 5
    iput-object p4, p0, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    .line 6
    iput p5, p0, Lc/e/a/a/j/b/d;->d:I

    .line 7
    iput-object p6, p0, Lc/e/a/a/j/b/d;->e:Ljava/lang/Object;

    .line 8
    iput-wide p7, p0, Lc/e/a/a/j/b/d;->f:J

    .line 9
    iput-wide p9, p0, Lc/e/a/a/j/b/d;->g:J

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/b/d;->h:Lc/e/a/a/n/z;

    invoke-virtual {v0}, Lc/e/a/a/n/z;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lc/e/a/a/j/b/d;->g:J

    iget-wide v2, p0, Lc/e/a/a/j/b/d;->f:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/b/d;->h:Lc/e/a/a/n/z;

    invoke-virtual {v0}, Lc/e/a/a/n/z;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final f()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/b/d;->h:Lc/e/a/a/n/z;

    invoke-virtual {v0}, Lc/e/a/a/n/z;->c()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
