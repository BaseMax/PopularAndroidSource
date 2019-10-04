.class public final Lc/e/a/a/j/d/j;
.super Lc/e/a/a/j/b/l;
.source "HlsMediaChunk.java"


# static fields
.field public static final j:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final A:Z

.field public B:Lc/e/a/a/e/g;

.field public C:Z

.field public D:Lc/e/a/a/j/d/o;

.field public E:I

.field public F:Z

.field public volatile G:Z

.field public H:Z

.field public final k:I

.field public final l:I

.field public final m:Landroid/net/Uri;

.field public final n:Lc/e/a/a/n/j;

.field public final o:Lc/e/a/a/n/l;

.field public final p:Z

.field public final q:Z

.field public final r:Lc/e/a/a/o/F;

.field public final s:Z

.field public final t:Lc/e/a/a/j/d/h;

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public final w:Lc/e/a/a/e/g;

.field public final x:Lc/e/a/a/g/c/h;

.field public final y:Lc/e/a/a/o/v;

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lc/e/a/a/j/d/j;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/j/d/h;Lc/e/a/a/n/j;Lc/e/a/a/n/l;Lcom/google/android/exoplayer2/Format;ZLc/e/a/a/n/j;Lc/e/a/a/n/l;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLc/e/a/a/o/F;Lcom/google/android/exoplayer2/drm/DrmInitData;Lc/e/a/a/e/g;Lc/e/a/a/g/c/h;Lc/e/a/a/o/v;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/d/h;",
            "Lc/e/a/a/n/j;",
            "Lc/e/a/a/n/l;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z",
            "Lc/e/a/a/n/j;",
            "Lc/e/a/a/n/l;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZZ",
            "Lc/e/a/a/o/F;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lc/e/a/a/e/g;",
            "Lc/e/a/a/g/c/h;",
            "Lc/e/a/a/o/v;",
            "Z)V"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v13, p7

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    .line 1
    invoke-direct/range {v0 .. v11}, Lc/e/a/a/j/b/l;-><init>(Lc/e/a/a/n/j;Lc/e/a/a/n/l;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    move/from16 v0, p5

    .line 2
    iput-boolean v0, v12, Lc/e/a/a/j/d/j;->z:Z

    move/from16 v0, p19

    .line 3
    iput v0, v12, Lc/e/a/a/j/d/j;->l:I

    move-object/from16 v0, p6

    .line 4
    iput-object v0, v12, Lc/e/a/a/j/d/j;->n:Lc/e/a/a/n/j;

    .line 5
    iput-object v13, v12, Lc/e/a/a/j/d/j;->o:Lc/e/a/a/n/l;

    move/from16 v0, p8

    .line 6
    iput-boolean v0, v12, Lc/e/a/a/j/d/j;->A:Z

    move-object/from16 v0, p9

    .line 7
    iput-object v0, v12, Lc/e/a/a/j/d/j;->m:Landroid/net/Uri;

    move/from16 v0, p21

    .line 8
    iput-boolean v0, v12, Lc/e/a/a/j/d/j;->p:Z

    move-object/from16 v0, p22

    .line 9
    iput-object v0, v12, Lc/e/a/a/j/d/j;->r:Lc/e/a/a/o/F;

    move/from16 v0, p20

    .line 10
    iput-boolean v0, v12, Lc/e/a/a/j/d/j;->q:Z

    move-object v0, p1

    .line 11
    iput-object v0, v12, Lc/e/a/a/j/d/j;->t:Lc/e/a/a/j/d/h;

    move-object/from16 v0, p10

    .line 12
    iput-object v0, v12, Lc/e/a/a/j/d/j;->u:Ljava/util/List;

    move-object/from16 v0, p23

    .line 13
    iput-object v0, v12, Lc/e/a/a/j/d/j;->v:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v0, p24

    .line 14
    iput-object v0, v12, Lc/e/a/a/j/d/j;->w:Lc/e/a/a/e/g;

    move-object/from16 v0, p25

    .line 15
    iput-object v0, v12, Lc/e/a/a/j/d/j;->x:Lc/e/a/a/g/c/h;

    move-object/from16 v0, p26

    .line 16
    iput-object v0, v12, Lc/e/a/a/j/d/j;->y:Lc/e/a/a/o/v;

    move/from16 v0, p27

    .line 17
    iput-boolean v0, v12, Lc/e/a/a/j/d/j;->s:Z

    if-eqz v13, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iput-boolean v0, v12, Lc/e/a/a/j/d/j;->F:Z

    .line 19
    sget-object v0, Lc/e/a/a/j/d/j;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Lc/e/a/a/j/d/j;->k:I

    return-void
.end method

.method public static a(Lc/e/a/a/j/d/h;Lc/e/a/a/n/j;Lcom/google/android/exoplayer2/Format;JLc/e/a/a/j/d/a/f;ILandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLc/e/a/a/j/d/r;Lc/e/a/a/j/d/j;[B[B)Lc/e/a/a/j/d/j;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/d/h;",
            "Lc/e/a/a/n/j;",
            "Lcom/google/android/exoplayer2/Format;",
            "J",
            "Lc/e/a/a/j/d/a/f;",
            "I",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "Z",
            "Lc/e/a/a/j/d/r;",
            "Lc/e/a/a/j/d/j;",
            "[B[B)",
            "Lc/e/a/a/j/d/j;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p13

    move-object/from16 v4, p14

    move-object/from16 v5, p15

    .line 1
    iget-object v6, v1, Lc/e/a/a/j/d/a/f;->o:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/e/a/a/j/d/a/f$a;

    .line 2
    new-instance v14, Lc/e/a/a/n/l;

    iget-object v7, v1, Lc/e/a/a/j/d/a/g;->a:Ljava/lang/String;

    iget-object v8, v6, Lc/e/a/a/j/d/a/f$a;->a:Ljava/lang/String;

    .line 3
    invoke-static {v7, v8}, Lc/e/a/a/o/H;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-wide v9, v6, Lc/e/a/a/j/d/a/f$a;->j:J

    iget-wide v11, v6, Lc/e/a/a/j/d/a/f$a;->k:J

    const/4 v13, 0x0

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lc/e/a/a/n/l;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    if-eqz v4, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_1

    .line 4
    iget-object v10, v6, Lc/e/a/a/j/d/a/f$a;->i:Ljava/lang/String;

    .line 5
    invoke-static {v10}, Lc/e/a/a/j/d/j;->a(Ljava/lang/String;)[B

    move-result-object v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 6
    :goto_1
    invoke-static {v0, v4, v10}, Lc/e/a/a/j/d/j;->a(Lc/e/a/a/n/j;[B[B)Lc/e/a/a/n/j;

    move-result-object v4

    .line 7
    iget-object v10, v6, Lc/e/a/a/j/d/a/f$a;->b:Lc/e/a/a/j/d/a/f$a;

    if-eqz v10, :cond_4

    if-eqz v5, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_3

    .line 8
    iget-object v13, v10, Lc/e/a/a/j/d/a/f$a;->i:Ljava/lang/String;

    .line 9
    invoke-static {v13}, Lc/e/a/a/j/d/j;->a(Ljava/lang/String;)[B

    move-result-object v13

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 10
    :goto_3
    iget-object v15, v1, Lc/e/a/a/j/d/a/g;->a:Ljava/lang/String;

    iget-object v7, v10, Lc/e/a/a/j/d/a/f$a;->a:Ljava/lang/String;

    invoke-static {v15, v7}, Lc/e/a/a/o/H;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 11
    new-instance v7, Lc/e/a/a/n/l;

    iget-wide v8, v10, Lc/e/a/a/j/d/a/f$a;->j:J

    move/from16 p14, v11

    iget-wide v10, v10, Lc/e/a/a/j/d/a/f$a;->k:J

    const/16 v23, 0x0

    move-object/from16 v17, v7

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-direct/range {v17 .. v23}, Lc/e/a/a/n/l;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 12
    invoke-static {v0, v5, v13}, Lc/e/a/a/j/d/j;->a(Lc/e/a/a/n/j;[B[B)Lc/e/a/a/n/j;

    move-result-object v0

    move/from16 v5, p14

    move-object v13, v0

    move-object v0, v7

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 13
    :goto_4
    iget-wide v7, v6, Lc/e/a/a/j/d/a/f$a;->f:J

    add-long v20, p3, v7

    .line 14
    iget-wide v7, v6, Lc/e/a/a/j/d/a/f$a;->c:J

    add-long v22, v20, v7

    .line 15
    iget v7, v1, Lc/e/a/a/j/d/a/f;->h:I

    iget v8, v6, Lc/e/a/a/j/d/a/f$a;->e:I

    add-int v11, v7, v8

    if-eqz v3, :cond_8

    .line 16
    iget-object v7, v3, Lc/e/a/a/j/d/j;->x:Lc/e/a/a/g/c/h;

    .line 17
    iget-object v8, v3, Lc/e/a/a/j/d/j;->y:Lc/e/a/a/o/v;

    .line 18
    iget-object v9, v3, Lc/e/a/a/j/d/j;->m:Landroid/net/Uri;

    move-object/from16 v10, p7

    .line 19
    invoke-virtual {v10, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, v3, Lc/e/a/a/j/d/j;->H:Z

    if-nez v9, :cond_5

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/16 v16, 0x1

    .line 20
    :goto_6
    iget-boolean v9, v3, Lc/e/a/a/j/d/j;->C:Z

    if-eqz v9, :cond_7

    iget v9, v3, Lc/e/a/a/j/d/j;->l:I

    if-ne v9, v11, :cond_7

    if-nez v16, :cond_7

    iget-object v9, v3, Lc/e/a/a/j/d/j;->B:Lc/e/a/a/e/g;

    move-object/from16 v24, v9

    goto :goto_7

    :cond_7
    const/16 v24, 0x0

    :goto_7
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    move/from16 v34, v16

    move-object/from16 v31, v24

    goto :goto_8

    :cond_8
    move-object/from16 v10, p7

    .line 21
    new-instance v3, Lc/e/a/a/g/c/h;

    invoke-direct {v3}, Lc/e/a/a/g/c/h;-><init>()V

    .line 22
    new-instance v7, Lc/e/a/a/o/v;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Lc/e/a/a/o/v;-><init>(I)V

    move-object/from16 v32, v3

    move-object/from16 v33, v7

    const/16 v31, 0x0

    const/16 v34, 0x0

    .line 23
    :goto_8
    new-instance v3, Lc/e/a/a/j/d/j;

    move-object v7, v3

    iget-wide v8, v1, Lc/e/a/a/j/d/a/f;->i:J

    int-to-long v1, v2

    add-long v24, v8, v1

    iget-boolean v1, v6, Lc/e/a/a/j/d/a/f$a;->l:Z

    move/from16 v27, v1

    move-object/from16 v1, p12

    .line 24
    invoke-virtual {v1, v11}, Lc/e/a/a/j/d/r;->a(I)Lc/e/a/a/o/F;

    move-result-object v29

    iget-object v1, v6, Lc/e/a/a/j/d/a/f$a;->g:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v30, v1

    move-object/from16 v8, p0

    move-object v9, v4

    move-object v10, v14

    move v1, v11

    move-object/from16 v11, p2

    move-object v14, v0

    move v15, v5

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move/from16 v18, p9

    move-object/from16 v19, p10

    move/from16 v26, v1

    move/from16 v28, p11

    invoke-direct/range {v7 .. v34}, Lc/e/a/a/j/d/j;-><init>(Lc/e/a/a/j/d/h;Lc/e/a/a/n/j;Lc/e/a/a/n/l;Lcom/google/android/exoplayer2/Format;ZLc/e/a/a/n/j;Lc/e/a/a/n/l;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLc/e/a/a/o/F;Lcom/google/android/exoplayer2/drm/DrmInitData;Lc/e/a/a/e/g;Lc/e/a/a/g/c/h;Lc/e/a/a/o/v;Z)V

    return-object v3
.end method

.method public static a(Lc/e/a/a/n/j;[B[B)Lc/e/a/a/n/j;
    .locals 1

    if-eqz p1, :cond_0

    .line 90
    new-instance v0, Lc/e/a/a/j/d/d;

    invoke-direct {v0, p0, p1, p2}, Lc/e/a/a/j/d/d;-><init>(Lc/e/a/a/n/j;[B[B)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 4

    .line 84
    invoke-static {p0}, Lc/e/a/a/o/I;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 86
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 87
    new-array v0, v1, [B

    .line 88
    array-length v2, p0

    if-le v2, v1, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 89
    :goto_0
    array-length v1, v0

    array-length v3, p0

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public final a(Lc/e/a/a/e/h;)J
    .locals 8

    .line 63
    invoke-interface {p1}, Lc/e/a/a/e/h;->b()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    :try_start_0
    iget-object v2, p0, Lc/e/a/a/j/d/j;->y:Lc/e/a/a/o/v;

    iget-object v2, v2, Lc/e/a/a/o/v;->a:[B

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Lc/e/a/a/e/h;->a([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    iget-object v2, p0, Lc/e/a/a/j/d/j;->y:Lc/e/a/a/o/v;

    invoke-virtual {v2, v3}, Lc/e/a/a/o/v;->c(I)V

    .line 66
    iget-object v2, p0, Lc/e/a/a/j/d/j;->y:Lc/e/a/a/o/v;

    invoke-virtual {v2}, Lc/e/a/a/o/v;->x()I

    move-result v2

    .line 67
    sget v5, Lc/e/a/a/g/c/h;->b:I

    if-eq v2, v5, :cond_0

    return-wide v0

    .line 68
    :cond_0
    iget-object v2, p0, Lc/e/a/a/j/d/j;->y:Lc/e/a/a/o/v;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lc/e/a/a/o/v;->f(I)V

    .line 69
    iget-object v2, p0, Lc/e/a/a/j/d/j;->y:Lc/e/a/a/o/v;

    invoke-virtual {v2}, Lc/e/a/a/o/v;->t()I

    move-result v2

    add-int/lit8 v5, v2, 0xa

    .line 70
    iget-object v6, p0, Lc/e/a/a/j/d/j;->y:Lc/e/a/a/o/v;

    invoke-virtual {v6}, Lc/e/a/a/o/v;->b()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 71
    iget-object v6, p0, Lc/e/a/a/j/d/j;->y:Lc/e/a/a/o/v;

    iget-object v7, v6, Lc/e/a/a/o/v;->a:[B

    .line 72
    invoke-virtual {v6, v5}, Lc/e/a/a/o/v;->c(I)V

    .line 73
    iget-object v5, p0, Lc/e/a/a/j/d/j;->y:Lc/e/a/a/o/v;

    iget-object v5, v5, Lc/e/a/a/o/v;->a:[B

    invoke-static {v7, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    :cond_1
    iget-object v5, p0, Lc/e/a/a/j/d/j;->y:Lc/e/a/a/o/v;

    iget-object v5, v5, Lc/e/a/a/o/v;->a:[B

    invoke-interface {p1, v5, v3, v2}, Lc/e/a/a/e/h;->a([BII)V

    .line 75
    iget-object p1, p0, Lc/e/a/a/j/d/j;->x:Lc/e/a/a/g/c/h;

    iget-object v3, p0, Lc/e/a/a/j/d/j;->y:Lc/e/a/a/o/v;

    iget-object v3, v3, Lc/e/a/a/o/v;->a:[B

    invoke-virtual {p1, v3, v2}, Lc/e/a/a/g/c/h;->a([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    if-nez p1, :cond_2

    return-wide v0

    .line 76
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->a()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 77
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->a(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v5

    .line 78
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    if-eqz v6, :cond_3

    .line 79
    check-cast v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    .line 80
    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->b:Ljava/lang/String;

    const-string v7, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 81
    iget-object p1, v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->c:[B

    iget-object v0, p0, Lc/e/a/a/j/d/j;->y:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    const/16 v1, 0x8

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget-object p1, p0, Lc/e/a/a/j/d/j;->y:Lc/e/a/a/o/v;

    invoke-virtual {p1, v1}, Lc/e/a/a/o/v;->c(I)V

    .line 83
    iget-object p1, p0, Lc/e/a/a/j/d/j;->y:Lc/e/a/a/o/v;

    invoke-virtual {p1}, Lc/e/a/a/o/v;->q()J

    move-result-wide v0

    const-wide v2, 0x1ffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    return-wide v0
.end method

.method public final a(Lc/e/a/a/n/j;Lc/e/a/a/n/l;)Lc/e/a/a/e/d;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 47
    invoke-interface/range {p1 .. p2}, Lc/e/a/a/n/j;->a(Lc/e/a/a/n/l;)J

    move-result-wide v6

    .line 48
    new-instance v15, Lc/e/a/a/e/d;

    iget-wide v4, v1, Lc/e/a/a/n/l;->e:J

    move-object v2, v15

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lc/e/a/a/e/d;-><init>(Lc/e/a/a/n/j;JJ)V

    .line 49
    iget-object v2, v0, Lc/e/a/a/j/d/j;->B:Lc/e/a/a/e/g;

    if-nez v2, :cond_2

    .line 50
    invoke-virtual {v0, v15}, Lc/e/a/a/j/d/j;->a(Lc/e/a/a/e/h;)J

    move-result-wide v2

    .line 51
    invoke-virtual {v15}, Lc/e/a/a/e/d;->b()V

    .line 52
    iget-object v8, v0, Lc/e/a/a/j/d/j;->t:Lc/e/a/a/j/d/h;

    iget-object v9, v0, Lc/e/a/a/j/d/j;->w:Lc/e/a/a/e/g;

    iget-object v10, v1, Lc/e/a/a/n/l;->a:Landroid/net/Uri;

    iget-object v11, v0, Lc/e/a/a/j/b/d;->c:Lcom/google/android/exoplayer2/Format;

    iget-object v12, v0, Lc/e/a/a/j/d/j;->u:Ljava/util/List;

    iget-object v13, v0, Lc/e/a/a/j/d/j;->v:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v14, v0, Lc/e/a/a/j/d/j;->r:Lc/e/a/a/o/F;

    .line 53
    invoke-interface/range {p1 .. p1}, Lc/e/a/a/n/j;->a()Ljava/util/Map;

    move-result-object v1

    move-object v4, v15

    move-object v15, v1

    move-object/from16 v16, v4

    .line 54
    invoke-interface/range {v8 .. v16}, Lc/e/a/a/j/d/h;->a(Lc/e/a/a/e/g;Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lc/e/a/a/o/F;Ljava/util/Map;Lc/e/a/a/e/h;)Lc/e/a/a/j/d/h$a;

    move-result-object v1

    .line 55
    iget-object v5, v1, Lc/e/a/a/j/d/h$a;->a:Lc/e/a/a/e/g;

    iput-object v5, v0, Lc/e/a/a/j/d/j;->B:Lc/e/a/a/e/g;

    .line 56
    iget-boolean v5, v1, Lc/e/a/a/j/d/h$a;->c:Z

    iput-boolean v5, v0, Lc/e/a/a/j/d/j;->C:Z

    .line 57
    iget-boolean v1, v1, Lc/e/a/a/j/d/h$a;->b:Z

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, v0, Lc/e/a/a/j/d/j;->D:Lc/e/a/a/j/d/o;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    if-eqz v7, :cond_0

    iget-object v5, v0, Lc/e/a/a/j/d/j;->r:Lc/e/a/a/o/F;

    .line 59
    invoke-virtual {v5, v2, v3}, Lc/e/a/a/o/F;->b(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Lc/e/a/a/j/b/d;->f:J

    .line 60
    :goto_0
    invoke-virtual {v1, v2, v3}, Lc/e/a/a/j/d/o;->e(J)V

    .line 61
    :cond_1
    iget-object v1, v0, Lc/e/a/a/j/d/j;->D:Lc/e/a/a/j/d/o;

    iget v2, v0, Lc/e/a/a/j/d/j;->k:I

    iget-boolean v3, v0, Lc/e/a/a/j/d/j;->s:Z

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Lc/e/a/a/j/d/o;->a(IZZ)V

    .line 62
    iget-object v1, v0, Lc/e/a/a/j/d/j;->B:Lc/e/a/a/e/g;

    iget-object v2, v0, Lc/e/a/a/j/d/j;->D:Lc/e/a/a/j/d/o;

    invoke-interface {v1, v2}, Lc/e/a/a/e/g;->a(Lc/e/a/a/e/i;)V

    goto :goto_1

    :cond_2
    move-object v4, v15

    :goto_1
    return-object v4
.end method

.method public a()V
    .locals 4

    .line 26
    iget-object v0, p0, Lc/e/a/a/j/d/j;->B:Lc/e/a/a/e/g;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/j/d/j;->w:Lc/e/a/a/e/g;

    if-eqz v0, :cond_0

    .line 27
    iput-object v0, p0, Lc/e/a/a/j/d/j;->B:Lc/e/a/a/e/g;

    .line 28
    iput-boolean v1, p0, Lc/e/a/a/j/d/j;->C:Z

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lc/e/a/a/j/d/j;->F:Z

    .line 30
    iget-object v0, p0, Lc/e/a/a/j/d/j;->D:Lc/e/a/a/j/d/o;

    iget v2, p0, Lc/e/a/a/j/d/j;->k:I

    iget-boolean v3, p0, Lc/e/a/a/j/d/j;->s:Z

    invoke-virtual {v0, v2, v3, v1}, Lc/e/a/a/j/d/o;->a(IZZ)V

    .line 31
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/j/d/j;->j()V

    .line 32
    iget-boolean v0, p0, Lc/e/a/a/j/d/j;->G:Z

    if-nez v0, :cond_2

    .line 33
    iget-boolean v0, p0, Lc/e/a/a/j/d/j;->q:Z

    if-nez v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lc/e/a/a/j/d/j;->i()V

    .line 35
    :cond_1
    iput-boolean v1, p0, Lc/e/a/a/j/d/j;->H:Z

    :cond_2
    return-void
.end method

.method public a(Lc/e/a/a/j/d/o;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lc/e/a/a/j/d/j;->D:Lc/e/a/a/j/d/o;

    return-void
.end method

.method public final a(Lc/e/a/a/n/j;Lc/e/a/a/n/l;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 36
    iget p3, p0, Lc/e/a/a/j/d/j;->E:I

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move v1, p3

    move-object p3, p2

    goto :goto_1

    .line 37
    :cond_1
    iget p3, p0, Lc/e/a/a/j/d/j;->E:I

    int-to-long v1, p3

    invoke-virtual {p2, v1, v2}, Lc/e/a/a/n/l;->a(J)Lc/e/a/a/n/l;

    move-result-object p3

    const/4 v1, 0x0

    .line 38
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lc/e/a/a/j/d/j;->a(Lc/e/a/a/n/j;Lc/e/a/a/n/l;)Lc/e/a/a/e/d;

    move-result-object p3

    if-eqz v1, :cond_2

    .line 39
    iget v1, p0, Lc/e/a/a/j/d/j;->E:I

    invoke-interface {p3, v1}, Lc/e/a/a/e/h;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 40
    :try_start_1
    iget-boolean v0, p0, Lc/e/a/a/j/d/j;->G:Z

    if-nez v0, :cond_3

    .line 41
    iget-object v0, p0, Lc/e/a/a/j/d/j;->B:Lc/e/a/a/e/g;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lc/e/a/a/e/g;->a(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 42
    :try_start_2
    invoke-interface {p3}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v1

    iget-wide p2, p2, Lc/e/a/a/n/l;->e:J

    sub-long/2addr v1, p2

    long-to-int p2, v1

    iput p2, p0, Lc/e/a/a/j/d/j;->E:I

    .line 43
    throw v0

    .line 44
    :cond_3
    invoke-interface {p3}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v0

    iget-wide p2, p2, Lc/e/a/a/n/l;->e:J

    sub-long/2addr v0, p2

    long-to-int p2, v0

    iput p2, p0, Lc/e/a/a/j/d/j;->E:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    invoke-static {p1}, Lc/e/a/a/o/I;->a(Lc/e/a/a/n/j;)V

    return-void

    :catchall_1
    move-exception p2

    invoke-static {p1}, Lc/e/a/a/o/I;->a(Lc/e/a/a/n/j;)V

    .line 46
    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/j/d/j;->G:Z

    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/d/j;->H:Z

    return v0
.end method

.method public final i()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/d/j;->p:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/d/j;->r:Lc/e/a/a/o/F;

    invoke-virtual {v0}, Lc/e/a/a/o/F;->e()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/d/j;->r:Lc/e/a/a/o/F;

    invoke-virtual {v0}, Lc/e/a/a/o/F;->a()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 4
    iget-object v0, p0, Lc/e/a/a/j/d/j;->r:Lc/e/a/a/o/F;

    iget-wide v1, p0, Lc/e/a/a/j/b/d;->f:J

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/o/F;->d(J)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/e/a/a/j/b/d;->h:Lc/e/a/a/n/z;

    iget-object v1, p0, Lc/e/a/a/j/b/d;->a:Lc/e/a/a/n/l;

    iget-boolean v2, p0, Lc/e/a/a/j/d/j;->z:Z

    invoke-virtual {p0, v0, v1, v2}, Lc/e/a/a/j/d/j;->a(Lc/e/a/a/n/j;Lc/e/a/a/n/l;Z)V

    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/d/j;->F:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/d/j;->n:Lc/e/a/a/n/j;

    iget-object v1, p0, Lc/e/a/a/j/d/j;->o:Lc/e/a/a/n/l;

    iget-boolean v2, p0, Lc/e/a/a/j/d/j;->A:Z

    invoke-virtual {p0, v0, v1, v2}, Lc/e/a/a/j/d/j;->a(Lc/e/a/a/n/j;Lc/e/a/a/n/l;Z)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc/e/a/a/j/d/j;->E:I

    .line 4
    iput-boolean v0, p0, Lc/e/a/a/j/d/j;->F:Z

    return-void
.end method
