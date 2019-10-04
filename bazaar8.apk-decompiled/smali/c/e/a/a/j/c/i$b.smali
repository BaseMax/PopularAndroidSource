.class public final Lc/e/a/a/j/c/i$b;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "b"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/j/b/e;

.field public final b:Lc/e/a/a/j/c/a/j;

.field public final c:Lc/e/a/a/j/c/g;

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(JILc/e/a/a/j/c/a/j;ZLjava/util/List;Lc/e/a/a/e/q;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lc/e/a/a/j/c/a/j;",
            "Z",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lc/e/a/a/e/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p3, p4, p5, p6, p7}, Lc/e/a/a/j/c/i$b;->a(ILc/e/a/a/j/c/a/j;ZLjava/util/List;Lc/e/a/a/e/q;)Lc/e/a/a/j/b/e;

    move-result-object v4

    .line 2
    invoke-virtual {p4}, Lc/e/a/a/j/c/a/j;->d()Lc/e/a/a/j/c/g;

    move-result-object v7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p4

    .line 3
    invoke-direct/range {v0 .. v7}, Lc/e/a/a/j/c/i$b;-><init>(JLc/e/a/a/j/c/a/j;Lc/e/a/a/j/b/e;JLc/e/a/a/j/c/g;)V

    return-void
.end method

