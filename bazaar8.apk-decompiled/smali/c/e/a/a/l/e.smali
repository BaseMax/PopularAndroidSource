.class public abstract Lc/e/a/a/l/e;
.super Ljava/lang/Object;
.source "BaseTrackSelection.java"

# interfaces
.implements Lc/e/a/a/l/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/l/e$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/TrackGroup;

.field public final b:I

.field public final c:[I

.field public final d:[Lcom/google/android/exoplayer2/Format;

.field public final e:[J

.field public f:I


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    .line 3
    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    iput-object v0, p0, Lc/e/a/a/l/e;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 4
    array-length v0, p2

    iput v0, p0, Lc/e/a/a/l/e;->b:I

    .line 5
    iget v0, p0, Lc/e/a/a/l/e;->b:I

    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lc/e/a/a/l/e;->d:[Lcom/google/android/exoplayer2/Format;

    const/4 v0, 0x0

    .line 6
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 7
    iget-object v2, p0, Lc/e/a/a/l/e;->d:[Lcom/google/android/exoplayer2/Format;

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object p2, p0, Lc/e/a/a/l/e;->d:[Lcom/google/android/exoplayer2/Format;

    new-instance v0, Lc/e/a/a/l/e$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lc/e/a/a/l/e$a;-><init>(Lc/e/a/a/l/d;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 9
    iget p2, p0, Lc/e/a/a/l/e;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Lc/e/a/a/l/e;->c:[I

    .line 10
    :goto_2
    iget p2, p0, Lc/e/a/a/l/e;->b:I

    if-ge v1, p2, :cond_2

    .line 11
    iget-object p2, p0, Lc/e/a/a/l/e;->c:[I

    iget-object v0, p0, Lc/e/a/a/l/e;->d:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_2
    new-array p1, p2, [J

    iput-object p1, p0, Lc/e/a/a/l/e;->e:[J

    return-void
.end method


# virtual methods
.method public a(JLjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lc/e/a/a/j/b/l;",
            ">;)I"
        }
    .end annotation

    .line 5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lc/e/a/a/l/e;->b:I

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lc/e/a/a/l/e;->d:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final a(I)Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/l/e;->d:[Lcom/google/android/exoplayer2/Format;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final a()Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/l/e;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public synthetic a(JJJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p6}, Lc/e/a/a/l/m;->a(Lc/e/a/a/l/n;JJJ)V

    return-void
.end method

.method public synthetic a(JJJLjava/util/List;[Lc/e/a/a/j/b/n;)V
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

    invoke-static/range {p0 .. p8}, Lc/e/a/a/l/m;->a(Lc/e/a/a/l/n;JJJLjava/util/List;[Lc/e/a/a/j/b/n;)V

    return-void
.end method

.method public final a(IJ)Z
    .locals 10

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Lc/e/a/a/l/e;->b(IJ)Z

    move-result v2

    const/4 v3, 0x0

    move v4, v2

    const/4 v2, 0x0

    .line 8
    :goto_0
    iget v5, p0, Lc/e/a/a/l/e;->b:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_1

    if-nez v4, :cond_1

    if-eq v2, p1, :cond_0

    .line 9
    invoke-virtual {p0, v2, v0, v1}, Lc/e/a/a/l/e;->b(IJ)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    return v3

    .line 10
    :cond_2
    iget-object v7, p0, Lc/e/a/a/l/e;->e:[J

    aget-wide v8, v7, p1

    const-wide v4, 0x7fffffffffffffffL

    move-wide v2, p2

    .line 11
    invoke-static/range {v0 .. v5}, Lc/e/a/a/o/I;->a(JJJ)J

    move-result-wide p2

    .line 12
    invoke-static {v8, v9, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, v7, p1

    return v6
.end method

.method public final b(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/l/e;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public final b(IJ)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lc/e/a/a/l/e;->e:[J

    aget-wide v1, v0, p1

    cmp-long p1, v1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(I)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lc/e/a/a/l/e;->b:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lc/e/a/a/l/e;->c:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/l/e;->c:[I

    invoke-interface {p0}, Lc/e/a/a/l/n;->b()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lc/e/a/a/l/e;

    .line 3
    iget-object v2, p0, Lc/e/a/a/l/e;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Lc/e/a/a/l/e;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lc/e/a/a/l/e;->c:[I

    iget-object p1, p1, Lc/e/a/a/l/e;->c:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final f()Lcom/google/android/exoplayer2/Format;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/l/e;->d:[Lcom/google/android/exoplayer2/Format;

    invoke-interface {p0}, Lc/e/a/a/l/n;->b()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/l/e;->f:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/l/e;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/e/a/a/l/e;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lc/e/a/a/l/e;->f:I

    .line 3
    :cond_0
    iget v0, p0, Lc/e/a/a/l/e;->f:I

    return v0
.end method

.method public synthetic i()V
    .locals 0

    invoke-static {p0}, Lc/e/a/a/l/m;->a(Lc/e/a/a/l/n;)V

    return-void
.end method

.method public final length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/l/e;->c:[I

    array-length v0, v0

    return v0
.end method
