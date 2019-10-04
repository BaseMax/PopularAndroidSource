.class public final Lc/e/a/a/J;
.super Ljava/lang/Object;
.source "PlaybackInfo.java"


# static fields
.field public static final a:Lc/e/a/a/j/v$a;


# instance fields
.field public final b:Lc/e/a/a/Z;

.field public final c:Ljava/lang/Object;

.field public final d:Lc/e/a/a/j/v$a;

.field public final e:J

.field public final f:J

.field public final g:I

.field public final h:Z

.field public final i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final j:Lc/e/a/a/l/s;

.field public final k:Lc/e/a/a/j/v$a;

.field public volatile l:J

.field public volatile m:J

.field public volatile n:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/e/a/a/j/v$a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lc/e/a/a/j/v$a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lc/e/a/a/J;->a:Lc/e/a/a/j/v$a;

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/Z;Ljava/lang/Object;Lc/e/a/a/j/v$a;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;Lc/e/a/a/j/v$a;JJJ)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lc/e/a/a/J;->c:Ljava/lang/Object;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    move-wide v1, p4

    .line 5
    iput-wide v1, v0, Lc/e/a/a/J;->e:J

    move-wide v1, p6

    .line 6
    iput-wide v1, v0, Lc/e/a/a/J;->f:J

    move v1, p8

    .line 7
    iput v1, v0, Lc/e/a/a/J;->g:I

    move v1, p9

    .line 8
    iput-boolean v1, v0, Lc/e/a/a/J;->h:Z

    move-object v1, p10

    .line 9
    iput-object v1, v0, Lc/e/a/a/J;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lc/e/a/a/J;->j:Lc/e/a/a/l/s;

    move-object v1, p12

    .line 11
    iput-object v1, v0, Lc/e/a/a/J;->k:Lc/e/a/a/j/v$a;

    move-wide/from16 v1, p13

    .line 12
    iput-wide v1, v0, Lc/e/a/a/J;->l:J

    move-wide/from16 v1, p15

    .line 13
    iput-wide v1, v0, Lc/e/a/a/J;->m:J

    move-wide/from16 v1, p17

    .line 14
    iput-wide v1, v0, Lc/e/a/a/J;->n:J

    return-void
.end method

.method public static a(JLc/e/a/a/l/s;)Lc/e/a/a/J;
    .locals 20

    move-wide/from16 v4, p0

    move-wide/from16 v13, p0

    move-wide/from16 v17, p0

    move-object/from16 v11, p2

    .line 1
    new-instance v19, Lc/e/a/a/J;

    move-object/from16 v0, v19

    sget-object v1, Lc/e/a/a/Z;->a:Lc/e/a/a/Z;

    sget-object v3, Lc/e/a/a/J;->a:Lc/e/a/a/j/v$a;

    sget-object v10, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    sget-object v12, Lc/e/a/a/J;->a:Lc/e/a/a/j/v$a;

    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v15, 0x0

    invoke-direct/range {v0 .. v18}, Lc/e/a/a/J;-><init>(Lc/e/a/a/Z;Ljava/lang/Object;Lc/e/a/a/j/v$a;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;Lc/e/a/a/j/v$a;JJJ)V

    return-object v19
.end method


# virtual methods
.method public a(I)Lc/e/a/a/J;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v9, p1

    .line 12
    new-instance v20, Lc/e/a/a/J;

    move-object/from16 v1, v20

    iget-object v2, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object v3, v0, Lc/e/a/a/J;->c:Ljava/lang/Object;

    iget-object v4, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget-wide v5, v0, Lc/e/a/a/J;->e:J

    iget-wide v7, v0, Lc/e/a/a/J;->f:J

    iget-boolean v10, v0, Lc/e/a/a/J;->h:Z

    iget-object v11, v0, Lc/e/a/a/J;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lc/e/a/a/J;->j:Lc/e/a/a/l/s;

    iget-object v13, v0, Lc/e/a/a/J;->k:Lc/e/a/a/j/v$a;

    iget-wide v14, v0, Lc/e/a/a/J;->l:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lc/e/a/a/J;->m:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lc/e/a/a/J;->n:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Lc/e/a/a/J;-><init>(Lc/e/a/a/Z;Ljava/lang/Object;Lc/e/a/a/j/v$a;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;Lc/e/a/a/j/v$a;JJJ)V

    return-object v20
