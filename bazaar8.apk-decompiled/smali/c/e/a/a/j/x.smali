.class public final Lc/e/a/a/j/x;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lc/e/a/a/j/u;
.implements Lc/e/a/a/j/u$a;


# instance fields
.field public final a:[Lc/e/a/a/j/u;

.field public final b:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lc/e/a/a/j/C;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lc/e/a/a/j/q;

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/j/u;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lc/e/a/a/j/u$a;

.field public f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public g:[Lc/e/a/a/j/u;

.field public h:Lc/e/a/a/j/D;


# direct methods
.method public varargs constructor <init>(Lc/e/a/a/j/q;[Lc/e/a/a/j/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/x;->c:Lc/e/a/a/j/q;

    .line 3
    iput-object p2, p0, Lc/e/a/a/j/x;->a:[Lc/e/a/a/j/u;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lc/e/a/a/j/x;->d:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 5
    new-array p2, p2, [Lc/e/a/a/j/D;

    .line 6
    invoke-interface {p1, p2}, Lc/e/a/a/j/q;->a([Lc/e/a/a/j/D;)Lc/e/a/a/j/D;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/x;->h:Lc/e/a/a/j/D;

    .line 7
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/x;->b:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 4

    .line 43
    iget-object v0, p0, Lc/e/a/a/j/x;->g:[Lc/e/a/a/j/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lc/e/a/a/j/u;->a(J)J

    move-result-wide p1

    const/4 v0, 0x1

    .line 44
    :goto_0
    iget-object v1, p0, Lc/e/a/a/j/x;->g:[Lc/e/a/a/j/u;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 45
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lc/e/a/a/j/u;->a(J)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected child seekToUs result."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-wide p1
.end method

.method public a(JLc/e/a/a/V;)J
    .locals 2

    .line 47
    iget-object v0, p0, Lc/e/a/a/j/x;->g:[Lc/e/a/a/j/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2, p3}, Lc/e/a/a/j/u;->a(JLc/e/a/a/V;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a([Lc/e/a/a/l/n;[Z[Lc/e/a/a/j/C;[ZJ)J
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 6
    array-length v3, v1

    new-array v3, v3, [I

    .line 7
    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 8
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 9
    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_0

    const/4 v7, -0x1

    goto :goto_1

    :cond_0
    iget-object v7, v0, Lc/e/a/a/j/x;->b:Ljava/util/IdentityHashMap;

    aget-object v9, v2, v6

    .line 10
    invoke-virtual {v7, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    aput v7, v3, v6

    .line 11
    aput v8, v4, v6

    .line 12
    aget-object v7, v1, v6

    if-eqz v7, :cond_2

    .line 13
    aget-object v7, v1, v6

    invoke-interface {v7}, Lc/e/a/a/l/n;->a()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    const/4 v9, 0x0

    .line 14
    :goto_2
    iget-object v10, v0, Lc/e/a/a/j/x;->a:[Lc/e/a/a/j/u;

    array-length v11, v10

    if-ge v9, v11, :cond_2

    .line 15
    aget-object v10, v10, v9

    invoke-interface {v10}, Lc/e/a/a/j/u;->f()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v10

    if-eq v10, v8, :cond_1

    .line 16
    aput v9, v4, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 17
    :cond_3
    iget-object v6, v0, Lc/e/a/a/j/x;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 18
    array-length v6, v1

    new-array v6, v6, [Lc/e/a/a/j/C;

    .line 19
    array-length v7, v1

    new-array v7, v7, [Lc/e/a/a/j/C;

    .line 20
    array-length v8, v1

    new-array v15, v8, [Lc/e/a/a/l/n;

    .line 21
    new-instance v13, Ljava/util/ArrayList;

    iget-object v8, v0, Lc/e/a/a/j/x;->a:[Lc/e/a/a/j/u;

    array-length v8, v8

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v16, p5

    const/4 v14, 0x0

    .line 22
    :goto_4
    iget-object v8, v0, Lc/e/a/a/j/x;->a:[Lc/e/a/a/j/u;

    array-length v8, v8

    if-ge v14, v8, :cond_f

    const/4 v8, 0x0

    .line 23
    :goto_5
    array-length v9, v1

    if-ge v8, v9, :cond_6

    .line 24
    aget v9, v3, v8

    const/4 v10, 0x0

    if-ne v9, v14, :cond_4

    aget-object v9, v2, v8

    goto :goto_6

    :cond_4
    move-object v9, v10

    :goto_6
    aput-object v9, v7, v8

    .line 25
    aget v9, v4, v8

    if-ne v9, v14, :cond_5

    aget-object v10, v1, v8

    :cond_5
    aput-object v10, v15, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 26
    :cond_6
    iget-object v8, v0, Lc/e/a/a/j/x;->a:[Lc/e/a/a/j/u;

    aget-object v8, v8, v14

    move-object v9, v15

    move-object/from16 v10, p2

    move-object v11, v7

    move-object/from16 v12, p4

    move-object v5, v13

    move-object/from16 v18, v15

    move v15, v14

    move-wide/from16 v13, v16

    invoke-interface/range {v8 .. v14}, Lc/e/a/a/j/u;->a([Lc/e/a/a/l/n;[Z[Lc/e/a/a/j/C;[ZJ)J

    move-result-wide v8

    if-nez v15, :cond_7

    move-wide/from16 v16, v8

    goto :goto_7

    :cond_7
    cmp-long v10, v8, v16

    if-nez v10, :cond_e

    :goto_7
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 27
    :goto_8
    array-length v10, v1

    if-ge v8, v10, :cond_c

    .line 28
    aget v10, v4, v8

    const/4 v11, 0x1

    if-ne v10, v15, :cond_9

    .line 29
    aget-object v9, v7, v8

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_9

    :cond_8
    const/4 v9, 0x0

    :goto_9
    invoke-static {v9}, Lc/e/a/a/o/e;->b(Z)V

    .line 30
    aget-object v9, v7, v8

    aput-object v9, v6, v8

    .line 31
    iget-object v9, v0, Lc/e/a/a/j/x;->b:Ljava/util/IdentityHashMap;

    aget-object v10, v7, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    goto :goto_b

    .line 32
    :cond_9
    aget v10, v3, v8

    if-ne v10, v15, :cond_b

    .line 33
    aget-object v10, v7, v8

    if-nez v10, :cond_a

    goto :goto_a

    :cond_a
    const/4 v11, 0x0

    :goto_a
    invoke-static {v11}, Lc/e/a/a/o/e;->b(Z)V

    :cond_b
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_c
    if-eqz v9, :cond_d

    .line 34
    iget-object v8, v0, Lc/e/a/a/j/x;->a:[Lc/e/a/a/j/u;

    aget-object v8, v8, v15

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v14, v15, 0x1

    move-object v13, v5

    move-object/from16 v15, v18

    goto :goto_4

    .line 35
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children enabled at different positions."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    move-object v5, v13

    .line 36
    array-length v1, v6

    const/4 v3, 0x0

    invoke-static {v6, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lc/e/a/a/j/u;

    iput-object v1, v0, Lc/e/a/a/j/x;->g:[Lc/e/a/a/j/u;

    .line 38
    iget-object v1, v0, Lc/e/a/a/j/x;->g:[Lc/e/a/a/j/u;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    iget-object v1, v0, Lc/e/a/a/j/x;->c:Lc/e/a/a/j/q;

    iget-object v2, v0, Lc/e/a/a/j/x;->g:[Lc/e/a/a/j/u;

    .line 40
    invoke-interface {v1, v2}, Lc/e/a/a/j/q;->a([Lc/e/a/a/j/D;)Lc/e/a/a/j/D;

    move-result-object v1

    iput-object v1, v0, Lc/e/a/a/j/x;->h:Lc/e/a/a/j/D;

    return-wide v16
.end method

.method public a(JZ)V
    .locals 4

    .line 41
    iget-object v0, p0, Lc/e/a/a/j/x;->g:[Lc/e/a/a/j/u;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 42
    invoke-interface {v3, p1, p2, p3}, Lc/e/a/a/j/u;->a(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lc/e/a/a/j/D;)V
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/a/j/u;

    invoke-virtual {p0, p1}, Lc/e/a/a/j/x;->b(Lc/e/a/a/j/u;)V

    return-void
.end method

.method public a(Lc/e/a/a/j/u$a;J)V
    .locals 3

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/x;->e:Lc/e/a/a/j/u$a;

    .line 3
    iget-object p1, p0, Lc/e/a/a/j/x;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lc/e/a/a/j/x;->a:[Lc/e/a/a/j/u;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lc/e/a/a/j/x;->a:[Lc/e/a/a/j/u;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 5
    invoke-interface {v2, p0, p2, p3}, Lc/e/a/a/j/u;->a(Lc/e/a/a/j/u$a;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lc/e/a/a/j/u;)V
    .locals 10

    .line 48
    iget-object v0, p0, Lc/e/a/a/j/x;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    iget-object p1, p0, Lc/e/a/a/j/x;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object p1, p0, Lc/e/a/a/j/x;->a:[Lc/e/a/a/j/u;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    .line 51
    invoke-interface {v4}, Lc/e/a/a/j/u;->f()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_1
    new-array p1, v3, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 53
    iget-object v0, p0, Lc/e/a/a/j/x;->a:[Lc/e/a/a/j/u;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v5, v0, v3

    .line 54
    invoke-interface {v5}, Lc/e/a/a/j/u;->f()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    .line 55
    iget v6, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->b:I

    move v7, v4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_2

    add-int/lit8 v8, v7, 0x1

    .line 56
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v9

    aput-object v9, p1, v7

    add-int/lit8 v4, v4, 0x1

    move v7, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_1

    .line 57
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lc/e/a/a/j/x;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 58
    iget-object p1, p0, Lc/e/a/a/j/x;->e:Lc/e/a/a/j/u$a;

    invoke-interface {p1, p0}, Lc/e/a/a/j/u$a;->a(Lc/e/a/a/j/u;)V

    return-void
.end method

.method public b()J
    .locals 2

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/x;->h:Lc/e/a/a/j/D;

    invoke-interface {v0}, Lc/e/a/a/j/D;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lc/e/a/a/j/u;)V
    .locals 0

    .line 6
    iget-object p1, p0, Lc/e/a/a/j/x;->e:Lc/e/a/a/j/u$a;

    invoke-interface {p1, p0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    return-void
.end method

.method public b(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/x;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/x;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Lc/e/a/a/j/x;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/e/a/a/j/u;

    invoke-interface {v3, p1, p2}, Lc/e/a/a/j/u;->b(J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lc/e/a/a/j/x;->h:Lc/e/a/a/j/D;

    invoke-interface {v0, p1, p2}, Lc/e/a/a/j/D;->b(J)Z

    move-result p1

    return p1
.end method

.method public c(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/x;->h:Lc/e/a/a/j/D;

    invoke-interface {v0, p1, p2}, Lc/e/a/a/j/D;->c(J)V

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/x;->a:[Lc/e/a/a/j/u;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lc/e/a/a/j/u;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()J
    .locals 9

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/x;->a:[Lc/e/a/a/j/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lc/e/a/a/j/u;->e()J

    move-result-wide v2

    const/4 v0, 0x1

    .line 2
    :goto_0
    iget-object v4, p0, Lc/e/a/a/j/x;->a:[Lc/e/a/a/j/u;

    array-length v5, v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v5, :cond_1

    .line 3
    aget-object v4, v4, v0

    invoke-interface {v4}, Lc/e/a/a/j/u;->e()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Child reported discontinuity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/x;->g:[Lc/e/a/a/j/u;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    .line 6
    iget-object v7, p0, Lc/e/a/a/j/x;->a:[Lc/e/a/a/j/u;

    aget-object v7, v7, v1

    if-eq v6, v7, :cond_3

    .line 7
    invoke-interface {v6, v2, v3}, Lc/e/a/a/j/u;->a(J)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected child seekToUs result."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-wide v2
.end method

.method public f()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/x;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/x;->h:Lc/e/a/a/j/D;

    invoke-interface {v0}, Lc/e/a/a/j/D;->g()J

    move-result-wide v0

    return-wide v0
.end method
