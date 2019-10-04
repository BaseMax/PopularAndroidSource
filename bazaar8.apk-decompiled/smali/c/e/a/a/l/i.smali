.class public final Lc/e/a/a/l/i;
.super Lc/e/a/a/l/e;
.source "FixedTrackSelection.java"


# instance fields
.field public final g:I

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lc/e/a/a/l/e;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 2
    iput p3, p0, Lc/e/a/a/l/i;->g:I

    .line 3
    iput-object p4, p0, Lc/e/a/a/l/i;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(JJJLjava/util/List;[Lc/e/a/a/j/b/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lc/e/a/a/j/b/l;",
            ">;[",
            "Lc/e/a/a/j/b/n;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/l/i;->g:I

    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/l/i;->h:Ljava/lang/Object;

    return-object v0
.end method
