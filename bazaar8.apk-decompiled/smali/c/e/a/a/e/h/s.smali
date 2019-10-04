.class public final Lc/e/a/a/e/h/s;
.super Ljava/lang/Object;
.source "H265Reader.java"

# interfaces
.implements Lc/e/a/a/e/h/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/e/h/s$a;
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/a/e/h/E;

.field public b:Ljava/lang/String;

.field public c:Lc/e/a/a/e/q;

.field public d:Lc/e/a/a/e/h/s$a;

.field public e:Z

.field public final f:[Z

.field public final g:Lc/e/a/a/e/h/w;

.field public final h:Lc/e/a/a/e/h/w;

.field public final i:Lc/e/a/a/e/h/w;

.field public final j:Lc/e/a/a/e/h/w;

.field public final k:Lc/e/a/a/e/h/w;

.field public l:J

.field public m:J

.field public final n:Lc/e/a/a/o/v;


# direct methods
.method public constructor <init>(Lc/e/a/a/e/h/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/e/h/s;->a:Lc/e/a/a/e/h/E;

    const/4 p1, 0x3

    .line 3
    new-array p1, p1, [Z

    iput-object p1, p0, Lc/e/a/a/e/h/s;->f:[Z

    .line 4
    new-instance p1, Lc/e/a/a/e/h/w;

    const/16 v0, 0x80

    const/16 v1, 0x20

    invoke-direct {p1, v1, v0}, Lc/e/a/a/e/h/w;-><init>(II)V

    iput-object p1, p0, Lc/e/a/a/e/h/s;->g:Lc/e/a/a/e/h/w;

    .line 5
    new-instance p1, Lc/e/a/a/e/h/w;

    const/16 v1, 0x21

    invoke-direct {p1, v1, v0}, Lc/e/a/a/e/h/w;-><init>(II)V

    iput-object p1, p0, Lc/e/a/a/e/h/s;->h:Lc/e/a/a/e/h/w;

    .line 6
    new-instance p1, Lc/e/a/a/e/h/w;

    const/16 v1, 0x22

    invoke-direct {p1, v1, v0}, Lc/e/a/a/e/h/w;-><init>(II)V

    iput-object p1, p0, Lc/e/a/a/e/h/s;->i:Lc/e/a/a/e/h/w;

    .line 7
    new-instance p1, Lc/e/a/a/e/h/w;

    const/16 v1, 0x27

    invoke-direct {p1, v1, v0}, Lc/e/a/a/e/h/w;-><init>(II)V

    iput-object p1, p0, Lc/e/a/a/e/h/s;->j:Lc/e/a/a/e/h/w;

    .line 8
    new-instance p1, Lc/e/a/a/e/h/w;

    const/16 v1, 0x28

    invoke-direct {p1, v1, v0}, Lc/e/a/a/e/h/w;-><init>(II)V

    iput-object p1, p0, Lc/e/a/a/e/h/s;->k:Lc/e/a/a/e/h/w;

    .line 9
    new-instance p1, Lc/e/a/a/o/v;

    invoke-direct {p1}, Lc/e/a/a/o/v;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/h/s;->n:Lc/e/a/a/o/v;

    return-void
.end method

.method public static a(Ljava/lang/String;Lc/e/a/a/e/h/w;Lc/e/a/a/e/h/w;Lc/e/a/a/e/h/w;)Lcom/google/android/exoplayer2/Format;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 53
    iget v3, v0, Lc/e/a/a/e/h/w;->e:I

    iget v4, v1, Lc/e/a/a/e/h/w;->e:I

    add-int/2addr v4, v3

    iget v5, v2, Lc/e/a/a/e/h/w;->e:I

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 54
    iget-object v5, v0, Lc/e/a/a/e/h/w;->d:[B

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iget-object v3, v1, Lc/e/a/a/e/h/w;->d:[B

    iget v5, v0, Lc/e/a/a/e/h/w;->e:I

    iget v7, v1, Lc/e/a/a/e/h/w;->e:I

    invoke-static {v3, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget-object v3, v2, Lc/e/a/a/e/h/w;->d:[B

    iget v0, v0, Lc/e/a/a/e/h/w;->e:I

    iget v5, v1, Lc/e/a/a/e/h/w;->e:I

    add-int/2addr v0, v5

    iget v2, v2, Lc/e/a/a/e/h/w;->e:I

    invoke-static {v3, v6, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    new-instance v0, Lc/e/a/a/o/w;

    iget-object v2, v1, Lc/e/a/a/e/h/w;->d:[B

    iget v1, v1, Lc/e/a/a/e/h/w;->e:I

    invoke-direct {v0, v2, v6, v1}, Lc/e/a/a/o/w;-><init>([BII)V

    const/16 v1, 0x2c

    .line 58
    invoke-virtual {v0, v1}, Lc/e/a/a/o/w;->d(I)V

    const/4 v1, 0x3

    .line 59
    invoke-virtual {v0, v1}, Lc/e/a/a/o/w;->b(I)I

    move-result v2

    .line 60
    invoke-virtual {v0}, Lc/e/a/a/o/w;->g()V

    const/16 v3, 0x58

    .line 61
    invoke-virtual {v0, v3}, Lc/e/a/a/o/w;->d(I)V

    const/16 v3, 0x8

    .line 62
    invoke-virtual {v0, v3}, Lc/e/a/a/o/w;->d(I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    .line 63
    invoke-virtual {v0}, Lc/e/a/a/o/w;->c()Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v7, v7, 0x59

    .line 64
    :cond_0
    invoke-virtual {v0}, Lc/e/a/a/o/w;->c()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x8

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v0, v7}, Lc/e/a/a/o/w;->d(I)V

    const/4 v5, 0x2

    if-lez v2, :cond_3

    rsub-int/lit8 v7, v2, 0x8

    mul-int/lit8 v7, v7, 0x2

    .line 66
    invoke-virtual {v0, v7}, Lc/e/a/a/o/w;->d(I)V

    .line 67
    :cond_3
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    .line 68
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    move-result v7

    if-ne v7, v1, :cond_4

    .line 69
    invoke-virtual {v0}, Lc/e/a/a/o/w;->g()V

    .line 70
    :cond_4
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    move-result v1

    .line 71
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    move-result v8

    .line 72
    invoke-virtual {v0}, Lc/e/a/a/o/w;->c()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_8

    .line 73
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    move-result v9

    .line 74
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    move-result v11

    .line 75
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    move-result v12

    .line 76
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    move-result v13

    if-eq v7, v10, :cond_6

    if-ne v7, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v14, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v14, 0x2

    :goto_2
    if-ne v7, v10, :cond_7

    const/4 v7, 0x2

    goto :goto_3

    :cond_7
    const/4 v7, 0x1

    :goto_3
    add-int/2addr v9, v11

    mul-int v14, v14, v9

    sub-int/2addr v1, v14

    add-int/2addr v12, v13

    mul-int v7, v7, v12

    sub-int/2addr v8, v7

    :cond_8
    move/from16 v16, v1

    move/from16 v17, v8

    .line 77
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    .line 78
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    .line 79
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    move-result v1

    .line 80
    invoke-virtual {v0}, Lc/e/a/a/o/w;->c()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    move v7, v2

    :goto_4
    if-gt v7, v2, :cond_a

    .line 81
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    .line 82
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    .line 83
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 84
    :cond_a
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    .line 85
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    .line 86
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    .line 87
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    .line 88
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    .line 89
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    .line 90
    invoke-virtual {v0}, Lc/e/a/a/o/w;->c()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 91
    invoke-virtual {v0}, Lc/e/a/a/o/w;->c()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 92
    invoke-static {v0}, Lc/e/a/a/e/h/s;->a(Lc/e/a/a/o/w;)V

    .line 93
    :cond_b
    invoke-virtual {v0, v5}, Lc/e/a/a/o/w;->d(I)V

    .line 94
    invoke-virtual {v0}, Lc/e/a/a/o/w;->c()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 95
    invoke-virtual {v0, v3}, Lc/e/a/a/o/w;->d(I)V

    .line 96
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    .line 97
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    .line 98
    invoke-virtual {v0}, Lc/e/a/a/o/w;->g()V

    .line 99
    :cond_c
    invoke-static {v0}, Lc/e/a/a/e/h/s;->b(Lc/e/a/a/o/w;)V

    .line 100
    invoke-virtual {v0}, Lc/e/a/a/o/w;->c()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 101
    :goto_5
    invoke-virtual {v0}, Lc/e/a/a/o/w;->f()I

    move-result v2

    if-ge v6, v2, :cond_d

    add-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v10

    .line 102
    invoke-virtual {v0, v2}, Lc/e/a/a/o/w;->d(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 103
    :cond_d
    invoke-virtual {v0, v5}, Lc/e/a/a/o/w;->d(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {v0}, Lc/e/a/a/o/w;->c()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 105
    invoke-virtual {v0}, Lc/e/a/a/o/w;->c()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 106
    invoke-virtual {v0, v3}, Lc/e/a/a/o/w;->b(I)I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_f

    const/16 v2, 0x10

    .line 107
    invoke-virtual {v0, v2}, Lc/e/a/a/o/w;->b(I)I

    move-result v3

    .line 108
    invoke-virtual {v0, v2}, Lc/e/a/a/o/w;->b(I)I

    move-result v0

    if-eqz v3, :cond_e

    if-eqz v0, :cond_e

    int-to-float v1, v3

    int-to-float v0, v0

    div-float/2addr v1, v0

    :cond_e
    move/from16 v21, v1

    goto :goto_6

    .line 109
    :cond_f
    sget-object v0, Lc/e/a/a/o/t;->b:[F

    array-length v3, v0

    if-ge v2, v3, :cond_10

    .line 110
    aget v0, v0, v2

    move/from16 v21, v0

    goto :goto_6

    .line 111
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H265Reader"

    invoke-static {v2, v0}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const/high16 v21, 0x3f800000    # 1.0f

    :goto_6
    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    .line 112
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, -0x1

    const/16 v22, 0x0

    const-string v12, "video/hevc"

    move-object/from16 v11, p0

    .line 113
    invoke-static/range {v11 .. v22}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lc/e/a/a/o/w;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    .line 114
    invoke-virtual {p0}, Lc/e/a/a/o/w;->c()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 115
    invoke-virtual {p0}, Lc/e/a/a/o/w;->f()I

    goto :goto_3

    :cond_0
    const/16 v4, 0x40

    shl-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v2

    shl-int v6, v5, v6

    .line 116
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_1

    .line 117
    invoke-virtual {p0}, Lc/e/a/a/o/w;->e()I

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    .line 118
    invoke-virtual {p0}, Lc/e/a/a/o/w;->e()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    goto :goto_4

    :cond_3
    const/4 v4, 0x1

    :goto_4
    add-int/2addr v3, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static b(Lc/e/a/a/o/w;)V
    .locals 8

    .line 8
    invoke-virtual {p0}, Lc/e/a/a/o/w;->f()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {p0}, Lc/e/a/a/o/w;->c()Z

    move-result v3

    :cond_0
    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {p0}, Lc/e/a/a/o/w;->g()V

    .line 11
    invoke-virtual {p0}, Lc/e/a/a/o/w;->f()I

    const/4 v5, 0x0

    :goto_1
    if-gt v5, v4, :cond_5

    .line 12
    invoke-virtual {p0}, Lc/e/a/a/o/w;->c()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 13
    invoke-virtual {p0}, Lc/e/a/a/o/w;->g()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p0}, Lc/e/a/a/o/w;->f()I

    move-result v4

    .line 15
    invoke-virtual {p0}, Lc/e/a/a/o/w;->f()I

    move-result v5

    add-int v6, v4, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_3

    .line 16
    invoke-virtual {p0}, Lc/e/a/a/o/w;->f()I

    .line 17
    invoke-virtual {p0}, Lc/e/a/a/o/w;->g()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_4

    .line 18
    invoke-virtual {p0}, Lc/e/a/a/o/w;->f()I

    .line 19
    invoke-virtual {p0}, Lc/e/a/a/o/w;->g()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/e/h/s;->f:[Z

    invoke-static {v0}, Lc/e/a/a/o/t;->a([Z)V

    .line 2
    iget-object v0, p0, Lc/e/a/a/e/h/s;->g:Lc/e/a/a/e/h/w;

    invoke-virtual {v0}, Lc/e/a/a/e/h/w;->b()V

    .line 3
    iget-object v0, p0, Lc/e/a/a/e/h/s;->h:Lc/e/a/a/e/h/w;

    invoke-virtual {v0}, Lc/e/a/a/e/h/w;->b()V

    .line 4
    iget-object v0, p0, Lc/e/a/a/e/h/s;->i:Lc/e/a/a/e/h/w;

    invoke-virtual {v0}, Lc/e/a/a/e/h/w;->b()V

    .line 5
    iget-object v0, p0, Lc/e/a/a/e/h/s;->j:Lc/e/a/a/e/h/w;

    invoke-virtual {v0}, Lc/e/a/a/e/h/w;->b()V

    .line 6
    iget-object v0, p0, Lc/e/a/a/e/h/s;->k:Lc/e/a/a/e/h/w;

    invoke-virtual {v0}, Lc/e/a/a/e/h/w;->b()V

    .line 7
    iget-object v0, p0, Lc/e/a/a/e/h/s;->d:Lc/e/a/a/e/h/s$a;

    invoke-virtual {v0}, Lc/e/a/a/e/h/s$a;->a()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lc/e/a/a/e/h/s;->l:J

    return-void
.end method

.method public a(JI)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lc/e/a/a/e/h/s;->m:J

    return-void
.end method

.method public final a(JIIJ)V
    .locals 2

    .line 35
    iget-boolean v0, p0, Lc/e/a/a/e/h/s;->e:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lc/e/a/a/e/h/s;->d:Lc/e/a/a/e/h/s$a;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/a/e/h/s$a;->a(JI)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lc/e/a/a/e/h/s;->g:Lc/e/a/a/e/h/w;

    invoke-virtual {p1, p4}, Lc/e/a/a/e/h/w;->a(I)Z

    .line 38
    iget-object p1, p0, Lc/e/a/a/e/h/s;->h:Lc/e/a/a/e/h/w;

    invoke-virtual {p1, p4}, Lc/e/a/a/e/h/w;->a(I)Z

    .line 39
    iget-object p1, p0, Lc/e/a/a/e/h/s;->i:Lc/e/a/a/e/h/w;

    invoke-virtual {p1, p4}, Lc/e/a/a/e/h/w;->a(I)Z

    .line 40
    iget-object p1, p0, Lc/e/a/a/e/h/s;->g:Lc/e/a/a/e/h/w;

    invoke-virtual {p1}, Lc/e/a/a/e/h/w;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/e/a/a/e/h/s;->h:Lc/e/a/a/e/h/w;

    invoke-virtual {p1}, Lc/e/a/a/e/h/w;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/e/a/a/e/h/s;->i:Lc/e/a/a/e/h/w;

    invoke-virtual {p1}, Lc/e/a/a/e/h/w;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lc/e/a/a/e/h/s;->c:Lc/e/a/a/e/q;

    iget-object p2, p0, Lc/e/a/a/e/h/s;->b:Ljava/lang/String;

    iget-object p3, p0, Lc/e/a/a/e/h/s;->g:Lc/e/a/a/e/h/w;

    iget-object v0, p0, Lc/e/a/a/e/h/s;->h:Lc/e/a/a/e/h/w;

    iget-object v1, p0, Lc/e/a/a/e/h/s;->i:Lc/e/a/a/e/h/w;

    invoke-static {p2, p3, v0, v1}, Lc/e/a/a/e/h/s;->a(Ljava/lang/String;Lc/e/a/a/e/h/w;Lc/e/a/a/e/h/w;Lc/e/a/a/e/h/w;)Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Lc/e/a/a/e/q;->a(Lcom/google/android/exoplayer2/Format;)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lc/e/a/a/e/h/s;->e:Z

    .line 43
    :cond_1
    :goto_0
    iget-object p1, p0, Lc/e/a/a/e/h/s;->j:Lc/e/a/a/e/h/w;

    invoke-virtual {p1, p4}, Lc/e/a/a/e/h/w;->a(I)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_2

    .line 44
    iget-object p1, p0, Lc/e/a/a/e/h/s;->j:Lc/e/a/a/e/h/w;

    iget-object p3, p1, Lc/e/a/a/e/h/w;->d:[B

    iget p1, p1, Lc/e/a/a/e/h/w;->e:I

    invoke-static {p3, p1}, Lc/e/a/a/o/t;->c([BI)I

    move-result p1

    .line 45
    iget-object p3, p0, Lc/e/a/a/e/h/s;->n:Lc/e/a/a/o/v;

    iget-object v0, p0, Lc/e/a/a/e/h/s;->j:Lc/e/a/a/e/h/w;

    iget-object v0, v0, Lc/e/a/a/e/h/w;->d:[B

    invoke-virtual {p3, v0, p1}, Lc/e/a/a/o/v;->a([BI)V

    .line 46
    iget-object p1, p0, Lc/e/a/a/e/h/s;->n:Lc/e/a/a/o/v;

    invoke-virtual {p1, p2}, Lc/e/a/a/o/v;->f(I)V

    .line 47
    iget-object p1, p0, Lc/e/a/a/e/h/s;->a:Lc/e/a/a/e/h/E;

    iget-object p3, p0, Lc/e/a/a/e/h/s;->n:Lc/e/a/a/o/v;

    invoke-virtual {p1, p5, p6, p3}, Lc/e/a/a/e/h/E;->a(JLc/e/a/a/o/v;)V

    .line 48
    :cond_2
    iget-object p1, p0, Lc/e/a/a/e/h/s;->k:Lc/e/a/a/e/h/w;

    invoke-virtual {p1, p4}, Lc/e/a/a/e/h/w;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 49
    iget-object p1, p0, Lc/e/a/a/e/h/s;->k:Lc/e/a/a/e/h/w;

    iget-object p3, p1, Lc/e/a/a/e/h/w;->d:[B

    iget p1, p1, Lc/e/a/a/e/h/w;->e:I

    invoke-static {p3, p1}, Lc/e/a/a/o/t;->c([BI)I

    move-result p1

    .line 50
    iget-object p3, p0, Lc/e/a/a/e/h/s;->n:Lc/e/a/a/o/v;

    iget-object p4, p0, Lc/e/a/a/e/h/s;->k:Lc/e/a/a/e/h/w;

    iget-object p4, p4, Lc/e/a/a/e/h/w;->d:[B

    invoke-virtual {p3, p4, p1}, Lc/e/a/a/o/v;->a([BI)V

    .line 51
    iget-object p1, p0, Lc/e/a/a/e/h/s;->n:Lc/e/a/a/o/v;

    invoke-virtual {p1, p2}, Lc/e/a/a/o/v;->f(I)V

    .line 52
    iget-object p1, p0, Lc/e/a/a/e/h/s;->a:Lc/e/a/a/e/h/E;

    iget-object p2, p0, Lc/e/a/a/e/h/s;->n:Lc/e/a/a/o/v;

    invoke-virtual {p1, p5, p6, p2}, Lc/e/a/a/e/h/E;->a(JLc/e/a/a/o/v;)V

    :cond_3
    return-void
.end method

.method public a(Lc/e/a/a/e/i;Lc/e/a/a/e/h/J$d;)V
    .locals 2

    .line 9
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->a()V

    .line 10
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/e/h/s;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p2}, Lc/e/a/a/e/h/J$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lc/e/a/a/e/i;->a(II)Lc/e/a/a/e/q;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/e/h/s;->c:Lc/e/a/a/e/q;

    .line 12
    new-instance v0, Lc/e/a/a/e/h/s$a;

    iget-object v1, p0, Lc/e/a/a/e/h/s;->c:Lc/e/a/a/e/q;

    invoke-direct {v0, v1}, Lc/e/a/a/e/h/s$a;-><init>(Lc/e/a/a/e/q;)V

    iput-object v0, p0, Lc/e/a/a/e/h/s;->d:Lc/e/a/a/e/h/s$a;

    .line 13
    iget-object v0, p0, Lc/e/a/a/e/h/s;->a:Lc/e/a/a/e/h/E;

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/e/h/E;->a(Lc/e/a/a/e/i;Lc/e/a/a/e/h/J$d;)V

    return-void
.end method

.method public a(Lc/e/a/a/o/v;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 15
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/o/v;->a()I

    move-result v0

    if-lez v0, :cond_4

    .line 16
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/o/v;->c()I

    move-result v0

    .line 17
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/o/v;->d()I

    move-result v9

    .line 18
    iget-object v10, v8, Lc/e/a/a/o/v;->a:[B

    .line 19
    iget-wide v1, v7, Lc/e/a/a/e/h/s;->l:J

    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/o/v;->a()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lc/e/a/a/e/h/s;->l:J

    .line 20
    iget-object v1, v7, Lc/e/a/a/e/h/s;->c:Lc/e/a/a/e/q;

    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/o/v;->a()I

    move-result v2

    invoke-interface {v1, v8, v2}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    :goto_0
    if-ge v0, v9, :cond_0

    .line 21
    iget-object v1, v7, Lc/e/a/a/e/h/s;->f:[Z

    invoke-static {v10, v0, v9, v1}, Lc/e/a/a/o/t;->a([BII[Z)I

    move-result v11

    if-ne v11, v9, :cond_1

    .line 22
    invoke-virtual {v7, v10, v0, v9}, Lc/e/a/a/e/h/s;->a([BII)V

    return-void

    .line 23
    :cond_1
    invoke-static {v10, v11}, Lc/e/a/a/o/t;->a([BI)I

    move-result v12

    sub-int v1, v11, v0

    if-lez v1, :cond_2

    .line 24
    invoke-virtual {v7, v10, v0, v11}, Lc/e/a/a/e/h/s;->a([BII)V

    :cond_2
    sub-int v13, v9, v11

    .line 25
    iget-wide v2, v7, Lc/e/a/a/e/h/s;->l:J

    int-to-long v4, v13

    sub-long v14, v2, v4

    if-gez v1, :cond_3

    neg-int v0, v1

    move v4, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 26
    :goto_1
    iget-wide v5, v7, Lc/e/a/a/e/h/s;->m:J

    move-object/from16 v0, p0

    move-wide v1, v14

    move v3, v13

    invoke-virtual/range {v0 .. v6}, Lc/e/a/a/e/h/s;->a(JIIJ)V

    .line 27
    iget-wide v5, v7, Lc/e/a/a/e/h/s;->m:J

    move v4, v12

    invoke-virtual/range {v0 .. v6}, Lc/e/a/a/e/h/s;->b(JIIJ)V

    add-int/lit8 v0, v11, 0x3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final a([BII)V
    .locals 1

    .line 28
    iget-boolean v0, p0, Lc/e/a/a/e/h/s;->e:Z

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lc/e/a/a/e/h/s;->d:Lc/e/a/a/e/h/s$a;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/a/e/h/s$a;->a([BII)V

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lc/e/a/a/e/h/s;->g:Lc/e/a/a/e/h/w;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/a/e/h/w;->a([BII)V

    .line 31
    iget-object v0, p0, Lc/e/a/a/e/h/s;->h:Lc/e/a/a/e/h/w;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/a/e/h/w;->a([BII)V

    .line 32
    iget-object v0, p0, Lc/e/a/a/e/h/s;->i:Lc/e/a/a/e/h/w;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/a/e/h/w;->a([BII)V

    .line 33
    :goto_0
    iget-object v0, p0, Lc/e/a/a/e/h/s;->j:Lc/e/a/a/e/h/w;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/a/e/h/w;->a([BII)V

    .line 34
    iget-object v0, p0, Lc/e/a/a/e/h/s;->k:Lc/e/a/a/e/h/w;

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/a/e/h/w;->a([BII)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final b(JIIJ)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/e/h/s;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lc/e/a/a/e/h/s;->d:Lc/e/a/a/e/h/s$a;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lc/e/a/a/e/h/s$a;->a(JIIJ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lc/e/a/a/e/h/s;->g:Lc/e/a/a/e/h/w;

    invoke-virtual {p1, p4}, Lc/e/a/a/e/h/w;->b(I)V

    .line 4
    iget-object p1, p0, Lc/e/a/a/e/h/s;->h:Lc/e/a/a/e/h/w;

    invoke-virtual {p1, p4}, Lc/e/a/a/e/h/w;->b(I)V

    .line 5
    iget-object p1, p0, Lc/e/a/a/e/h/s;->i:Lc/e/a/a/e/h/w;

    invoke-virtual {p1, p4}, Lc/e/a/a/e/h/w;->b(I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lc/e/a/a/e/h/s;->j:Lc/e/a/a/e/h/w;

    invoke-virtual {p1, p4}, Lc/e/a/a/e/h/w;->b(I)V

    .line 7
    iget-object p1, p0, Lc/e/a/a/e/h/s;->k:Lc/e/a/a/e/h/w;

    invoke-virtual {p1, p4}, Lc/e/a/a/e/h/w;->b(I)V

    return-void
.end method