.method public constructor <init>(JLc/e/a/a/j/c/a/j;Lc/e/a/a/j/b/e;JLc/e/a/a/j/c/g;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Lc/e/a/a/j/c/i$b;->d:J

    .line 6
    iput-object p3, p0, Lc/e/a/a/j/c/i$b;->b:Lc/e/a/a/j/c/a/j;

    .line 7
    iput-wide p5, p0, Lc/e/a/a/j/c/i$b;->e:J

    .line 8
    iput-object p4, p0, Lc/e/a/a/j/c/i$b;->a:Lc/e/a/a/j/b/e;

    .line 9
    iput-object p7, p0, Lc/e/a/a/j/c/i$b;->c:Lc/e/a/a/j/c/g;

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/j/c/i$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/j/c/i$b;->d:J

    return-wide v0
.end method

.method public static a(ILc/e/a/a/j/c/a/j;ZLjava/util/List;Lc/e/a/a/e/q;)Lc/e/a/a/j/b/e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc/e/a/a/j/c/a/j;",
            "Z",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lc/e/a/a/e/q;",
            ")",
            "Lc/e/a/a/j/b/e;"
        }
    .end annotation

    .line 30
    iget-object v0, p1, Lc/e/a/a/j/c/a/j;->b:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/lang/String;

    .line 31
    invoke-static {v0}, Lc/e/a/a/j/c/i$b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "application/x-rawcc"

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    new-instance p2, Lc/e/a/a/e/g/a;

    iget-object p3, p1, Lc/e/a/a/j/c/a/j;->b:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p2, p3}, Lc/e/a/a/e/g/a;-><init>(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_1

    .line 34
    :cond_1
    invoke-static {v0}, Lc/e/a/a/j/c/i$b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    new-instance p2, Lc/e/a/a/e/c/g;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lc/e/a/a/e/c/g;-><init>(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v0, 0x4

    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 36
    :goto_0
    new-instance p2, Lc/e/a/a/e/e/h;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lc/e/a/a/e/e/h;-><init>(ILc/e/a/a/o/F;Lc/e/a/a/e/e/n;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;Lc/e/a/a/e/q;)V

    .line 37
    :goto_1
    new-instance p3, Lc/e/a/a/j/b/e;

    iget-object p1, p1, Lc/e/a/a/j/c/a/j;->b:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p3, p2, p0, p1}, Lc/e/a/a/j/b/e;-><init>(Lc/e/a/a/e/g;ILcom/google/android/exoplayer2/Format;)V

    return-object p3
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 29
    invoke-static {p0}, Lc/e/a/a/o/s;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "video/webm"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/webm"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 19
    iget-object v0, p0, Lc/e/a/a/j/c/i$b;->c:Lc/e/a/a/j/c/g;

    invoke-interface {v0}, Lc/e/a/a/j/c/g;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lc/e/a/a/j/c/i$b;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(J)J
    .locals 5

    .line 20
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/j/c/i$b;->c(J)J

    move-result-wide v0

    iget-object v2, p0, Lc/e/a/a/j/c/i$b;->c:Lc/e/a/a/j/c/g;

    iget-wide v3, p0, Lc/e/a/a/j/c/i$b;->e:J

    sub-long/2addr p1, v3

    iget-wide v3, p0, Lc/e/a/a/j/c/i$b;->d:J

    .line 21
    invoke-interface {v2, p1, p2, v3, v4}, Lc/e/a/a/j/c/g;->a(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public a(Lc/e/a/a/j/c/a/b;IJ)J
    .locals 5

    .line 22
    invoke-virtual {p0}, Lc/e/a/a/j/c/i$b;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lc/e/a/a/j/c/a/b;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 23
    iget-wide v0, p1, Lc/e/a/a/j/c/a/b;->a:J

    invoke-static {v0, v1}, Lc/e/a/a/q;->a(J)J

    move-result-wide v0

    sub-long/2addr p3, v0

    .line 24
    invoke-virtual {p1, p2}, Lc/e/a/a/j/c/a/b;->a(I)Lc/e/a/a/j/c/a/f;

    move-result-object p2

    iget-wide v0, p2, Lc/e/a/a/j/c/a/f;->b:J

    invoke-static {v0, v1}, Lc/e/a/a/q;->a(J)J

    move-result-wide v0

    sub-long/2addr p3, v0

    .line 25
    iget-wide p1, p1, Lc/e/a/a/j/c/a/b;->f:J

    invoke-static {p1, p2}, Lc/e/a/a/q;->a(J)J

    move-result-wide p1

    .line 26
    invoke-virtual {p0}, Lc/e/a/a/j/c/i$b;->a()J

    move-result-wide v0

    sub-long/2addr p3, p1

    invoke-virtual {p0, p3, p4}, Lc/e/a/a/j/c/i$b;->b(J)J

    move-result-wide p1

    .line 27
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    .line 28
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/j/c/i$b;->a()J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JLc/e/a/a/j/c/a/j;)Lc/e/a/a/j/c/i$b;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    .line 2
    iget-object v1, v0, Lc/e/a/a/j/c/i$b;->b:Lc/e/a/a/j/c/a/j;

    invoke-virtual {v1}, Lc/e/a/a/j/c/a/j;->d()Lc/e/a/a/j/c/g;

    move-result-object v8

    .line 3
    invoke-virtual/range {p3 .. p3}, Lc/e/a/a/j/c/a/j;->d()Lc/e/a/a/j/c/g;

    move-result-object v9

    if-nez v8, :cond_0

    .line 4
    new-instance v9, Lc/e/a/a/j/c/i$b;

    iget-object v5, v0, Lc/e/a/a/j/c/i$b;->a:Lc/e/a/a/j/b/e;

    iget-wide v6, v0, Lc/e/a/a/j/c/i$b;->e:J

    move-object v1, v9

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v8}, Lc/e/a/a/j/c/i$b;-><init>(JLc/e/a/a/j/c/a/j;Lc/e/a/a/j/b/e;JLc/e/a/a/j/c/g;)V

    return-object v9

    .line 5
    :cond_0
    invoke-interface {v8}, Lc/e/a/a/j/c/g;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    new-instance v10, Lc/e/a/a/j/c/i$b;

    iget-object v5, v0, Lc/e/a/a/j/c/i$b;->a:Lc/e/a/a/j/b/e;

    iget-wide v6, v0, Lc/e/a/a/j/c/i$b;->e:J

    move-object v1, v10

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lc/e/a/a/j/c/i$b;-><init>(JLc/e/a/a/j/c/a/j;Lc/e/a/a/j/b/e;JLc/e/a/a/j/c/g;)V

    return-object v10

    .line 7
    :cond_1
    invoke-interface {v8, v2, v3}, Lc/e/a/a/j/c/g;->c(J)I

    move-result v1

    if-nez v1, :cond_2

    .line 8
    new-instance v10, Lc/e/a/a/j/c/i$b;

    iget-object v5, v0, Lc/e/a/a/j/c/i$b;->a:Lc/e/a/a/j/b/e;

    iget-wide v6, v0, Lc/e/a/a/j/c/i$b;->e:J

    move-object v1, v10

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lc/e/a/a/j/c/i$b;-><init>(JLc/e/a/a/j/c/a/j;Lc/e/a/a/j/b/e;JLc/e/a/a/j/c/g;)V

    return-object v10

    .line 9
    :cond_2
    invoke-interface {v8}, Lc/e/a/a/j/c/g;->b()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    .line 10
    invoke-interface {v8, v4, v5}, Lc/e/a/a/j/c/g;->a(J)J

    move-result-wide v10

    .line 11
    invoke-interface {v8, v4, v5, v2, v3}, Lc/e/a/a/j/c/g;->a(JJ)J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 12
    invoke-interface {v9}, Lc/e/a/a/j/c/g;->b()J

    move-result-wide v12

    .line 13
    invoke-interface {v9, v12, v13}, Lc/e/a/a/j/c/g;->a(J)J

    move-result-wide v14

    .line 14
    iget-wide v6, v0, Lc/e/a/a/j/c/i$b;->e:J

    cmp-long v1, v10, v14

    if-nez v1, :cond_3

    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    :goto_0
    sub-long/2addr v4, v12

    add-long/2addr v6, v4

    goto :goto_1

    :cond_3
    cmp-long v1, v10, v14

    if-ltz v1, :cond_4

    .line 15
    invoke-interface {v8, v14, v15, v2, v3}, Lc/e/a/a/j/c/g;->b(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 16
    :goto_1
    new-instance v10, Lc/e/a/a/j/c/i$b;

    iget-object v5, v0, Lc/e/a/a/j/c/i$b;->a:Lc/e/a/a/j/b/e;

    move-object v1, v10

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lc/e/a/a/j/c/i$b;-><init>(JLc/e/a/a/j/c/a/j;Lc/e/a/a/j/b/e;JLc/e/a/a/j/c/g;)V

    return-object v10

    .line 17
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public a(Lc/e/a/a/j/c/g;)Lc/e/a/a/j/c/i$b;
    .locals 9

    .line 18
    new-instance v8, Lc/e/a/a/j/c/i$b;

    iget-wide v1, p0, Lc/e/a/a/j/c/i$b;->d:J

    iget-object v3, p0, Lc/e/a/a/j/c/i$b;->b:Lc/e/a/a/j/c/a/j;

    iget-object v4, p0, Lc/e/a/a/j/c/i$b;->a:Lc/e/a/a/j/b/e;

    iget-wide v5, p0, Lc/e/a/a/j/c/i$b;->e:J

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lc/e/a/a/j/c/i$b;-><init>(JLc/e/a/a/j/c/a/j;Lc/e/a/a/j/b/e;JLc/e/a/a/j/c/g;)V

    return-object v8
.end method

.method public b()I
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/i$b;->c:Lc/e/a/a/j/c/g;

    iget-wide v1, p0, Lc/e/a/a/j/c/i$b;->d:J

    invoke-interface {v0, v1, v2}, Lc/e/a/a/j/c/g;->c(J)I

    move-result v0

    return v0
.end method

.method public b(J)J
    .locals 3

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/c/i$b;->c:Lc/e/a/a/j/c/g;

    iget-wide v1, p0, Lc/e/a/a/j/c/i$b;->d:J

    invoke-interface {v0, p1, p2, v1, v2}, Lc/e/a/a/j/c/g;->b(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lc/e/a/a/j/c/i$b;->e:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public b(Lc/e/a/a/j/c/a/b;IJ)J
    .locals 5

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/j/c/i$b;->b()I

    move-result v0

    const-wide/16 v1, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 4
    iget-wide v3, p1, Lc/e/a/a/j/c/a/b;->a:J

    invoke-static {v3, v4}, Lc/e/a/a/q;->a(J)J

    move-result-wide v3

    sub-long/2addr p3, v3

    .line 5
    invoke-virtual {p1, p2}, Lc/e/a/a/j/c/a/b;->a(I)Lc/e/a/a/j/c/a/f;

    move-result-object p1

    iget-wide p1, p1, Lc/e/a/a/j/c/a/f;->b:J

    invoke-static {p1, p2}, Lc/e/a/a/q;->a(J)J

    move-result-wide p1

    sub-long/2addr p3, p1

    .line 6
    invoke-virtual {p0, p3, p4}, Lc/e/a/a/j/c/i$b;->b(J)J

    move-result-wide p1

    :goto_0
    sub-long/2addr p1, v1

    return-wide p1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/j/c/i$b;->a()J

    move-result-wide p1

    int-to-long p3, v0

    add-long/2addr p1, p3

    goto :goto_0
.end method

.method public c(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/i$b;->c:Lc/e/a/a/j/c/g;

    iget-wide v1, p0, Lc/e/a/a/j/c/i$b;->e:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lc/e/a/a/j/c/g;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public d(J)Lc/e/a/a/j/c/a/h;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/i$b;->c:Lc/e/a/a/j/c/g;

    iget-wide v1, p0, Lc/e/a/a/j/c/i$b;->e:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lc/e/a/a/j/c/g;->b(J)Lc/e/a/a/j/c/a/h;

    move-result-object p1

    return-object p1
.end method