.end method

.method public a(Lc/e/a/a/Z;Ljava/lang/Object;)Lc/e/a/a/J;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 11
    new-instance v20, Lc/e/a/a/J;

    move-object/from16 v1, v20

    iget-object v4, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget-wide v5, v0, Lc/e/a/a/J;->e:J

    iget-wide v7, v0, Lc/e/a/a/J;->f:J

    iget v9, v0, Lc/e/a/a/J;->g:I

    iget-boolean v10, v0, Lc/e/a/a/J;->h:Z

    iget-object v11, v0, Lc/e/a/a/J;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lc/e/a/a/J;->j:Lc/e/a/a/l/s;

    iget-object v13, v0, Lc/e/a/a/J;->k:Lc/e/a/a/j/v$a;

    iget-wide v14, v0, Lc/e/a/a/J;->l:J

    move-object/from16 p2, v1

    iget-wide v1, v0, Lc/e/a/a/J;->m:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lc/e/a/a/J;->n:J

    move-wide/from16 v18, v1

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    invoke-direct/range {v1 .. v19}, Lc/e/a/a/J;-><init>(Lc/e/a/a/Z;Ljava/lang/Object;Lc/e/a/a/j/v$a;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;Lc/e/a/a/j/v$a;JJJ)V

    return-object v20
.end method

.method public a(Lc/e/a/a/j/v$a;)Lc/e/a/a/J;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 15
    new-instance v20, Lc/e/a/a/J;

    move-object/from16 v1, v20

    iget-object v2, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object v3, v0, Lc/e/a/a/J;->c:Ljava/lang/Object;

    iget-object v4, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget-wide v5, v0, Lc/e/a/a/J;->e:J

    iget-wide v7, v0, Lc/e/a/a/J;->f:J

    iget v9, v0, Lc/e/a/a/J;->g:I

    iget-boolean v10, v0, Lc/e/a/a/J;->h:Z

    iget-object v11, v0, Lc/e/a/a/J;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lc/e/a/a/J;->j:Lc/e/a/a/l/s;

    iget-wide v14, v0, Lc/e/a/a/J;->l:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lc/e/a/a/J;->m:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lc/e/a/a/J;->n:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Lc/e/a/a/J;-><init>(Lc/e/a/a/Z;Ljava/lang/Object;Lc/e/a/a/j/v$a;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;Lc/e/a/a/j/v$a;JJJ)V

    return-object v20
.end method

.method public a(Lc/e/a/a/j/v$a;JJ)Lc/e/a/a/J;
    .locals 21

    move-object/from16 v0, p0

    .line 7
    new-instance v20, Lc/e/a/a/J;

    iget-object v2, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object v3, v0, Lc/e/a/a/J;->c:Ljava/lang/Object;

    .line 8
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/v$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v7, p4

    goto :goto_0

    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    :goto_0
    iget v9, v0, Lc/e/a/a/J;->g:I

    iget-boolean v10, v0, Lc/e/a/a/J;->h:Z

    iget-object v11, v0, Lc/e/a/a/J;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lc/e/a/a/J;->j:Lc/e/a/a/l/s;

    const-wide/16 v16, 0x0

    move-object/from16 v1, v20

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    move-wide/from16 v18, p2

    invoke-direct/range {v1 .. v19}, Lc/e/a/a/J;-><init>(Lc/e/a/a/Z;Ljava/lang/Object;Lc/e/a/a/j/v$a;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;Lc/e/a/a/j/v$a;JJJ)V

    return-object v20
.end method

.method public a(Lc/e/a/a/j/v$a;JJJ)Lc/e/a/a/J;
    .locals 21

    move-object/from16 v0, p0

    .line 9
    new-instance v20, Lc/e/a/a/J;

    iget-object v2, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object v3, v0, Lc/e/a/a/J;->c:Ljava/lang/Object;

    .line 10
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/j/v$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v7, p4

    goto :goto_0

    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    :goto_0
    iget v9, v0, Lc/e/a/a/J;->g:I

    iget-boolean v10, v0, Lc/e/a/a/J;->h:Z

    iget-object v11, v0, Lc/e/a/a/J;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lc/e/a/a/J;->j:Lc/e/a/a/l/s;

    iget-object v13, v0, Lc/e/a/a/J;->k:Lc/e/a/a/j/v$a;

    iget-wide v14, v0, Lc/e/a/a/J;->l:J

    move-object/from16 v1, v20

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v16, p6

    move-wide/from16 v18, p2

    invoke-direct/range {v1 .. v19}, Lc/e/a/a/J;-><init>(Lc/e/a/a/Z;Ljava/lang/Object;Lc/e/a/a/j/v$a;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;Lc/e/a/a/j/v$a;JJJ)V

    return-object v20
.end method

.method public a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;)Lc/e/a/a/J;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 14
    new-instance v20, Lc/e/a/a/J;

    move-object/from16 v1, v20

    iget-object v2, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object v3, v0, Lc/e/a/a/J;->c:Ljava/lang/Object;

    iget-object v4, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget-wide v5, v0, Lc/e/a/a/J;->e:J

    iget-wide v7, v0, Lc/e/a/a/J;->f:J

    iget v9, v0, Lc/e/a/a/J;->g:I

    iget-boolean v10, v0, Lc/e/a/a/J;->h:Z

    iget-object v13, v0, Lc/e/a/a/J;->k:Lc/e/a/a/j/v$a;

    iget-wide v14, v0, Lc/e/a/a/J;->l:J

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lc/e/a/a/J;->m:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lc/e/a/a/J;->n:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v19}, Lc/e/a/a/J;-><init>(Lc/e/a/a/Z;Ljava/lang/Object;Lc/e/a/a/j/v$a;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;Lc/e/a/a/j/v$a;JJJ)V

    return-object v20
.end method

.method public a(Z)Lc/e/a/a/J;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v10, p1

    .line 13
    new-instance v20, Lc/e/a/a/J;

    move-object/from16 v1, v20

    iget-object v2, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object v3, v0, Lc/e/a/a/J;->c:Ljava/lang/Object;

    iget-object v4, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget-wide v5, v0, Lc/e/a/a/J;->e:J

    iget-wide v7, v0, Lc/e/a/a/J;->f:J

    iget v9, v0, Lc/e/a/a/J;->g:I

    iget-object v11, v0, Lc/e/a/a/J;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lc/e/a/a/J;->j:Lc/e/a/a/l/s;

    iget-object v13, v0, Lc/e/a/a/J;->k:Lc/e/a/a/j/v$a;

    iget-wide v14, v0, Lc/e/a/a/J;->l:J

    move-object/from16 p1, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lc/e/a/a/J;->m:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lc/e/a/a/J;->n:J

    move-wide/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v19}, Lc/e/a/a/J;-><init>(Lc/e/a/a/Z;Ljava/lang/Object;Lc/e/a/a/j/v$a;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;Lc/e/a/a/j/v$a;JJJ)V

    return-object v20
.end method

.method public a(ZLc/e/a/a/Z$b;)Lc/e/a/a/j/v$a;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    invoke-virtual {v0}, Lc/e/a/a/Z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lc/e/a/a/J;->a:Lc/e/a/a/j/v$a;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    .line 5
    invoke-virtual {v0, p1}, Lc/e/a/a/Z;->a(Z)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$b;)Lc/e/a/a/Z$b;

    move-result-object p1

    iget p1, p1, Lc/e/a/a/Z$b;->f:I

    .line 6
    new-instance p2, Lc/e/a/a/j/v$a;

    iget-object v0, p0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    invoke-virtual {v0, p1}, Lc/e/a/a/Z;->a(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lc/e/a/a/j/v$a;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method
