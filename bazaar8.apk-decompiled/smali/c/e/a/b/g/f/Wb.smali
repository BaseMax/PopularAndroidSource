.class public final Lc/e/a/b/g/f/Wb;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/g/f/hc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/e/a/b/g/f/hc<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final a:[I

.field public static final b:Lsun/misc/Unsafe;


# instance fields
.field public final c:[I

.field public final d:[Ljava/lang/Object;

.field public final e:I

.field public final f:I

.field public final g:Lc/e/a/b/g/f/Sb;

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:[I

.field public final m:I

.field public final n:I

.field public final o:Lc/e/a/b/g/f/Zb;

.field public final p:Lc/e/a/b/g/f/Db;

.field public final q:Lc/e/a/b/g/f/zc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/zc<",
            "**>;"
        }
    .end annotation
.end field

.field public final r:Lc/e/a/b/g/f/db;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/db<",
            "*>;"
        }
    .end annotation
.end field

.field public final s:Lc/e/a/b/g/f/Nb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [I

    sput-object v0, Lc/e/a/b/g/f/Wb;->a:[I

    .line 2
    invoke-static {}, Lc/e/a/b/g/f/Fc;->d()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lc/e/a/b/g/f/Wb;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILc/e/a/b/g/f/Sb;ZZ[IIILc/e/a/b/g/f/Zb;Lc/e/a/b/g/f/Db;Lc/e/a/b/g/f/zc;Lc/e/a/b/g/f/db;Lc/e/a/b/g/f/Nb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lc/e/a/b/g/f/Sb;",
            "ZZ[III",
            "Lc/e/a/b/g/f/Zb;",
            "Lc/e/a/b/g/f/Db;",
            "Lc/e/a/b/g/f/zc<",
            "**>;",
            "Lc/e/a/b/g/f/db<",
            "*>;",
            "Lc/e/a/b/g/f/Nb;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/b/g/f/Wb;->c:[I

    .line 3
    iput-object p2, p0, Lc/e/a/b/g/f/Wb;->d:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lc/e/a/b/g/f/Wb;->e:I

    .line 5
    iput p4, p0, Lc/e/a/b/g/f/Wb;->f:I

    .line 6
    instance-of p1, p5, Lc/e/a/b/g/f/nb;

    iput-boolean p1, p0, Lc/e/a/b/g/f/Wb;->i:Z

    .line 7
    iput-boolean p6, p0, Lc/e/a/b/g/f/Wb;->j:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    .line 8
    invoke-virtual {p14, p5}, Lc/e/a/b/g/f/db;->a(Lc/e/a/b/g/f/Sb;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lc/e/a/b/g/f/Wb;->h:Z

    .line 9
    iput-boolean p1, p0, Lc/e/a/b/g/f/Wb;->k:Z

    .line 10
    iput-object p8, p0, Lc/e/a/b/g/f/Wb;->l:[I

    .line 11
    iput p9, p0, Lc/e/a/b/g/f/Wb;->m:I

    .line 12
    iput p10, p0, Lc/e/a/b/g/f/Wb;->n:I

    .line 13
    iput-object p11, p0, Lc/e/a/b/g/f/Wb;->o:Lc/e/a/b/g/f/Zb;

    .line 14
    iput-object p12, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    .line 15
    iput-object p13, p0, Lc/e/a/b/g/f/Wb;->q:Lc/e/a/b/g/f/zc;

    .line 16
    iput-object p14, p0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    .line 17
    iput-object p5, p0, Lc/e/a/b/g/f/Wb;->g:Lc/e/a/b/g/f/Sb;

    .line 18
    iput-object p15, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    return-void
.end method

.method public static a(Lc/e/a/b/g/f/zc;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/a/b/g/f/zc<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/zc;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 166
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/zc;->c(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/Class;Lc/e/a/b/g/f/Qb;Lc/e/a/b/g/f/Zb;Lc/e/a/b/g/f/Db;Lc/e/a/b/g/f/zc;Lc/e/a/b/g/f/db;Lc/e/a/b/g/f/Nb;)Lc/e/a/b/g/f/Wb;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lc/e/a/b/g/f/Qb;",
            "Lc/e/a/b/g/f/Zb;",
            "Lc/e/a/b/g/f/Db;",
            "Lc/e/a/b/g/f/zc<",
            "**>;",
            "Lc/e/a/b/g/f/db<",
            "*>;",
            "Lc/e/a/b/g/f/Nb;",
            ")",
            "Lc/e/a/b/g/f/Wb<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lc/e/a/b/g/f/fc;

    if-eqz v1, :cond_34

    .line 2
    check-cast v0, Lc/e/a/b/g/f/fc;

    .line 3
    invoke-virtual {v0}, Lc/e/a/b/g/f/fc;->c()I

    move-result v1

    sget v2, Lc/e/a/b/g/f/nb$e;->j:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Lc/e/a/b/g/f/fc;->d()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v7, 0xd800

    if-lt v5, v7, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    move v8, v5

    const/4 v5, 0x1

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v5, 0x1

    .line 7
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_1

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v8, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_1

    :cond_1
    shl-int/2addr v5, v9

    or-int/2addr v5, v8

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    add-int/lit8 v8, v10, 0x1

    .line 8
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_4

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v12, v8, 0x1

    .line 9
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_3

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_3

    :cond_3
    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    goto :goto_4

    :cond_4
    move v12, v8

    :goto_4
    if-nez v9, :cond_5

    .line 10
    sget-object v8, Lc/e/a/b/g/f/Wb;->a:[I

    move-object v15, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_12

    :cond_5
    add-int/lit8 v8, v12, 0x1

    .line 11
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_5
    add-int/lit8 v12, v8, 0x1

    .line 12
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_6

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_5

    :cond_6
    shl-int/2addr v8, v10

    or-int/2addr v8, v9

    move v9, v8

    goto :goto_6

    :cond_7
    move v12, v8

    :goto_6
    add-int/lit8 v8, v12, 0x1

    .line 13
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_7
    add-int/lit8 v13, v8, 0x1

    .line 14
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v12

    or-int/2addr v10, v8

    add-int/lit8 v12, v12, 0xd

    move v8, v13

    goto :goto_7

    :cond_8
    shl-int/2addr v8, v12

    or-int/2addr v10, v8

    goto :goto_8

    :cond_9
    move v13, v8

    :goto_8
    add-int/lit8 v8, v13, 0x1

    .line 15
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_b

    and-int/lit16 v12, v12, 0x1fff

    const/16 v13, 0xd

    :goto_9
    add-int/lit8 v14, v8, 0x1

    .line 16
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_a

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v13

    or-int/2addr v12, v8

    add-int/lit8 v13, v13, 0xd

    move v8, v14

    goto :goto_9

    :cond_a
    shl-int/2addr v8, v13

    or-int/2addr v8, v12

    move v12, v8

    goto :goto_a

    :cond_b
    move v14, v8

    :goto_a
    add-int/lit8 v8, v14, 0x1

    .line 17
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_d

    and-int/lit16 v13, v13, 0x1fff

    const/16 v14, 0xd

    :goto_b
    add-int/lit8 v15, v8, 0x1

    .line 18
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_c

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v14

    or-int/2addr v13, v8

    add-int/lit8 v14, v14, 0xd

    move v8, v15

    goto :goto_b

    :cond_c
    shl-int/2addr v8, v14

    or-int/2addr v8, v13

    move v13, v8

    goto :goto_c

    :cond_d
    move v15, v8

    :goto_c
    add-int/lit8 v8, v15, 0x1

    .line 19
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_f

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_d
    add-int/lit8 v16, v8, 0x1

    .line 20
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_e

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v15

    or-int/2addr v14, v8

    add-int/lit8 v15, v15, 0xd

    move/from16 v8, v16

    goto :goto_d

    :cond_e
    shl-int/2addr v8, v15

    or-int/2addr v8, v14

    move v14, v8

    move/from16 v8, v16

    :cond_f
    add-int/lit8 v15, v8, 0x1

    .line 21
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_11

    and-int/lit16 v8, v8, 0x1fff

    const/16 v16, 0xd

    :goto_e
    add-int/lit8 v17, v15, 0x1

    .line 22
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_10

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v8, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_e

    :cond_10
    shl-int v15, v15, v16

    or-int/2addr v8, v15

    move/from16 v15, v17

    :cond_11
    add-int/lit8 v16, v15, 0x1

    .line 23
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    const/16 v17, 0xd

    move/from16 v34, v16

    move/from16 v16, v15

    move/from16 v15, v34

    :goto_f
    add-int/lit8 v18, v15, 0x1

    .line 24
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int v16, v16, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_f

    :cond_12
    shl-int v15, v15, v17

    or-int v15, v16, v15

    move/from16 v3, v18

    goto :goto_10

    :cond_13
    move/from16 v3, v16

    :goto_10
    add-int/lit8 v16, v3, 0x1

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    const/16 v17, 0xd

    move/from16 v34, v16

    move/from16 v16, v3

    move/from16 v3, v34

    :goto_11
    add-int/lit8 v18, v3, 0x1

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_14

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v17

    or-int v16, v16, v3

    add-int/lit8 v17, v17, 0xd

    move/from16 v3, v18

    goto :goto_11

    :cond_14
    shl-int v3, v3, v17

    or-int v3, v16, v3

    move/from16 v16, v18

    :cond_15
    add-int v17, v3, v8

    add-int v15, v17, v15

    .line 27
    new-array v15, v15, [I

    shl-int/lit8 v17, v9, 0x1

    add-int v10, v17, v10

    move/from16 v34, v16

    move/from16 v16, v9

    move v9, v12

    move/from16 v12, v34

    .line 28
    :goto_12
    sget-object v6, Lc/e/a/b/g/f/Wb;->b:Lsun/misc/Unsafe;

    .line 29
    invoke-virtual {v0}, Lc/e/a/b/g/f/fc;->e()[Ljava/lang/Object;

    move-result-object v17

    .line 30
    invoke-virtual {v0}, Lc/e/a/b/g/f/fc;->a()Lc/e/a/b/g/f/Sb;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move/from16 v18, v10

    mul-int/lit8 v10, v14, 0x3

    .line 31
    new-array v10, v10, [I

    shl-int/2addr v14, v4

    .line 32
    new-array v14, v14, [Ljava/lang/Object;

    add-int v20, v3, v8

    move/from16 v22, v3

    move/from16 v23, v20

    const/4 v8, 0x0

    const/16 v21, 0x0

    :goto_13
    if-ge v12, v2, :cond_33

    add-int/lit8 v24, v12, 0x1

    .line 33
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v4, 0xd800

    if-lt v12, v4, :cond_17

    and-int/lit16 v12, v12, 0x1fff

    const/16 v26, 0xd

    move/from16 v34, v24

    move/from16 v24, v12

    move/from16 v12, v34

    :goto_14
    add-int/lit8 v27, v12, 0x1

    .line 34
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v4, :cond_16

    and-int/lit16 v4, v12, 0x1fff

    shl-int v4, v4, v26

    or-int v24, v24, v4

    add-int/lit8 v26, v26, 0xd

    move/from16 v12, v27

    const v4, 0xd800

    goto :goto_14

    :cond_16
    shl-int v4, v12, v26

    or-int v12, v24, v4

    move/from16 v4, v27

    goto :goto_15

    :cond_17
    move/from16 v4, v24

    :goto_15
    add-int/lit8 v24, v4, 0x1

    .line 35
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v4, v2, :cond_19

    and-int/lit16 v4, v4, 0x1fff

    const/16 v27, 0xd

    move/from16 v34, v24

    move/from16 v24, v4

    move/from16 v4, v34

    :goto_16
    add-int/lit8 v28, v4, 0x1

    .line 36
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v2, :cond_18

    and-int/lit16 v2, v4, 0x1fff

    shl-int v2, v2, v27

    or-int v24, v24, v2

    add-int/lit8 v27, v27, 0xd

    move/from16 v4, v28

    const v2, 0xd800

    goto :goto_16

    :cond_18
    shl-int v2, v4, v27

    or-int v4, v24, v2

    move/from16 v2, v28

    goto :goto_17

    :cond_19
    move/from16 v2, v24

    :goto_17
    move/from16 v24, v3

    and-int/lit16 v3, v4, 0xff

    move/from16 v27, v11

    and-int/lit16 v11, v4, 0x400

    if-eqz v11, :cond_1a

    add-int/lit8 v11, v8, 0x1

    .line 37
    aput v21, v15, v8

    move v8, v11

    :cond_1a
    const/16 v11, 0x33

    move/from16 v30, v8

    if-lt v3, v11, :cond_22

    add-int/lit8 v11, v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v8, 0xd800

    if-lt v2, v8, :cond_1c

    and-int/lit16 v2, v2, 0x1fff

    const/16 v32, 0xd

    :goto_18
    add-int/lit8 v33, v11, 0x1

    .line 39
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v8, :cond_1b

    and-int/lit16 v8, v11, 0x1fff

    shl-int v8, v8, v32

    or-int/2addr v2, v8

    add-int/lit8 v32, v32, 0xd

    move/from16 v11, v33

    const v8, 0xd800

    goto :goto_18

    :cond_1b
    shl-int v8, v11, v32

    or-int/2addr v2, v8

    move/from16 v11, v33

    :cond_1c
    add-int/lit8 v8, v3, -0x33

    move/from16 v32, v11

    const/16 v11, 0x9

    if-eq v8, v11, :cond_1f

    const/16 v11, 0x11

    if-ne v8, v11, :cond_1d

    goto :goto_19

    :cond_1d
    const/16 v11, 0xc

    if-ne v8, v11, :cond_1e

    and-int/lit8 v8, v5, 0x1

    const/4 v11, 0x1

    if-ne v8, v11, :cond_1e

    .line 40
    div-int/lit8 v8, v21, 0x3

    shl-int/2addr v8, v11

    add-int/2addr v8, v11

    add-int/lit8 v11, v18, 0x1

    aget-object v18, v17, v18

    aput-object v18, v14, v8

    move/from16 v18, v11

    :cond_1e
    const/4 v11, 0x1

    goto :goto_1a

    .line 41
    :cond_1f
    :goto_19
    div-int/lit8 v8, v21, 0x3

    const/4 v11, 0x1

    shl-int/2addr v8, v11

    add-int/2addr v8, v11

    add-int/lit8 v25, v18, 0x1

    aget-object v18, v17, v18

    aput-object v18, v14, v8

    move/from16 v18, v25

    :goto_1a
    shl-int/2addr v2, v11

    .line 42
    aget-object v8, v17, v2

    .line 43
    instance-of v11, v8, Ljava/lang/reflect/Field;

    if-eqz v11, :cond_20

    .line 44
    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_1b

    .line 45
    :cond_20
    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 46
    aput-object v8, v17, v2

    :goto_1b
    move v11, v9

    .line 47
    invoke-virtual {v6, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v9, v8

    add-int/lit8 v2, v2, 0x1

    .line 48
    aget-object v8, v17, v2

    move/from16 v28, v9

    .line 49
    instance-of v9, v8, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_21

    .line 50
    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_1c

    .line 51
    :cond_21
    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 52
    aput-object v8, v17, v2

    .line 53
    :goto_1c
    invoke-virtual {v6, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v2, v8

    move-object/from16 v31, v1

    move v8, v2

    move-object v1, v7

    move/from16 v25, v18

    move/from16 v9, v28

    const/4 v2, 0x0

    const/16 v19, 0x1

    move/from16 v28, v11

    move/from16 v18, v13

    move v13, v12

    move/from16 v12, v32

    goto/16 :goto_26

    :cond_22
    move v11, v9

    add-int/lit8 v8, v18, 0x1

    .line 54
    aget-object v9, v17, v18

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v9}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    move/from16 v18, v13

    const/16 v13, 0x9

    if-eq v3, v13, :cond_2a

    const/16 v13, 0x11

    if-ne v3, v13, :cond_23

    goto/16 :goto_20

    :cond_23
    const/16 v13, 0x1b

    if-eq v3, v13, :cond_29

    const/16 v13, 0x31

    if-ne v3, v13, :cond_24

    goto :goto_1e

    :cond_24
    const/16 v13, 0xc

    if-eq v3, v13, :cond_28

    const/16 v13, 0x1e

    if-eq v3, v13, :cond_28

    const/16 v13, 0x2c

    if-ne v3, v13, :cond_25

    goto :goto_1d

    :cond_25
    const/16 v13, 0x32

    if-ne v3, v13, :cond_27

    add-int/lit8 v13, v22, 0x1

    .line 55
    aput v21, v15, v22

    .line 56
    div-int/lit8 v22, v21, 0x3

    const/16 v25, 0x1

    shl-int/lit8 v22, v22, 0x1

    add-int/lit8 v28, v8, 0x1

    aget-object v8, v17, v8

    aput-object v8, v14, v22

    and-int/lit16 v8, v4, 0x800

    if-eqz v8, :cond_26

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v8, v28, 0x1

    .line 57
    aget-object v28, v17, v28

    aput-object v28, v14, v22

    move/from16 v28, v11

    move/from16 v22, v13

    goto :goto_21

    :cond_26
    move/from16 v22, v13

    move/from16 v8, v28

    move/from16 v28, v11

    goto :goto_21

    :cond_27
    move/from16 v28, v11

    const/4 v11, 0x1

    goto :goto_21

    :cond_28
    :goto_1d
    and-int/lit8 v13, v5, 0x1

    move/from16 v28, v11

    const/4 v11, 0x1

    if-ne v13, v11, :cond_2b

    .line 58
    div-int/lit8 v13, v21, 0x3

    shl-int/2addr v13, v11

    add-int/2addr v13, v11

    add-int/lit8 v25, v8, 0x1

    aget-object v8, v17, v8

    aput-object v8, v14, v13

    goto :goto_1f

    :cond_29
    :goto_1e
    move/from16 v28, v11

    const/4 v11, 0x1

    .line 59
    div-int/lit8 v13, v21, 0x3

    shl-int/2addr v13, v11

    add-int/2addr v13, v11

    add-int/lit8 v25, v8, 0x1

    aget-object v8, v17, v8

    aput-object v8, v14, v13

    :goto_1f
    move v13, v12

    move/from16 v8, v25

    goto :goto_22

    :cond_2a
    :goto_20
    move/from16 v28, v11

    const/4 v11, 0x1

    .line 60
    div-int/lit8 v13, v21, 0x3

    shl-int/2addr v13, v11

    add-int/2addr v13, v11

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v25

    aput-object v25, v14, v13

    :cond_2b
    :goto_21
    move v13, v12

    .line 61
    :goto_22
    invoke-virtual {v6, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v11

    long-to-int v9, v11

    and-int/lit8 v11, v5, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2f

    const/16 v11, 0x11

    if-gt v3, v11, :cond_2f

    add-int/lit8 v11, v2, 0x1

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v12, 0xd800

    if-lt v2, v12, :cond_2d

    and-int/lit16 v2, v2, 0x1fff

    const/16 v19, 0xd

    :goto_23
    add-int/lit8 v29, v11, 0x1

    .line 63
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v12, :cond_2c

    and-int/lit16 v11, v11, 0x1fff

    shl-int v11, v11, v19

    or-int/2addr v2, v11

    add-int/lit8 v19, v19, 0xd

    move/from16 v11, v29

    goto :goto_23

    :cond_2c
    shl-int v11, v11, v19

    or-int/2addr v2, v11

    move/from16 v11, v29

    :cond_2d
    const/16 v19, 0x1

    shl-int/lit8 v25, v16, 0x1

    .line 64
    div-int/lit8 v29, v2, 0x20

    add-int v25, v25, v29

    .line 65
    aget-object v12, v17, v25

    move-object/from16 v31, v1

    .line 66
    instance-of v1, v12, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2e

    .line 67
    check-cast v12, Ljava/lang/reflect/Field;

    goto :goto_24

    .line 68
    :cond_2e
    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 69
    aput-object v12, v17, v25

    :goto_24
    move-object v1, v7

    move/from16 v25, v8

    .line 70
    invoke-virtual {v6, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    .line 71
    rem-int/lit8 v2, v2, 0x20

    goto :goto_25

    :cond_2f
    move-object/from16 v31, v1

    move-object v1, v7

    move/from16 v25, v8

    const/16 v19, 0x1

    move v11, v2

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_25
    const/16 v7, 0x12

    if-lt v3, v7, :cond_30

    const/16 v7, 0x31

    if-gt v3, v7, :cond_30

    add-int/lit8 v7, v23, 0x1

    .line 72
    aput v9, v15, v23

    move/from16 v23, v7

    :cond_30
    move v12, v11

    :goto_26
    add-int/lit8 v7, v21, 0x1

    .line 73
    aput v13, v10, v21

    add-int/lit8 v11, v7, 0x1

    and-int/lit16 v13, v4, 0x200

    if-eqz v13, :cond_31

    const/high16 v13, 0x20000000

    goto :goto_27

    :cond_31
    const/4 v13, 0x0

    :goto_27
    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_32

    const/high16 v4, 0x10000000

    goto :goto_28

    :cond_32
    const/4 v4, 0x0

    :goto_28
    or-int/2addr v4, v13

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v3, v4

    or-int/2addr v3, v9

    .line 74
    aput v3, v10, v7

    add-int/lit8 v21, v11, 0x1

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v2, v8

    .line 75
    aput v2, v10, v11

    move-object v7, v1

    move/from16 v13, v18

    move/from16 v3, v24

    move/from16 v18, v25

    move/from16 v2, v26

    move/from16 v11, v27

    move/from16 v9, v28

    move/from16 v8, v30

    move-object/from16 v1, v31

    const/4 v4, 0x1

    goto/16 :goto_13

    :cond_33
    move/from16 v24, v3

    move/from16 v28, v9

    move/from16 v27, v11

    move/from16 v18, v13

    .line 76
    new-instance v1, Lc/e/a/b/g/f/Wb;

    .line 77
    invoke-virtual {v0}, Lc/e/a/b/g/f/fc;->a()Lc/e/a/b/g/f/Sb;

    move-result-object v0

    const/4 v12, 0x0

    move-object v5, v1

    move-object v6, v10

    move-object v7, v14

    move/from16 v8, v28

    move/from16 v9, v18

    move-object v10, v0

    move-object v13, v15

    move/from16 v14, v24

    move/from16 v15, v20

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lc/e/a/b/g/f/Wb;-><init>([I[Ljava/lang/Object;IILc/e/a/b/g/f/Sb;ZZ[IIILc/e/a/b/g/f/Zb;Lc/e/a/b/g/f/Db;Lc/e/a/b/g/f/zc;Lc/e/a/b/g/f/db;Lc/e/a/b/g/f/Nb;)V

    return-object v1

    .line 78
    :cond_34
    check-cast v0, Lc/e/a/b/g/f/vc;

    .line 79
    invoke-virtual {v0}, Lc/e/a/b/g/f/vc;->c()I

    const/4 v0, 0x0

    goto :goto_2a

    :goto_29
    throw v0

    :goto_2a
    goto :goto_29
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 81
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 82
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 83
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 167
    invoke-static {p0, p1, p2}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static a(ILjava/lang/Object;Lc/e/a/b/g/f/Oc;)V
    .locals 1

    .line 1251
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1252
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lc/e/a/b/g/f/Oc;->a(ILjava/lang/String;)V

    return-void

    .line 1253
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-interface {p2, p0, p1}, Lc/e/a/b/g/f/Oc;->a(ILcom/google/android/gms/internal/measurement/zzdp;)V

    return-void
.end method

.method public static a(Lc/e/a/b/g/f/zc;Ljava/lang/Object;Lc/e/a/b/g/f/Oc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/a/b/g/f/zc<",
            "TUT;TUB;>;TT;",
            "Lc/e/a/b/g/f/Oc;",
            ")V"
        }
    .end annotation

    .line 581
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/zc;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lc/e/a/b/g/f/zc;->a(Ljava/lang/Object;Lc/e/a/b/g/f/Oc;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;ILc/e/a/b/g/f/hc;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1249
    invoke-static {p0, v0, v1}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 1250
    invoke-interface {p2, p0}, Lc/e/a/b/g/f/hc;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 654
    invoke-static {p0, p1, p2}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static c(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 11
    invoke-static {p0, p1, p2}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 69
    invoke-static {p0, p1, p2}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 6
    invoke-static {p0, p1, p2}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static e(Ljava/lang/Object;)Lc/e/a/b/g/f/Ac;
    .locals 2

    .line 1
    check-cast p0, Lc/e/a/b/g/f/nb;

    iget-object v0, p0, Lc/e/a/b/g/f/nb;->zzagn:Lc/e/a/b/g/f/Ac;

    .line 2
    invoke-static {}, Lc/e/a/b/g/f/Ac;->c()Lc/e/a/b/g/f/Ac;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lc/e/a/b/g/f/Ac;->d()Lc/e/a/b/g/f/Ac;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lc/e/a/b/g/f/nb;->zzagn:Lc/e/a/b/g/f/Ac;

    :cond_0
    return-object v0
.end method

.method public static f(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(II)I
    .locals 1

    .line 1291
    iget v0, p0, Lc/e/a/b/g/f/Wb;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lc/e/a/b/g/f/Wb;->f:I

    if-gt p1, v0, :cond_0

    .line 1292
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/g/f/Wb;->b(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a(Ljava/lang/Object;[BIIIIIIIJILc/e/a/b/g/f/Ia;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lc/e/a/b/g/f/Ia;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 1027
    sget-object v12, Lc/e/a/b/g/f/Wb;->b:Lsun/misc/Unsafe;

    .line 1028
    iget-object v7, v0, Lc/e/a/b/g/f/Wb;->c:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 1029
    invoke-virtual {v0, v6}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 1030
    invoke-static/range {v2 .. v7}, Lc/e/a/b/g/f/Ha;->a(Lc/e/a/b/g/f/hc;[BIIILc/e/a/b/g/f/Ia;)I

    move-result v2

    .line 1031
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 1032
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    .line 1033
    iget-object v3, v11, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    .line 1034
    :cond_1
    iget-object v3, v11, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    .line 1035
    invoke-static {v15, v3}, Lc/e/a/b/g/f/qb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1036
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    if-nez v5, :cond_a

    .line 1037
    invoke-static {v3, v4, v11}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v2

    .line 1038
    iget-wide v3, v11, Lc/e/a/b/g/f/Ia;->b:J

    invoke-static {v3, v4}, Lc/e/a/b/g/f/Ua;->a(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_2
    if-nez v5, :cond_a

    .line 1039
    invoke-static {v3, v4, v11}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v2

    .line 1040
    iget v3, v11, Lc/e/a/b/g/f/Ia;->a:I

    invoke-static {v3}, Lc/e/a/b/g/f/Ua;->a(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_3
    if-nez v5, :cond_a

    .line 1041
    invoke-static {v3, v4, v11}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v3

    .line 1042
    iget v4, v11, Lc/e/a/b/g/f/Ia;->a:I

    .line 1043
    invoke-virtual {v0, v6}, Lc/e/a/b/g/f/Wb;->c(I)Lc/e/a/b/g/f/tb;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1044
    invoke-interface {v5, v4}, Lc/e/a/b/g/f/tb;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1045
    :cond_2
    invoke-static/range {p1 .. p1}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;)Lc/e/a/b/g/f/Ac;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lc/e/a/b/g/f/Ac;->a(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_b

    .line 1046
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_9

    :pswitch_4
    if-ne v5, v15, :cond_a

    .line 1047
    invoke-static {v3, v4, v11}, Lc/e/a/b/g/f/Ha;->e([BILc/e/a/b/g/f/Ia;)I

    move-result v2

    .line 1048
    iget-object v3, v11, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_5
    if-ne v5, v15, :cond_a

    .line 1049
    invoke-virtual {v0, v6}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v2

    move/from16 v5, p4

    .line 1050
    invoke-static {v2, v3, v4, v5, v11}, Lc/e/a/b/g/f/Ha;->a(Lc/e/a/b/g/f/hc;[BIILc/e/a/b/g/f/Ia;)I

    move-result v2

    .line 1051
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 1052
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    .line 1053
    iget-object v3, v11, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .line 1054
    :cond_5
    iget-object v3, v11, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    .line 1055
    invoke-static {v15, v3}, Lc/e/a/b/g/f/qb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1056
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1057
    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_6
    if-ne v5, v15, :cond_a

    .line 1058
    invoke-static {v3, v4, v11}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v2

    .line 1059
    iget v4, v11, Lc/e/a/b/g/f/Ia;->a:I

    if-nez v4, :cond_6

    const-string v3, ""

    .line 1060
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_6
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    .line 1061
    invoke-static {v3, v2, v5}, Lc/e/a/b/g/f/Hc;->a([BII)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 1062
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->i()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    .line 1063
    :cond_8
    :goto_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lc/e/a/b/g/f/qb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1064
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 1065
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_7
    if-nez v5, :cond_a

    .line 1066
    invoke-static {v3, v4, v11}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v2

    .line 1067
    iget-wide v3, v11, Lc/e/a/b/g/f/Ia;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_8
    if-ne v5, v7, :cond_a

    .line 1068
    invoke-static/range {p2 .. p3}, Lc/e/a/b/g/f/Ha;->a([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 1069
    invoke-static/range {p2 .. p3}, Lc/e/a/b/g/f/Ha;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_a
    if-nez v5, :cond_a

    .line 1070
    invoke-static {v3, v4, v11}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v2

    .line 1071
    iget v3, v11, Lc/e/a/b/g/f/Ia;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_b
    if-nez v5, :cond_a

    .line 1072
    invoke-static {v3, v4, v11}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v2

    .line 1073
    iget-wide v3, v11, Lc/e/a/b/g/f/Ia;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_c
    if-ne v5, v7, :cond_a

    .line 1074
    invoke-static/range {p2 .. p3}, Lc/e/a/b/g/f/Ha;->d([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    add-int/lit8 v2, v4, 0x4

    goto :goto_9

    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 1075
    invoke-static/range {p2 .. p3}, Lc/e/a/b/g/f/Ha;->c([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    add-int/lit8 v2, v4, 0x8

    .line 1076
    :goto_9
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v4

    :goto_b
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;[BIIIIIIJIJLc/e/a/b/g/f/Ia;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lc/e/a/b/g/f/Ia;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    .line 855
    sget-object v11, Lc/e/a/b/g/f/Wb;->b:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc/e/a/b/g/f/vb;

    .line 856
    invoke-interface {v11}, Lc/e/a/b/g/f/vb;->s()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_1

    .line 857
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_0

    const/16 v12, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v12, v13

    .line 858
    :goto_0
    invoke-interface {v11, v12}, Lc/e/a/b/g/f/vb;->c(I)Lc/e/a/b/g/f/vb;

    move-result-object v11

    .line 859
    sget-object v12, Lc/e/a/b/g/f/Wb;->b:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v14, 0x0

    const/4 v10, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_1d

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_32

    .line 860
    invoke-virtual {v0, v8}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 861
    invoke-static/range {p6 .. p11}, Lc/e/a/b/g/f/Ha;->a(Lc/e/a/b/g/f/hc;[BIIILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 862
    iget-object v8, v7, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v5, :cond_32

    .line 863
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v8

    .line 864
    iget v9, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ne v2, v9, :cond_32

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 865
    invoke-static/range {p6 .. p11}, Lc/e/a/b/g/f/Ha;->a(Lc/e/a/b/g/f/hc;[BIIILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 866
    iget-object v8, v7, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    if-ne v6, v10, :cond_4

    .line 867
    check-cast v11, Lc/e/a/b/g/f/Hb;

    .line 868
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 869
    iget v2, v7, Lc/e/a/b/g/f/Ia;->a:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_2

    .line 870
    invoke-static {v3, v1, v7}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 871
    iget-wide v4, v7, Lc/e/a/b/g/f/Ia;->b:J

    invoke-static {v4, v5}, Lc/e/a/b/g/f/Ua;->a(J)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lc/e/a/b/g/f/Hb;->h(J)V

    goto :goto_2

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_1e

    .line 872
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->a()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_32

    .line 873
    check-cast v11, Lc/e/a/b/g/f/Hb;

    .line 874
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 875
    iget-wide v8, v7, Lc/e/a/b/g/f/Ia;->b:J

    invoke-static {v8, v9}, Lc/e/a/b/g/f/Ua;->a(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lc/e/a/b/g/f/Hb;->h(J)V

    :goto_3
    if-ge v1, v5, :cond_33

    .line 876
    invoke-static {v3, v1, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 877
    iget v6, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ne v2, v6, :cond_33

    .line 878
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 879
    iget-wide v8, v7, Lc/e/a/b/g/f/Ia;->b:J

    invoke-static {v8, v9}, Lc/e/a/b/g/f/Ua;->a(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lc/e/a/b/g/f/Hb;->h(J)V

    goto :goto_3

    :pswitch_2
    if-ne v6, v10, :cond_7

    .line 880
    check-cast v11, Lc/e/a/b/g/f/pb;

    .line 881
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 882
    iget v2, v7, Lc/e/a/b/g/f/Ia;->a:I

    add-int/2addr v2, v1

    :goto_4
    if-ge v1, v2, :cond_5

    .line 883
    invoke-static {v3, v1, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 884
    iget v4, v7, Lc/e/a/b/g/f/Ia;->a:I

    invoke-static {v4}, Lc/e/a/b/g/f/Ua;->a(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lc/e/a/b/g/f/pb;->e(I)V

    goto :goto_4

    :cond_5
    if-ne v1, v2, :cond_6

    goto/16 :goto_1e

    .line 885
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->a()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    :cond_7
    if-nez v6, :cond_32

    .line 886
    check-cast v11, Lc/e/a/b/g/f/pb;

    .line 887
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 888
    iget v4, v7, Lc/e/a/b/g/f/Ia;->a:I

    invoke-static {v4}, Lc/e/a/b/g/f/Ua;->a(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lc/e/a/b/g/f/pb;->e(I)V

    :goto_5
    if-ge v1, v5, :cond_33

    .line 889
    invoke-static {v3, v1, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 890
    iget v6, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ne v2, v6, :cond_33

    .line 891
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 892
    iget v4, v7, Lc/e/a/b/g/f/Ia;->a:I

    invoke-static {v4}, Lc/e/a/b/g/f/Ua;->a(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lc/e/a/b/g/f/pb;->e(I)V

    goto :goto_5

    :pswitch_3
    if-ne v6, v10, :cond_8

    .line 893
    invoke-static {v3, v4, v11, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/vb;Lc/e/a/b/g/f/Ia;)I

    move-result v2

    goto :goto_6

    :cond_8
    if-nez v6, :cond_32

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    .line 894
    invoke-static/range {v2 .. v7}, Lc/e/a/b/g/f/Ha;->a(I[BIILc/e/a/b/g/f/vb;Lc/e/a/b/g/f/Ia;)I

    move-result v2

    .line 895
    :goto_6
    check-cast v1, Lc/e/a/b/g/f/nb;

    iget-object v3, v1, Lc/e/a/b/g/f/nb;->zzagn:Lc/e/a/b/g/f/Ac;

    .line 896
    invoke-static {}, Lc/e/a/b/g/f/Ac;->c()Lc/e/a/b/g/f/Ac;

    move-result-object v4

    if-ne v3, v4, :cond_9

    const/4 v3, 0x0

    .line 897
    :cond_9
    invoke-virtual {v0, v8}, Lc/e/a/b/g/f/Wb;->c(I)Lc/e/a/b/g/f/tb;

    move-result-object v4

    iget-object v5, v0, Lc/e/a/b/g/f/Wb;->q:Lc/e/a/b/g/f/zc;

    move/from16 v6, p6

    .line 898
    invoke-static {v6, v11, v4, v3, v5}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/tb;Ljava/lang/Object;Lc/e/a/b/g/f/zc;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/e/a/b/g/f/Ac;

    if-eqz v3, :cond_a

    .line 899
    iput-object v3, v1, Lc/e/a/b/g/f/nb;->zzagn:Lc/e/a/b/g/f/Ac;

    :cond_a
    :goto_7
    move v1, v2

    goto/16 :goto_1e

    :pswitch_4
    if-ne v6, v10, :cond_32

    .line 900
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 901
    iget v4, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ltz v4, :cond_10

    .line 902
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_f

    if-nez v4, :cond_b

    .line 903
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzdp;->a:Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 904
    :cond_b
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzdp;->a([BII)Lcom/google/android/gms/internal/measurement/zzdp;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v1, v4

    :goto_9
    if-ge v1, v5, :cond_33

    .line 905
    invoke-static {v3, v1, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 906
    iget v6, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ne v2, v6, :cond_33

    .line 907
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 908
    iget v4, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ltz v4, :cond_e

    .line 909
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_d

    if-nez v4, :cond_c

    .line 910
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzdp;->a:Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 911
    :cond_c
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzdp;->a([BII)Lcom/google/android/gms/internal/measurement/zzdp;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 912
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->a()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    .line 913
    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->b()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    .line 914
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->a()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    .line 915
    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->b()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    :pswitch_5
    if-ne v6, v10, :cond_32

    .line 916
    invoke-virtual {v0, v8}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    .line 917
    invoke-static/range {p6 .. p12}, Lc/e/a/b/g/f/Ha;->a(Lc/e/a/b/g/f/hc;I[BIILc/e/a/b/g/f/vb;Lc/e/a/b/g/f/Ia;)I

    move-result v1

    goto/16 :goto_1e

    :pswitch_6
    if-ne v6, v10, :cond_32

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v14

    if-nez v6, :cond_15

    .line 918
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 919
    iget v6, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ltz v6, :cond_14

    if-nez v6, :cond_11

    .line 920
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 921
    :cond_11
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lc/e/a/b/g/f/qb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 922
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/2addr v4, v6

    :goto_b
    if-ge v4, v5, :cond_32

    .line 923
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v6

    .line 924
    iget v8, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ne v2, v8, :cond_32

    .line 925
    invoke-static {v3, v6, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 926
    iget v6, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ltz v6, :cond_13

    if-nez v6, :cond_12

    .line 927
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 928
    :cond_12
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lc/e/a/b/g/f/qb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 929
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 930
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->b()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    .line 931
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->b()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    .line 932
    :cond_15
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 933
    iget v6, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ltz v6, :cond_1b

    if-nez v6, :cond_16

    .line 934
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_16
    add-int v8, v4, v6

    .line 935
    invoke-static {v3, v4, v8}, Lc/e/a/b/g/f/Hc;->a([BII)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 936
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lc/e/a/b/g/f/qb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 937
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    move v4, v8

    :goto_d
    if-ge v4, v5, :cond_32

    .line 938
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v6

    .line 939
    iget v8, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ne v2, v8, :cond_32

    .line 940
    invoke-static {v3, v6, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 941
    iget v6, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ltz v6, :cond_19

    if-nez v6, :cond_17

    .line 942
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_17
    add-int v8, v4, v6

    .line 943
    invoke-static {v3, v4, v8}, Lc/e/a/b/g/f/Hc;->a([BII)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 944
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lc/e/a/b/g/f/qb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 945
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 946
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->i()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    .line 947
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->b()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    .line 948
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->i()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    .line 949
    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->b()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    :pswitch_7
    const/4 v1, 0x0

    if-ne v6, v10, :cond_1f

    .line 950
    check-cast v11, Lc/e/a/b/g/f/Ja;

    .line 951
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v2

    .line 952
    iget v4, v7, Lc/e/a/b/g/f/Ia;->a:I

    add-int/2addr v4, v2

    :goto_e
    if-ge v2, v4, :cond_1d

    .line 953
    invoke-static {v3, v2, v7}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v2

    .line 954
    iget-wide v5, v7, Lc/e/a/b/g/f/Ia;->b:J

    cmp-long v8, v5, v14

    if-eqz v8, :cond_1c

    const/4 v5, 0x1

    goto :goto_f

    :cond_1c
    const/4 v5, 0x0

    :goto_f
    invoke-virtual {v11, v5}, Lc/e/a/b/g/f/Ja;->a(Z)V

    goto :goto_e

    :cond_1d
    if-ne v2, v4, :cond_1e

    goto/16 :goto_7

    .line 955
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->a()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    :cond_1f
    if-nez v6, :cond_32

    .line 956
    check-cast v11, Lc/e/a/b/g/f/Ja;

    .line 957
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 958
    iget-wide v8, v7, Lc/e/a/b/g/f/Ia;->b:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_20

    const/4 v6, 0x1

    goto :goto_10

    :cond_20
    const/4 v6, 0x0

    :goto_10
    invoke-virtual {v11, v6}, Lc/e/a/b/g/f/Ja;->a(Z)V

    :goto_11
    if-ge v4, v5, :cond_32

    .line 959
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v6

    .line 960
    iget v8, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ne v2, v8, :cond_32

    .line 961
    invoke-static {v3, v6, v7}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 962
    iget-wide v8, v7, Lc/e/a/b/g/f/Ia;->b:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_21

    const/4 v6, 0x1

    goto :goto_12

    :cond_21
    const/4 v6, 0x0

    :goto_12
    invoke-virtual {v11, v6}, Lc/e/a/b/g/f/Ja;->a(Z)V

    goto :goto_11

    :pswitch_8
    if-ne v6, v10, :cond_24

    .line 963
    check-cast v11, Lc/e/a/b/g/f/pb;

    .line 964
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 965
    iget v2, v7, Lc/e/a/b/g/f/Ia;->a:I

    add-int/2addr v2, v1

    :goto_13
    if-ge v1, v2, :cond_22

    .line 966
    invoke-static {v3, v1}, Lc/e/a/b/g/f/Ha;->a([BI)I

    move-result v4

    invoke-virtual {v11, v4}, Lc/e/a/b/g/f/pb;->e(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_13

    :cond_22
    if-ne v1, v2, :cond_23

    goto/16 :goto_1e

    .line 967
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->a()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    :cond_24
    if-ne v6, v9, :cond_32

    .line 968
    check-cast v11, Lc/e/a/b/g/f/pb;

    .line 969
    invoke-static/range {p2 .. p3}, Lc/e/a/b/g/f/Ha;->a([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lc/e/a/b/g/f/pb;->e(I)V

    :goto_14
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_33

    .line 970
    invoke-static {v3, v1, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 971
    iget v6, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ne v2, v6, :cond_33

    .line 972
    invoke-static {v3, v4}, Lc/e/a/b/g/f/Ha;->a([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lc/e/a/b/g/f/pb;->e(I)V

    goto :goto_14

    :pswitch_9
    if-ne v6, v10, :cond_27

    .line 973
    check-cast v11, Lc/e/a/b/g/f/Hb;

    .line 974
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 975
    iget v2, v7, Lc/e/a/b/g/f/Ia;->a:I

    add-int/2addr v2, v1

    :goto_15
    if-ge v1, v2, :cond_25

    .line 976
    invoke-static {v3, v1}, Lc/e/a/b/g/f/Ha;->b([BI)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lc/e/a/b/g/f/Hb;->h(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_15

    :cond_25
    if-ne v1, v2, :cond_26

    goto/16 :goto_1e

    .line 977
    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->a()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    :cond_27
    if-ne v6, v13, :cond_32

    .line 978
    check-cast v11, Lc/e/a/b/g/f/Hb;

    .line 979
    invoke-static/range {p2 .. p3}, Lc/e/a/b/g/f/Ha;->b([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lc/e/a/b/g/f/Hb;->h(J)V

    :goto_16
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_33

    .line 980
    invoke-static {v3, v1, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 981
    iget v6, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ne v2, v6, :cond_33

    .line 982
    invoke-static {v3, v4}, Lc/e/a/b/g/f/Ha;->b([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lc/e/a/b/g/f/Hb;->h(J)V

    goto :goto_16

    :pswitch_a
    if-ne v6, v10, :cond_28

    .line 983
    invoke-static {v3, v4, v11, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/vb;Lc/e/a/b/g/f/Ia;)I

    move-result v1

    goto/16 :goto_1e

    :cond_28
    if-nez v6, :cond_32

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 984
    invoke-static/range {p5 .. p10}, Lc/e/a/b/g/f/Ha;->a(I[BIILc/e/a/b/g/f/vb;Lc/e/a/b/g/f/Ia;)I

    move-result v1

    goto/16 :goto_1e

    :pswitch_b
    if-ne v6, v10, :cond_2b

    .line 985
    check-cast v11, Lc/e/a/b/g/f/Hb;

    .line 986
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 987
    iget v2, v7, Lc/e/a/b/g/f/Ia;->a:I

    add-int/2addr v2, v1

    :goto_17
    if-ge v1, v2, :cond_29

    .line 988
    invoke-static {v3, v1, v7}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 989
    iget-wide v4, v7, Lc/e/a/b/g/f/Ia;->b:J

    invoke-virtual {v11, v4, v5}, Lc/e/a/b/g/f/Hb;->h(J)V

    goto :goto_17

    :cond_29
    if-ne v1, v2, :cond_2a

    goto/16 :goto_1e

    .line 990
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->a()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    :cond_2b
    if-nez v6, :cond_32

    .line 991
    check-cast v11, Lc/e/a/b/g/f/Hb;

    .line 992
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 993
    iget-wide v8, v7, Lc/e/a/b/g/f/Ia;->b:J

    invoke-virtual {v11, v8, v9}, Lc/e/a/b/g/f/Hb;->h(J)V

    :goto_18
    if-ge v1, v5, :cond_33

    .line 994
    invoke-static {v3, v1, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 995
    iget v6, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ne v2, v6, :cond_33

    .line 996
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 997
    iget-wide v8, v7, Lc/e/a/b/g/f/Ia;->b:J

    invoke-virtual {v11, v8, v9}, Lc/e/a/b/g/f/Hb;->h(J)V

    goto :goto_18

    :pswitch_c
    if-ne v6, v10, :cond_2e

    .line 998
    check-cast v11, Lc/e/a/b/g/f/kb;

    .line 999
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 1000
    iget v2, v7, Lc/e/a/b/g/f/Ia;->a:I

    add-int/2addr v2, v1

    :goto_19
    if-ge v1, v2, :cond_2c

    .line 1001
    invoke-static {v3, v1}, Lc/e/a/b/g/f/Ha;->d([BI)F

    move-result v4

    invoke-virtual {v11, v4}, Lc/e/a/b/g/f/kb;->a(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_19

    :cond_2c
    if-ne v1, v2, :cond_2d

    goto :goto_1e

    .line 1002
    :cond_2d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->a()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    :cond_2e
    if-ne v6, v9, :cond_32

    .line 1003
    check-cast v11, Lc/e/a/b/g/f/kb;

    .line 1004
    invoke-static/range {p2 .. p3}, Lc/e/a/b/g/f/Ha;->d([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lc/e/a/b/g/f/kb;->a(F)V

    :goto_1a
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_33

    .line 1005
    invoke-static {v3, v1, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 1006
    iget v6, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ne v2, v6, :cond_33

    .line 1007
    invoke-static {v3, v4}, Lc/e/a/b/g/f/Ha;->d([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lc/e/a/b/g/f/kb;->a(F)V

    goto :goto_1a

    :pswitch_d
    if-ne v6, v10, :cond_31

    .line 1008
    check-cast v11, Lc/e/a/b/g/f/_a;

    .line 1009
    invoke-static {v3, v4, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 1010
    iget v2, v7, Lc/e/a/b/g/f/Ia;->a:I

    add-int/2addr v2, v1

    :goto_1b
    if-ge v1, v2, :cond_2f

    .line 1011
    invoke-static {v3, v1}, Lc/e/a/b/g/f/Ha;->c([BI)D

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lc/e/a/b/g/f/_a;->a(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_1b

    :cond_2f
    if-ne v1, v2, :cond_30

    goto :goto_1e

    .line 1012
    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->a()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v1

    throw v1

    :cond_31
    if-ne v6, v13, :cond_32

    .line 1013
    check-cast v11, Lc/e/a/b/g/f/_a;

    .line 1014
    invoke-static/range {p2 .. p3}, Lc/e/a/b/g/f/Ha;->c([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lc/e/a/b/g/f/_a;->a(D)V

    :goto_1c
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_33

    .line 1015
    invoke-static {v3, v1, v7}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v4

    .line 1016
    iget v6, v7, Lc/e/a/b/g/f/Ia;->a:I

    if-ne v2, v6, :cond_33

    .line 1017
    invoke-static {v3, v4}, Lc/e/a/b/g/f/Ha;->c([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lc/e/a/b/g/f/_a;->a(D)V

    goto :goto_1c

    :cond_32
    :goto_1d
    move v1, v4

    :cond_33
    :goto_1e
    return v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;[BIIIJLc/e/a/b/g/f/Ia;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lc/e/a/b/g/f/Ia;",
            ")I"
        }
    .end annotation

    .line 1018
    sget-object p2, Lc/e/a/b/g/f/Wb;->b:Lsun/misc/Unsafe;

    .line 1019
    invoke-virtual {p0, p5}, Lc/e/a/b/g/f/Wb;->b(I)Ljava/lang/Object;

    move-result-object p3

    .line 1020
    invoke-virtual {p2, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p4

    .line 1021
    iget-object p5, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    invoke-interface {p5, p4}, Lc/e/a/b/g/f/Nb;->f(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 1022
    iget-object p5, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    invoke-interface {p5, p3}, Lc/e/a/b/g/f/Nb;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 1023
    iget-object p8, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    invoke-interface {p8, p5, p4}, Lc/e/a/b/g/f/Nb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    invoke-virtual {p2, p1, p6, p7, p5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1025
    :cond_0
    iget-object p1, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    .line 1026
    invoke-interface {p1, p3}, Lc/e/a/b/g/f/Nb;->c(Ljava/lang/Object;)Lc/e/a/b/g/f/Mb;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/lang/Object;[BIIILc/e/a/b/g/f/Ia;)I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lc/e/a/b/g/f/Ia;",
            ")I"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 1081
    sget-object v10, Lc/e/a/b/g/f/Wb;->b:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_0
    const/16 v17, 0x0

    if-ge v0, v13, :cond_1f

    add-int/lit8 v3, v0, 0x1

    .line 1082
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 1083
    invoke-static {v0, v12, v3, v9}, Lc/e/a/b/g/f/Ha;->a(I[BILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 1084
    iget v3, v9, Lc/e/a/b/g/f/Ia;->a:I

    move v4, v0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v5, 0x3

    and-int/lit8 v0, v5, 0x7

    const/4 v8, 0x3

    if-le v3, v1, :cond_1

    .line 1085
    div-int/2addr v2, v8

    invoke-virtual {v15, v3, v2}, Lc/e/a/b/g/f/Wb;->a(II)I

    move-result v1

    goto :goto_2

    .line 1086
    :cond_1
    invoke-virtual {v15, v3}, Lc/e/a/b/g/f/Wb;->g(I)I

    move-result v1

    :goto_2
    move v2, v1

    const/4 v1, -0x1

    if-ne v2, v1, :cond_2

    move/from16 v25, v3

    move v2, v4

    move/from16 v20, v6

    move/from16 v18, v7

    move-object/from16 v27, v10

    move v6, v11

    const/16 v19, 0x0

    move v7, v5

    goto/16 :goto_17

    .line 1087
    :cond_2
    iget-object v1, v15, Lc/e/a/b/g/f/Wb;->c:[I

    add-int/lit8 v19, v2, 0x1

    aget v8, v1, v19

    const/high16 v19, 0xff00000

    and-int v19, v8, v19

    ushr-int/lit8 v11, v19, 0x14

    const v19, 0xfffff

    move/from16 v20, v5

    and-int v5, v8, v19

    int-to-long v12, v5

    const/16 v5, 0x11

    move/from16 v21, v8

    if-gt v11, v5, :cond_10

    add-int/lit8 v5, v2, 0x2

    .line 1088
    aget v1, v1, v5

    ushr-int/lit8 v5, v1, 0x14

    const/4 v8, 0x1

    shl-int v23, v8, v5

    and-int v1, v1, v19

    if-eq v1, v7, :cond_4

    const/4 v5, -0x1

    if-eq v7, v5, :cond_3

    int-to-long v8, v7

    .line 1089
    invoke-virtual {v10, v14, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v6, v1

    .line 1090
    invoke-virtual {v10, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v1

    goto :goto_3

    :cond_4
    const/4 v5, -0x1

    :goto_3
    const/4 v1, 0x5

    packed-switch v11, :pswitch_data_0

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move/from16 v8, v20

    const/16 v19, -0x1

    :goto_4
    move v7, v4

    goto/16 :goto_11

    :pswitch_0
    const/4 v8, 0x3

    if-ne v0, v8, :cond_6

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v8, v0, 0x4

    .line 1091
    invoke-virtual {v15, v2}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v0

    move-object/from16 v1, p2

    move v9, v2

    move v2, v4

    move v11, v3

    move/from16 v3, p4

    move v4, v8

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v5, p6

    .line 1092
    invoke-static/range {v0 .. v5}, Lc/e/a/b/g/f/Ha;->a(Lc/e/a/b/g/f/hc;[BIIILc/e/a/b/g/f/Ia;)I

    move-result v0

    and-int v1, v6, v23

    if-nez v1, :cond_5

    move-object/from16 v5, p6

    .line 1093
    iget-object v1, v5, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_5
    move-object/from16 v5, p6

    .line 1094
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v5, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    .line 1095
    invoke-static {v1, v2}, Lc/e/a/b/g/f/qb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1096
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    or-int v6, v6, v23

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v8

    move v2, v9

    move v1, v11

    move/from16 v11, p5

    move-object v9, v5

    goto/16 :goto_0

    :cond_6
    move v9, v2

    move v11, v3

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    goto/16 :goto_c

    :pswitch_1
    move-object/from16 v5, p6

    move v9, v2

    move v11, v3

    move/from16 v8, v20

    const/16 v19, -0x1

    if-nez v0, :cond_7

    move-wide v2, v12

    move-object/from16 v12, p2

    .line 1097
    invoke-static {v12, v4, v5}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v13

    .line 1098
    iget-wide v0, v5, Lc/e/a/b/g/f/Ia;->b:J

    .line 1099
    invoke-static {v0, v1}, Lc/e/a/b/g/f/Ua;->a(J)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 p3, v13

    move-object v13, v5

    move-wide/from16 v4, v17

    .line 1100
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v23

    move/from16 v0, p3

    goto/16 :goto_f

    :cond_7
    move-object/from16 v12, p2

    move-object v13, v5

    goto/16 :goto_c

    :pswitch_2
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_e

    .line 1101
    invoke-static {v12, v4, v13}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 1102
    iget v1, v13, Lc/e/a/b/g/f/Ia;->a:I

    .line 1103
    invoke-static {v1}, Lc/e/a/b/g/f/Ua;->a(I)I

    move-result v1

    .line 1104
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_3
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_e

    .line 1105
    invoke-static {v12, v4, v13}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 1106
    iget v1, v13, Lc/e/a/b/g/f/Ia;->a:I

    .line 1107
    invoke-virtual {v15, v9}, Lc/e/a/b/g/f/Wb;->c(I)Lc/e/a/b/g/f/tb;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1108
    invoke-interface {v4, v1}, Lc/e/a/b/g/f/tb;->a(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_6

    .line 1109
    :cond_8
    invoke-static/range {p1 .. p1}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;)Lc/e/a/b/g/f/Ac;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lc/e/a/b/g/f/Ac;->a(ILjava/lang/Object;)V

    goto/16 :goto_f

    .line 1110
    :cond_9
    :goto_6
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_4
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/4 v1, 0x2

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_e

    .line 1111
    invoke-static {v12, v4, v13}, Lc/e/a/b/g/f/Ha;->e([BILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 1112
    iget-object v1, v13, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    or-int v6, v6, v23

    goto/16 :goto_f

    :pswitch_5
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/4 v1, 0x2

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_b

    .line 1113
    invoke-virtual {v15, v9}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v0

    move/from16 v5, p4

    .line 1114
    invoke-static {v0, v12, v4, v5, v13}, Lc/e/a/b/g/f/Ha;->a(Lc/e/a/b/g/f/hc;[BIILc/e/a/b/g/f/Ia;)I

    move-result v0

    and-int v1, v6, v23

    if-nez v1, :cond_a

    .line 1115
    iget-object v1, v13, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    .line 1116
    :cond_a
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v13, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    .line 1117
    invoke-static {v1, v4}, Lc/e/a/b/g/f/qb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1118
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :cond_b
    move/from16 v5, p4

    goto/16 :goto_c

    :pswitch_6
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/4 v1, 0x2

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_e

    const/high16 v0, 0x20000000

    and-int v0, v21, v0

    if-nez v0, :cond_c

    .line 1119
    invoke-static {v12, v4, v13}, Lc/e/a/b/g/f/Ha;->c([BILc/e/a/b/g/f/Ia;)I

    move-result v0

    goto :goto_8

    .line 1120
    :cond_c
    invoke-static {v12, v4, v13}, Lc/e/a/b/g/f/Ha;->d([BILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 1121
    :goto_8
    iget-object v1, v13, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_7
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_e

    .line 1122
    invoke-static {v12, v4, v13}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v0

    move/from16 p3, v0

    .line 1123
    iget-wide v0, v13, Lc/e/a/b/g/f/Ia;->b:J

    const-wide/16 v20, 0x0

    cmp-long v4, v0, v20

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    :goto_9
    invoke-static {v14, v2, v3, v0}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JZ)V

    or-int v6, v6, v23

    move/from16 v0, p3

    goto :goto_b

    :pswitch_8
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_e

    .line 1124
    invoke-static {v12, v4}, Lc/e/a/b/g/f/Ha;->a([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_a
    or-int v6, v6, v23

    :goto_b
    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    move/from16 v11, p5

    move v13, v5

    goto/16 :goto_0

    :pswitch_9
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v20

    const/4 v1, 0x1

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_e

    .line 1125
    invoke-static {v12, v4}, Lc/e/a/b/g/f/Ha;->b([BI)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 p3, v7

    move v7, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_d

    :cond_e
    :goto_c
    move/from16 p3, v7

    goto/16 :goto_4

    :pswitch_a
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-nez v0, :cond_f

    .line 1126
    invoke-static {v12, v7, v13}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 1127
    iget v1, v13, Lc/e/a/b/g/f/Ia;->a:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_e

    :pswitch_b
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-nez v0, :cond_f

    .line 1128
    invoke-static {v12, v7, v13}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v7

    .line 1129
    iget-wide v4, v13, Lc/e/a/b/g/f/Ia;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v23

    move v0, v7

    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    move/from16 v7, p3

    goto :goto_10

    :pswitch_c
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v20

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-ne v0, v1, :cond_f

    .line 1130
    invoke-static {v12, v7}, Lc/e/a/b/g/f/Ha;->d([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v7, 0x4

    goto :goto_e

    :pswitch_d
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v20

    const/4 v1, 0x1

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-ne v0, v1, :cond_f

    .line 1131
    invoke-static {v12, v7}, Lc/e/a/b/g/f/Ha;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JD)V

    :goto_d
    add-int/lit8 v0, v7, 0x8

    :goto_e
    or-int v6, v6, v23

    move/from16 v7, p3

    :goto_f
    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    :goto_10
    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_f
    :goto_11
    move/from16 v18, p3

    move/from16 v20, v6

    move v2, v7

    move v7, v8

    move/from16 v19, v9

    move-object/from16 v27, v10

    move/from16 v25, v11

    move/from16 v6, p5

    goto/16 :goto_17

    :cond_10
    move v5, v3

    move/from16 v18, v7

    move/from16 v8, v20

    const/16 v19, -0x1

    move v7, v4

    move-wide/from16 v28, v12

    move-object/from16 v12, p2

    move-object v13, v9

    move v9, v2

    move-wide/from16 v2, v28

    const/16 v1, 0x1b

    if-ne v11, v1, :cond_14

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 1132
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/vb;

    .line 1133
    invoke-interface {v0}, Lc/e/a/b/g/f/vb;->s()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0xa

    goto :goto_12

    :cond_11
    shl-int/lit8 v1, v1, 0x1

    .line 1135
    :goto_12
    invoke-interface {v0, v1}, Lc/e/a/b/g/f/vb;->c(I)Lc/e/a/b/g/f/vb;

    move-result-object v0

    .line 1136
    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_12
    move-object v11, v0

    .line 1137
    invoke-virtual {v15, v9}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v0

    move v1, v8

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move v7, v5

    move-object v5, v11

    move/from16 v20, v6

    move-object/from16 v6, p6

    .line 1138
    invoke-static/range {v0 .. v6}, Lc/e/a/b/g/f/Ha;->a(Lc/e/a/b/g/f/hc;I[BIILc/e/a/b/g/f/vb;Lc/e/a/b/g/f/Ia;)I

    move-result v0

    move/from16 v11, p5

    move v1, v7

    move v3, v8

    move v2, v9

    move-object v9, v13

    move/from16 v7, v18

    move/from16 v6, v20

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_13
    move/from16 v20, v6

    move/from16 v25, v5

    move v15, v7

    move/from16 v26, v8

    move/from16 v19, v9

    move-object/from16 v27, v10

    goto/16 :goto_14

    :cond_14
    move/from16 v20, v6

    move v6, v5

    const/16 v1, 0x31

    if-gt v11, v1, :cond_16

    move/from16 v5, v21

    int-to-long v4, v5

    move v1, v0

    move-object/from16 v0, p0

    move/from16 p3, v1

    move-object/from16 v1, p1

    move-wide/from16 v23, v2

    move-object/from16 v2, p2

    move v3, v7

    move-wide/from16 v21, v4

    move/from16 v4, p4

    move v5, v8

    move/from16 v25, v6

    move v15, v7

    move/from16 v7, p3

    move/from16 v26, v8

    move v8, v9

    move/from16 v19, v9

    move-object/from16 v27, v10

    move-wide/from16 v9, v21

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    .line 1139
    invoke-virtual/range {v0 .. v14}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;[BIIIIIIJIJLc/e/a/b/g/f/Ia;)I

    move-result v0

    if-ne v0, v15, :cond_15

    goto/16 :goto_16

    :cond_15
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v7, v18

    move/from16 v2, v19

    move/from16 v6, v20

    move/from16 v1, v25

    move/from16 v3, v26

    :goto_13
    move-object/from16 v10, v27

    goto/16 :goto_0

    :cond_16
    move/from16 p3, v0

    move-wide/from16 v23, v2

    move/from16 v25, v6

    move v15, v7

    move/from16 v26, v8

    move/from16 v19, v9

    move-object/from16 v27, v10

    move/from16 v5, v21

    const/16 v0, 0x32

    if-ne v11, v0, :cond_18

    move/from16 v7, p3

    const/4 v0, 0x2

    if-eq v7, v0, :cond_17

    :goto_14
    move/from16 v6, p5

    move v2, v15

    :goto_15
    move/from16 v7, v26

    goto :goto_17

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    .line 1140
    invoke-virtual/range {v0 .. v8}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;[BIIIJLc/e/a/b/g/f/Ia;)I

    throw v17

    :cond_18
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v26

    move/from16 v6, v25

    move v9, v11

    move-wide/from16 v10, v23

    move/from16 v12, v19

    move-object/from16 v13, p6

    .line 1141
    invoke-virtual/range {v0 .. v13}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;[BIIIIIIIJILc/e/a/b/g/f/Ia;)I

    move-result v0

    if-ne v0, v15, :cond_1e

    :goto_16
    move/from16 v6, p5

    move v2, v0

    goto :goto_15

    :goto_17
    if-ne v7, v6, :cond_1a

    if-nez v6, :cond_19

    goto :goto_18

    :cond_19
    const/4 v4, -0x1

    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move v3, v7

    move/from16 v0, v18

    move/from16 v1, v20

    goto/16 :goto_1b

    :cond_1a
    :goto_18
    move-object/from16 v8, p0

    .line 1142
    iget-boolean v0, v8, Lc/e/a/b/g/f/Wb;->h:Z

    if-eqz v0, :cond_1d

    move-object/from16 v9, p6

    iget-object v0, v9, Lc/e/a/b/g/f/Ia;->d:Lc/e/a/b/g/f/cb;

    .line 1143
    invoke-static {}, Lc/e/a/b/g/f/cb;->c()Lc/e/a/b/g/f/cb;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 1144
    iget-object v0, v8, Lc/e/a/b/g/f/Wb;->g:Lc/e/a/b/g/f/Sb;

    .line 1145
    iget-object v1, v9, Lc/e/a/b/g/f/Ia;->d:Lc/e/a/b/g/f/cb;

    move/from16 v10, v25

    .line 1146
    invoke-virtual {v1, v0, v10}, Lc/e/a/b/g/f/cb;->a(Lc/e/a/b/g/f/Sb;I)Lc/e/a/b/g/f/nb$d;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 1147
    invoke-static/range {p1 .. p1}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;)Lc/e/a/b/g/f/Ac;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 1148
    invoke-static/range {v0 .. v5}, Lc/e/a/b/g/f/Ha;->a(I[BIILc/e/a/b/g/f/Ac;Lc/e/a/b/g/f/Ia;)I

    move-result v0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v11, v6

    move v3, v7

    move-object v15, v8

    goto :goto_1a

    :cond_1b
    move-object/from16 v11, p1

    .line 1149
    move-object v0, v11

    check-cast v0, Lc/e/a/b/g/f/nb$c;

    invoke-virtual {v0}, Lc/e/a/b/g/f/nb$c;->q()Lc/e/a/b/g/f/gb;

    .line 1150
    iget-object v0, v0, Lc/e/a/b/g/f/nb$c;->zzagt:Lc/e/a/b/g/f/gb;

    .line 1151
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_1c
    move-object/from16 v11, p1

    goto :goto_19

    :cond_1d
    move-object/from16 v11, p1

    move-object/from16 v9, p6

    :goto_19
    move/from16 v10, v25

    .line 1152
    invoke-static/range {p1 .. p1}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;)Lc/e/a/b/g/f/Ac;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 1153
    invoke-static/range {v0 .. v5}, Lc/e/a/b/g/f/Ha;->a(I[BIILc/e/a/b/g/f/Ac;Lc/e/a/b/g/f/Ia;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v7

    move-object v15, v8

    move v1, v10

    move-object v14, v11

    move/from16 v7, v18

    move/from16 v2, v19

    move-object/from16 v10, v27

    move v11, v6

    move/from16 v6, v20

    goto/16 :goto_0

    :cond_1e
    move/from16 v10, v25

    move/from16 v7, v26

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move v3, v7

    :goto_1a
    move v1, v10

    move/from16 v7, v18

    move/from16 v2, v19

    move/from16 v6, v20

    goto/16 :goto_13

    :cond_1f
    move/from16 v20, v6

    move/from16 v18, v7

    move-object/from16 v27, v10

    move v6, v11

    move-object v11, v14

    move-object v8, v15

    move v2, v0

    move/from16 v0, v18

    move/from16 v1, v20

    const/4 v4, -0x1

    :goto_1b
    if-eq v0, v4, :cond_20

    int-to-long v4, v0

    move-object/from16 v0, v27

    .line 1154
    invoke-virtual {v0, v11, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1155
    :cond_20
    iget v0, v8, Lc/e/a/b/g/f/Wb;->m:I

    move-object/from16 v1, v17

    :goto_1c
    iget v4, v8, Lc/e/a/b/g/f/Wb;->n:I

    if-ge v0, v4, :cond_21

    .line 1156
    iget-object v4, v8, Lc/e/a/b/g/f/Wb;->l:[I

    aget v4, v4, v0

    iget-object v5, v8, Lc/e/a/b/g/f/Wb;->q:Lc/e/a/b/g/f/zc;

    .line 1157
    invoke-virtual {v8, v11, v4, v1, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;ILjava/lang/Object;Lc/e/a/b/g/f/zc;)Ljava/lang/Object;

    check-cast v1, Lc/e/a/b/g/f/Ac;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_21
    if-eqz v1, :cond_22

    .line 1158
    iget-object v0, v8, Lc/e/a/b/g/f/Wb;->q:Lc/e/a/b/g/f/zc;

    .line 1159
    invoke-virtual {v0, v11, v1}, Lc/e/a/b/g/f/zc;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    if-nez v6, :cond_24

    move/from16 v0, p4

    if-ne v2, v0, :cond_23

    goto :goto_1d

    .line 1160
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->h()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v0

    throw v0

    :cond_24
    move/from16 v0, p4

    if-gt v2, v0, :cond_25

    if-ne v3, v6, :cond_25

    :goto_1d
    return v2

    .line 1161
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->h()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v0

    goto :goto_1f

    :goto_1e
    throw v0

    :goto_1f
    goto :goto_1e

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(I)Lc/e/a/b/g/f/hc;
    .locals 3

    .line 1077
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 1078
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lc/e/a/b/g/f/hc;

    if-eqz v0, :cond_0

    return-object v0

    .line 1079
    :cond_0
    invoke-static {}, Lc/e/a/b/g/f/dc;->a()Lc/e/a/b/g/f/dc;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->d:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lc/e/a/b/g/f/dc;->a(Ljava/lang/Class;)Lc/e/a/b/g/f/hc;

    move-result-object v0

    .line 1080
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->d:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->o:Lc/e/a/b/g/f/Zb;

    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->g:Lc/e/a/b/g/f/Sb;

    invoke-interface {v0, v1}, Lc/e/a/b/g/f/Zb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILjava/util/Map;Lc/e/a/b/g/f/tb;Ljava/lang/Object;Lc/e/a/b/g/f/zc;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lc/e/a/b/g/f/tb;",
            "TUB;",
            "Lc/e/a/b/g/f/zc<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 1222
    iget-object p2, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    .line 1223
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/Wb;->b(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lc/e/a/b/g/f/Nb;->c(Ljava/lang/Object;)Lc/e/a/b/g/f/Mb;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/Object;Lc/e/a/b/g/f/zc;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lc/e/a/b/g/f/zc<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 1216
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v3, v0, p2

    .line 1217
    invoke-virtual {p0, p2}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 1218
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 1219
    :cond_0
    invoke-virtual {p0, p2}, Lc/e/a/b/g/f/Wb;->c(I)Lc/e/a/b/g/f/tb;

    move-result-object v5

    if-nez v5, :cond_1

    return-object p3

    .line 1220
    :cond_1
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    invoke-interface {v0, p1}, Lc/e/a/b/g/f/Nb;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 1221
    invoke-virtual/range {v1 .. v7}, Lc/e/a/b/g/f/Wb;->a(IILjava/util/Map;Lc/e/a/b/g/f/tb;Ljava/lang/Object;Lc/e/a/b/g/f/zc;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lc/e/a/b/g/f/Oc;ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/a/b/g/f/Oc;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 579
    :cond_0
    iget-object p1, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    .line 580
    invoke-virtual {p0, p4}, Lc/e/a/b/g/f/Wb;->b(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lc/e/a/b/g/f/Nb;->c(Ljava/lang/Object;)Lc/e/a/b/g/f/Mb;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/lang/Object;ILc/e/a/b/g/f/gc;)V
    .locals 2

    .line 1254
    invoke-static {p2}, Lc/e/a/b/g/f/Wb;->f(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_0

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 1255
    invoke-interface {p3}, Lc/e/a/b/g/f/gc;->j()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 1256
    :cond_0
    iget-boolean v0, p0, Lc/e/a/b/g/f/Wb;->i:Z

    if-eqz v0, :cond_1

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 1257
    invoke-interface {p3}, Lc/e/a/b/g/f/gc;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 1258
    invoke-interface {p3}, Lc/e/a/b/g/f/gc;->k()Lcom/google/android/gms/internal/measurement/zzdp;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lc/e/a/b/g/f/Oc;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/e/a/b/g/f/Oc;",
            ")V"
        }
    .end annotation

    .line 168
    invoke-interface {p2}, Lc/e/a/b/g/f/Oc;->a()I

    move-result v0

    sget v1, Lc/e/a/b/g/f/nb$e;->m:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_5

    .line 169
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->q:Lc/e/a/b/g/f/zc;

    invoke-static {v0, p1, p2}, Lc/e/a/b/g/f/Wb;->a(Lc/e/a/b/g/f/zc;Ljava/lang/Object;Lc/e/a/b/g/f/Oc;)V

    .line 170
    iget-boolean v0, p0, Lc/e/a/b/g/f/Wb;->h:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/db;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lc/e/a/b/g/f/gb;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-virtual {v0}, Lc/e/a/b/g/f/gb;->a()Ljava/util/Iterator;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 175
    :goto_0
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->c:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x3

    :goto_1
    if-ltz v1, :cond_3

    .line 176
    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result v7

    .line 177
    iget-object v8, p0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v9, v8, v1

    if-nez v0, :cond_2

    and-int v10, v7, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_2

    .line 178
    :pswitch_0
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 179
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 180
    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v8

    .line 181
    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->a(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_2

    .line 182
    :pswitch_1
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 183
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->b(IJ)V

    goto/16 :goto_2

    .line 184
    :pswitch_2
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 185
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->f(II)V

    goto/16 :goto_2

    .line 186
    :pswitch_3
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 187
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->a(IJ)V

    goto/16 :goto_2

    .line 188
    :pswitch_4
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 189
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->e(II)V

    goto/16 :goto_2

    .line 190
    :pswitch_5
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 191
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->b(II)V

    goto/16 :goto_2

    .line 192
    :pswitch_6
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 193
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->d(II)V

    goto/16 :goto_2

    .line 194
    :pswitch_7
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 195
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzdp;

    .line 196
    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->a(ILcom/google/android/gms/internal/measurement/zzdp;)V

    goto/16 :goto_2

    .line 197
    :pswitch_8
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 198
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 199
    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v8

    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->b(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_2

    .line 200
    :pswitch_9
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 201
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v7, p2}, Lc/e/a/b/g/f/Wb;->a(ILjava/lang/Object;Lc/e/a/b/g/f/Oc;)V

    goto/16 :goto_2

    .line 202
    :pswitch_a
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 203
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Wb;->f(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->a(IZ)V

    goto/16 :goto_2

    .line 204
    :pswitch_b
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 205
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->c(II)V

    goto/16 :goto_2

    .line 206
    :pswitch_c
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 207
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->c(IJ)V

    goto/16 :goto_2

    .line 208
    :pswitch_d
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 209
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->a(II)V

    goto/16 :goto_2

    .line 210
    :pswitch_e
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 211
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->e(IJ)V

    goto/16 :goto_2

    .line 212
    :pswitch_f
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 213
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->d(IJ)V

    goto/16 :goto_2

    .line 214
    :pswitch_10
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 215
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->a(IF)V

    goto/16 :goto_2

    .line 216
    :pswitch_11
    invoke-virtual {p0, p1, v9, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 217
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->a(ID)V

    goto/16 :goto_2

    :pswitch_12
    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 218
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, p2, v9, v7, v1}, Lc/e/a/b/g/f/Wb;->a(Lc/e/a/b/g/f/Oc;ILjava/lang/Object;I)V

    goto/16 :goto_2

    .line 219
    :pswitch_13
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 220
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 221
    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    .line 222
    invoke-static {v8, v7, p2, v9}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Lc/e/a/b/g/f/Oc;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_2

    .line 223
    :pswitch_14
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 224
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 225
    invoke-static {v8, v7, p2, v4}, Lc/e/a/b/g/f/kc;->e(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 226
    :pswitch_15
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 227
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 228
    invoke-static {v8, v7, p2, v4}, Lc/e/a/b/g/f/kc;->j(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 229
    :pswitch_16
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 230
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 231
    invoke-static {v8, v7, p2, v4}, Lc/e/a/b/g/f/kc;->g(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 232
    :pswitch_17
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 233
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 234
    invoke-static {v8, v7, p2, v4}, Lc/e/a/b/g/f/kc;->l(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 235
    :pswitch_18
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 236
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 237
    invoke-static {v8, v7, p2, v4}, Lc/e/a/b/g/f/kc;->m(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 238
    :pswitch_19
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 239
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 240
    invoke-static {v8, v7, p2, v4}, Lc/e/a/b/g/f/kc;->i(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 241
    :pswitch_1a
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 242
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 243
    invoke-static {v8, v7, p2, v4}, Lc/e/a/b/g/f/kc;->n(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 244
    :pswitch_1b
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 245
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 246
    invoke-static {v8, v7, p2, v4}, Lc/e/a/b/g/f/kc;->k(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 247
    :pswitch_1c
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 248
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 249
    invoke-static {v8, v7, p2, v4}, Lc/e/a/b/g/f/kc;->f(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 250
    :pswitch_1d
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 251
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 252
    invoke-static {v8, v7, p2, v4}, Lc/e/a/b/g/f/kc;->h(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 253
    :pswitch_1e
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 254
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 255
    invoke-static {v8, v7, p2, v4}, Lc/e/a/b/g/f/kc;->d(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 256
    :pswitch_1f
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 257
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 258
    invoke-static {v8, v7, p2, v4}, Lc/e/a/b/g/f/kc;->c(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 259
    :pswitch_20
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 260
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 261
    invoke-static {v8, v7, p2, v4}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 262
    :pswitch_21
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 263
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 264
    invoke-static {v8, v7, p2, v4}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 265
    :pswitch_22
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 266
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 267
    invoke-static {v8, v7, p2, v5}, Lc/e/a/b/g/f/kc;->e(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 268
    :pswitch_23
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 269
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 270
    invoke-static {v8, v7, p2, v5}, Lc/e/a/b/g/f/kc;->j(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 271
    :pswitch_24
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 272
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 273
    invoke-static {v8, v7, p2, v5}, Lc/e/a/b/g/f/kc;->g(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 274
    :pswitch_25
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 275
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 276
    invoke-static {v8, v7, p2, v5}, Lc/e/a/b/g/f/kc;->l(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 277
    :pswitch_26
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 278
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 279
    invoke-static {v8, v7, p2, v5}, Lc/e/a/b/g/f/kc;->m(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 280
    :pswitch_27
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 281
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 282
    invoke-static {v8, v7, p2, v5}, Lc/e/a/b/g/f/kc;->i(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 283
    :pswitch_28
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 284
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 285
    invoke-static {v8, v7, p2}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Lc/e/a/b/g/f/Oc;)V

    goto/16 :goto_2

    .line 286
    :pswitch_29
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 287
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 288
    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    .line 289
    invoke-static {v8, v7, p2, v9}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/Oc;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_2

    .line 290
    :pswitch_2a
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 291
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 292
    invoke-static {v8, v7, p2}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/Oc;)V

    goto/16 :goto_2

    .line 293
    :pswitch_2b
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 294
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 295
    invoke-static {v8, v7, p2, v5}, Lc/e/a/b/g/f/kc;->n(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 296
    :pswitch_2c
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 297
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 298
    invoke-static {v8, v7, p2, v5}, Lc/e/a/b/g/f/kc;->k(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 299
    :pswitch_2d
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 300
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 301
    invoke-static {v8, v7, p2, v5}, Lc/e/a/b/g/f/kc;->f(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 302
    :pswitch_2e
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 303
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 304
    invoke-static {v8, v7, p2, v5}, Lc/e/a/b/g/f/kc;->h(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 305
    :pswitch_2f
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 306
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 307
    invoke-static {v8, v7, p2, v5}, Lc/e/a/b/g/f/kc;->d(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 308
    :pswitch_30
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 309
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 310
    invoke-static {v8, v7, p2, v5}, Lc/e/a/b/g/f/kc;->c(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 311
    :pswitch_31
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 312
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 313
    invoke-static {v8, v7, p2, v5}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 314
    :pswitch_32
    aget v8, v8, v1

    and-int/2addr v7, v6

    int-to-long v9, v7

    .line 315
    invoke-static {p1, v9, v10}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 316
    invoke-static {v8, v7, p2, v5}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_2

    .line 317
    :pswitch_33
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 318
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 319
    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v8

    .line 320
    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->a(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_2

    .line 321
    :pswitch_34
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 322
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 323
    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->b(IJ)V

    goto/16 :goto_2

    .line 324
    :pswitch_35
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 325
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v7

    .line 326
    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->f(II)V

    goto/16 :goto_2

    .line 327
    :pswitch_36
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 328
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 329
    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->a(IJ)V

    goto/16 :goto_2

    .line 330
    :pswitch_37
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 331
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v7

    .line 332
    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->e(II)V

    goto/16 :goto_2

    .line 333
    :pswitch_38
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 334
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v7

    .line 335
    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->b(II)V

    goto/16 :goto_2

    .line 336
    :pswitch_39
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 337
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v7

    .line 338
    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->d(II)V

    goto/16 :goto_2

    .line 339
    :pswitch_3a
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 340
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzdp;

    .line 341
    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->a(ILcom/google/android/gms/internal/measurement/zzdp;)V

    goto/16 :goto_2

    .line 342
    :pswitch_3b
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 343
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 344
    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v8

    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->b(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_2

    .line 345
    :pswitch_3c
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 346
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v7, p2}, Lc/e/a/b/g/f/Wb;->a(ILjava/lang/Object;Lc/e/a/b/g/f/Oc;)V

    goto/16 :goto_2

    .line 347
    :pswitch_3d
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 348
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->c(Ljava/lang/Object;J)Z

    move-result v7

    .line 349
    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->a(IZ)V

    goto/16 :goto_2

    .line 350
    :pswitch_3e
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 351
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v7

    .line 352
    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->c(II)V

    goto :goto_2

    .line 353
    :pswitch_3f
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 354
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 355
    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->c(IJ)V

    goto :goto_2

    .line 356
    :pswitch_40
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 357
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v7

    .line 358
    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->a(II)V

    goto :goto_2

    .line 359
    :pswitch_41
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 360
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 361
    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->e(IJ)V

    goto :goto_2

    .line 362
    :pswitch_42
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 363
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 364
    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->d(IJ)V

    goto :goto_2

    .line 365
    :pswitch_43
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 366
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->d(Ljava/lang/Object;J)F

    move-result v7

    .line 367
    invoke-interface {p2, v9, v7}, Lc/e/a/b/g/f/Oc;->a(IF)V

    goto :goto_2

    .line 368
    :pswitch_44
    invoke-virtual {p0, p1, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/2addr v7, v6

    int-to-long v7, v7

    .line 369
    invoke-static {p1, v7, v8}, Lc/e/a/b/g/f/Fc;->e(Ljava/lang/Object;J)D

    move-result-wide v7

    .line 370
    invoke-interface {p2, v9, v7, v8}, Lc/e/a/b/g/f/Oc;->a(ID)V

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x3

    goto/16 :goto_1

    .line 371
    :cond_2
    iget-object p1, p0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-virtual {p1, v0}, Lc/e/a/b/g/f/db;->a(Ljava/util/Map$Entry;)I

    throw v3

    :cond_3
    if-nez v0, :cond_4

    return-void

    .line 372
    :cond_4
    iget-object p1, p0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-virtual {p1, p2, v0}, Lc/e/a/b/g/f/db;->a(Lc/e/a/b/g/f/Oc;Ljava/util/Map$Entry;)V

    throw v3

    .line 373
    :cond_5
    iget-boolean v0, p0, Lc/e/a/b/g/f/Wb;->j:Z

    if-eqz v0, :cond_b

    .line 374
    iget-boolean v0, p0, Lc/e/a/b/g/f/Wb;->h:Z

    if-eqz v0, :cond_6

    .line 375
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/db;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lc/e/a/b/g/f/gb;->b()Z

    move-result v1

    if-nez v1, :cond_6

    .line 377
    invoke-virtual {v0}, Lc/e/a/b/g/f/gb;->e()Ljava/util/Iterator;

    move-result-object v0

    .line 378
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_6
    move-object v0, v3

    .line 379
    :goto_3
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->c:[I

    array-length v1, v1

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v1, :cond_9

    .line 380
    invoke-virtual {p0, v7}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result v8

    .line 381
    iget-object v9, p0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v10, v9, v7

    if-nez v0, :cond_8

    and-int v11, v8, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_5

    .line 382
    :pswitch_45
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 383
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 384
    invoke-virtual {p0, v7}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    .line 385
    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->a(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_5

    .line 386
    :pswitch_46
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 387
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->b(IJ)V

    goto/16 :goto_5

    .line 388
    :pswitch_47
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 389
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->f(II)V

    goto/16 :goto_5

    .line 390
    :pswitch_48
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 391
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->a(IJ)V

    goto/16 :goto_5

    .line 392
    :pswitch_49
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 393
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->e(II)V

    goto/16 :goto_5

    .line 394
    :pswitch_4a
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 395
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->b(II)V

    goto/16 :goto_5

    .line 396
    :pswitch_4b
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 397
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->d(II)V

    goto/16 :goto_5

    .line 398
    :pswitch_4c
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 399
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzdp;

    .line 400
    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->a(ILcom/google/android/gms/internal/measurement/zzdp;)V

    goto/16 :goto_5

    .line 401
    :pswitch_4d
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 402
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 403
    invoke-virtual {p0, v7}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->b(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_5

    .line 404
    :pswitch_4e
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 405
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10, v8, p2}, Lc/e/a/b/g/f/Wb;->a(ILjava/lang/Object;Lc/e/a/b/g/f/Oc;)V

    goto/16 :goto_5

    .line 406
    :pswitch_4f
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 407
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Wb;->f(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->a(IZ)V

    goto/16 :goto_5

    .line 408
    :pswitch_50
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 409
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->c(II)V

    goto/16 :goto_5

    .line 410
    :pswitch_51
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 411
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->c(IJ)V

    goto/16 :goto_5

    .line 412
    :pswitch_52
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 413
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->a(II)V

    goto/16 :goto_5

    .line 414
    :pswitch_53
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 415
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->e(IJ)V

    goto/16 :goto_5

    .line 416
    :pswitch_54
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 417
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->d(IJ)V

    goto/16 :goto_5

    .line 418
    :pswitch_55
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 419
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->a(IF)V

    goto/16 :goto_5

    .line 420
    :pswitch_56
    invoke-virtual {p0, p1, v10, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 421
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->a(ID)V

    goto/16 :goto_5

    :pswitch_57
    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 422
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, p2, v10, v8, v7}, Lc/e/a/b/g/f/Wb;->a(Lc/e/a/b/g/f/Oc;ILjava/lang/Object;I)V

    goto/16 :goto_5

    .line 423
    :pswitch_58
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 424
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 425
    invoke-virtual {p0, v7}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v10

    .line 426
    invoke-static {v9, v8, p2, v10}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Lc/e/a/b/g/f/Oc;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_5

    .line 427
    :pswitch_59
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 428
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 429
    invoke-static {v9, v8, p2, v4}, Lc/e/a/b/g/f/kc;->e(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 430
    :pswitch_5a
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 431
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 432
    invoke-static {v9, v8, p2, v4}, Lc/e/a/b/g/f/kc;->j(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 433
    :pswitch_5b
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 434
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 435
    invoke-static {v9, v8, p2, v4}, Lc/e/a/b/g/f/kc;->g(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 436
    :pswitch_5c
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 437
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 438
    invoke-static {v9, v8, p2, v4}, Lc/e/a/b/g/f/kc;->l(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 439
    :pswitch_5d
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 440
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 441
    invoke-static {v9, v8, p2, v4}, Lc/e/a/b/g/f/kc;->m(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 442
    :pswitch_5e
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 443
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 444
    invoke-static {v9, v8, p2, v4}, Lc/e/a/b/g/f/kc;->i(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 445
    :pswitch_5f
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 446
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 447
    invoke-static {v9, v8, p2, v4}, Lc/e/a/b/g/f/kc;->n(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 448
    :pswitch_60
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 449
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 450
    invoke-static {v9, v8, p2, v4}, Lc/e/a/b/g/f/kc;->k(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 451
    :pswitch_61
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 452
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 453
    invoke-static {v9, v8, p2, v4}, Lc/e/a/b/g/f/kc;->f(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 454
    :pswitch_62
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 455
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 456
    invoke-static {v9, v8, p2, v4}, Lc/e/a/b/g/f/kc;->h(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 457
    :pswitch_63
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 458
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 459
    invoke-static {v9, v8, p2, v4}, Lc/e/a/b/g/f/kc;->d(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 460
    :pswitch_64
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 461
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 462
    invoke-static {v9, v8, p2, v4}, Lc/e/a/b/g/f/kc;->c(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 463
    :pswitch_65
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 464
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 465
    invoke-static {v9, v8, p2, v4}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 466
    :pswitch_66
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 467
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 468
    invoke-static {v9, v8, p2, v4}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 469
    :pswitch_67
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 470
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 471
    invoke-static {v9, v8, p2, v5}, Lc/e/a/b/g/f/kc;->e(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 472
    :pswitch_68
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 473
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 474
    invoke-static {v9, v8, p2, v5}, Lc/e/a/b/g/f/kc;->j(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 475
    :pswitch_69
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 476
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 477
    invoke-static {v9, v8, p2, v5}, Lc/e/a/b/g/f/kc;->g(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 478
    :pswitch_6a
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 479
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 480
    invoke-static {v9, v8, p2, v5}, Lc/e/a/b/g/f/kc;->l(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 481
    :pswitch_6b
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 482
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 483
    invoke-static {v9, v8, p2, v5}, Lc/e/a/b/g/f/kc;->m(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 484
    :pswitch_6c
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 485
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 486
    invoke-static {v9, v8, p2, v5}, Lc/e/a/b/g/f/kc;->i(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 487
    :pswitch_6d
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 488
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 489
    invoke-static {v9, v8, p2}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Lc/e/a/b/g/f/Oc;)V

    goto/16 :goto_5

    .line 490
    :pswitch_6e
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 491
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 492
    invoke-virtual {p0, v7}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v10

    .line 493
    invoke-static {v9, v8, p2, v10}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/Oc;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_5

    .line 494
    :pswitch_6f
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 495
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 496
    invoke-static {v9, v8, p2}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/Oc;)V

    goto/16 :goto_5

    .line 497
    :pswitch_70
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 498
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 499
    invoke-static {v9, v8, p2, v5}, Lc/e/a/b/g/f/kc;->n(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 500
    :pswitch_71
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 501
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 502
    invoke-static {v9, v8, p2, v5}, Lc/e/a/b/g/f/kc;->k(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 503
    :pswitch_72
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 504
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 505
    invoke-static {v9, v8, p2, v5}, Lc/e/a/b/g/f/kc;->f(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 506
    :pswitch_73
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 507
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 508
    invoke-static {v9, v8, p2, v5}, Lc/e/a/b/g/f/kc;->h(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 509
    :pswitch_74
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 510
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 511
    invoke-static {v9, v8, p2, v5}, Lc/e/a/b/g/f/kc;->d(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 512
    :pswitch_75
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 513
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 514
    invoke-static {v9, v8, p2, v5}, Lc/e/a/b/g/f/kc;->c(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 515
    :pswitch_76
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 516
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 517
    invoke-static {v9, v8, p2, v5}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 518
    :pswitch_77
    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 519
    invoke-static {p1, v10, v11}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 520
    invoke-static {v9, v8, p2, v5}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_5

    .line 521
    :pswitch_78
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 522
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 523
    invoke-virtual {p0, v7}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    .line 524
    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->a(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_5

    .line 525
    :pswitch_79
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 526
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 527
    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->b(IJ)V

    goto/16 :goto_5

    .line 528
    :pswitch_7a
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 529
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 530
    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->f(II)V

    goto/16 :goto_5

    .line 531
    :pswitch_7b
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 532
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 533
    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->a(IJ)V

    goto/16 :goto_5

    .line 534
    :pswitch_7c
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 535
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 536
    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->e(II)V

    goto/16 :goto_5

    .line 537
    :pswitch_7d
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 538
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 539
    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->b(II)V

    goto/16 :goto_5

    .line 540
    :pswitch_7e
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 541
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 542
    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->d(II)V

    goto/16 :goto_5

    .line 543
    :pswitch_7f
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 544
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzdp;

    .line 545
    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->a(ILcom/google/android/gms/internal/measurement/zzdp;)V

    goto/16 :goto_5

    .line 546
    :pswitch_80
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 547
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 548
    invoke-virtual {p0, v7}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->b(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_5

    .line 549
    :pswitch_81
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 550
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10, v8, p2}, Lc/e/a/b/g/f/Wb;->a(ILjava/lang/Object;Lc/e/a/b/g/f/Oc;)V

    goto/16 :goto_5

    .line 551
    :pswitch_82
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 552
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->c(Ljava/lang/Object;J)Z

    move-result v8

    .line 553
    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->a(IZ)V

    goto/16 :goto_5

    .line 554
    :pswitch_83
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 555
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 556
    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->c(II)V

    goto :goto_5

    .line 557
    :pswitch_84
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 558
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 559
    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->c(IJ)V

    goto :goto_5

    .line 560
    :pswitch_85
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 561
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 562
    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->a(II)V

    goto :goto_5

    .line 563
    :pswitch_86
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 564
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 565
    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->e(IJ)V

    goto :goto_5

    .line 566
    :pswitch_87
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 567
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 568
    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->d(IJ)V

    goto :goto_5

    .line 569
    :pswitch_88
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 570
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->d(Ljava/lang/Object;J)F

    move-result v8

    .line 571
    invoke-interface {p2, v10, v8}, Lc/e/a/b/g/f/Oc;->a(IF)V

    goto :goto_5

    .line 572
    :pswitch_89
    invoke-virtual {p0, p1, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_7

    and-int/2addr v8, v6

    int-to-long v8, v8

    .line 573
    invoke-static {p1, v8, v9}, Lc/e/a/b/g/f/Fc;->e(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 574
    invoke-interface {p2, v10, v8, v9}, Lc/e/a/b/g/f/Oc;->a(ID)V

    :cond_7
    :goto_5
    add-int/lit8 v7, v7, 0x3

    goto/16 :goto_4

    .line 575
    :cond_8
    iget-object p1, p0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-virtual {p1, v0}, Lc/e/a/b/g/f/db;->a(Ljava/util/Map$Entry;)I

    throw v3

    :cond_9
    if-nez v0, :cond_a

    .line 576
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->q:Lc/e/a/b/g/f/zc;

    invoke-static {v0, p1, p2}, Lc/e/a/b/g/f/Wb;->a(Lc/e/a/b/g/f/zc;Ljava/lang/Object;Lc/e/a/b/g/f/Oc;)V

    return-void

    .line 577
    :cond_a
    iget-object p1, p0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-virtual {p1, p2, v0}, Lc/e/a/b/g/f/db;->a(Lc/e/a/b/g/f/Oc;Ljava/util/Map$Entry;)V

    throw v3

    .line 578
    :cond_b
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;Lc/e/a/b/g/f/Oc;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Lc/e/a/b/g/f/gc;Lc/e/a/b/g/f/cb;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/e/a/b/g/f/gc;",
            "Lc/e/a/b/g/f/cb;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_1c

    .line 582
    iget-object v7, p0, Lc/e/a/b/g/f/Wb;->q:Lc/e/a/b/g/f/zc;

    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    const/4 v8, 0x0

    move-object v9, v8

    .line 583
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->e()I

    move-result v1

    .line 584
    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/Wb;->g(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v2, :cond_9

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    .line 585
    iget p2, p0, Lc/e/a/b/g/f/Wb;->m:I

    :goto_1
    iget p3, p0, Lc/e/a/b/g/f/Wb;->n:I

    if-ge p2, p3, :cond_1

    .line 586
    iget-object p3, p0, Lc/e/a/b/g/f/Wb;->l:[I

    aget p3, p3, p2

    .line 587
    invoke-virtual {p0, p1, p3, v9, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;ILjava/lang/Object;Lc/e/a/b/g/f/zc;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v9, :cond_2

    .line 588
    invoke-virtual {v7, p1, v9}, Lc/e/a/b/g/f/zc;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 589
    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lc/e/a/b/g/f/Wb;->h:Z

    if-nez v2, :cond_4

    move-object v2, v8

    goto :goto_2

    .line 590
    :cond_4
    iget-object v2, p0, Lc/e/a/b/g/f/Wb;->g:Lc/e/a/b/g/f/Sb;

    invoke-virtual {v0, p3, v2, v1}, Lc/e/a/b/g/f/db;->a(Lc/e/a/b/g/f/cb;Lc/e/a/b/g/f/Sb;I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_5

    .line 591
    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/db;->b(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object v4

    move-object v1, p2

    move-object v3, p3

    move-object v5, v9

    move-object v6, v7

    .line 592
    invoke-virtual/range {v0 .. v6}, Lc/e/a/b/g/f/db;->a(Lc/e/a/b/g/f/gc;Ljava/lang/Object;Lc/e/a/b/g/f/cb;Lc/e/a/b/g/f/gb;Ljava/lang/Object;Lc/e/a/b/g/f/zc;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 593
    :cond_5
    :try_start_2
    invoke-virtual {v7, p2}, Lc/e/a/b/g/f/zc;->a(Lc/e/a/b/g/f/gc;)Z

    if-nez v9, :cond_6

    .line 594
    invoke-virtual {v7, p1}, Lc/e/a/b/g/f/zc;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 595
    :cond_6
    invoke-virtual {v7, v9, p2}, Lc/e/a/b/g/f/zc;->a(Ljava/lang/Object;Lc/e/a/b/g/f/gc;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_0

    .line 596
    iget p2, p0, Lc/e/a/b/g/f/Wb;->m:I

    :goto_3
    iget p3, p0, Lc/e/a/b/g/f/Wb;->n:I

    if-ge p2, p3, :cond_7

    .line 597
    iget-object p3, p0, Lc/e/a/b/g/f/Wb;->l:[I

    aget p3, p3, p2

    .line 598
    invoke-virtual {p0, p1, p3, v9, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;ILjava/lang/Object;Lc/e/a/b/g/f/zc;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    if-eqz v9, :cond_8

    .line 599
    invoke-virtual {v7, p1, v9}, Lc/e/a/b/g/f/zc;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    return-void

    .line 600
    :cond_9
    :try_start_3
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/high16 v4, 0xff00000

    and-int/2addr v4, v3

    ushr-int/lit8 v4, v4, 0x14

    const v5, 0xfffff

    packed-switch v4, :pswitch_data_0

    if-nez v9, :cond_14

    .line 601
    :try_start_4
    invoke-virtual {v7}, Lc/e/a/b/g/f/zc;->a()Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_8

    :pswitch_0
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 602
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v5

    invoke-interface {p2, v5, p3}, Lc/e/a/b/g/f/gc;->b(Lc/e/a/b/g/f/hc;Lc/e/a/b/g/f/cb;)Ljava/lang/Object;

    move-result-object v5

    .line 603
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 604
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_1
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 605
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->p()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 606
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 607
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_2
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 608
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 609
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 610
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_3
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 611
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->d()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 612
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 613
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_4
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 614
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 615
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 616
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 617
    :pswitch_5
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->i()I

    move-result v4

    .line 618
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->c(I)Lc/e/a/b/g/f/tb;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 619
    invoke-interface {v6, v4}, Lc/e/a/b/g/f/tb;->a(I)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_4

    .line 620
    :cond_a
    invoke-static {v1, v4, v9, v7}, Lc/e/a/b/g/f/kc;->a(IILjava/lang/Object;Lc/e/a/b/g/f/zc;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0

    :cond_b
    :goto_4
    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 621
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v5, v6, v3}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 622
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_6
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 623
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->g()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 624
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 625
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_7
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 626
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->k()Lcom/google/android/gms/internal/measurement/zzdp;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 627
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 628
    :pswitch_8
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_c

    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 629
    invoke-static {p1, v3, v4}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 630
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v6

    .line 631
    invoke-interface {p2, v6, p3}, Lc/e/a/b/g/f/gc;->a(Lc/e/a/b/g/f/hc;Lc/e/a/b/g/f/cb;)Ljava/lang/Object;

    move-result-object v6

    .line 632
    invoke-static {v5, v6}, Lc/e/a/b/g/f/qb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 633
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_c
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 634
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v5

    .line 635
    invoke-interface {p2, v5, p3}, Lc/e/a/b/g/f/gc;->a(Lc/e/a/b/g/f/hc;Lc/e/a/b/g/f/cb;)Ljava/lang/Object;

    move-result-object v5

    .line 636
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 637
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    .line 638
    :goto_5
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 639
    :pswitch_9
    invoke-virtual {p0, p1, v3, p2}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;ILc/e/a/b/g/f/gc;)V

    .line 640
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_a
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 641
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->o()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 642
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 643
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_b
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 644
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->l()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 645
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 646
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_c
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 647
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 648
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 649
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_d
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 650
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 651
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 652
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_e
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 653
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->f()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 654
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 655
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_f
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 656
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->h()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 657
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 658
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_10
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 659
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->readFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 660
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 661
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_11
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 662
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->readDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 663
    invoke-static {p1, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 664
    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 665
    :pswitch_12
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->b(I)Ljava/lang/Object;

    move-result-object v1

    .line 666
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result v2

    and-int/2addr v2, v5

    int-to-long v2, v2

    .line 667
    invoke-static {p1, v2, v3}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 668
    iget-object v5, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    invoke-interface {v5, v4}, Lc/e/a/b/g/f/Nb;->f(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 669
    iget-object v5, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    invoke-interface {v5, v1}, Lc/e/a/b/g/f/Nb;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 670
    iget-object v6, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    invoke-interface {v6, v5, v4}, Lc/e/a/b/g/f/Nb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-static {p1, v2, v3, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v4, v5

    goto :goto_6

    .line 672
    :cond_d
    iget-object v4, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    invoke-interface {v4, v1}, Lc/e/a/b/g/f/Nb;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 673
    invoke-static {p1, v2, v3, v4}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 674
    :cond_e
    :goto_6
    iget-object v2, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    .line 675
    invoke-interface {v2, v4}, Lc/e/a/b/g/f/Nb;->b(Ljava/lang/Object;)Ljava/util/Map;

    iget-object v2, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    .line 676
    invoke-interface {v2, v1}, Lc/e/a/b/g/f/Nb;->c(Ljava/lang/Object;)Lc/e/a/b/g/f/Mb;
    :try_end_4
    .catch Lcom/google/android/gms/internal/measurement/zzfi; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    :pswitch_13
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 677
    :try_start_5
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v1

    .line 678
    iget-object v2, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    .line 679
    invoke-virtual {v2, p1, v3, v4}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 680
    invoke-interface {p2, v2, v1, p3}, Lc/e/a/b/g/f/gc;->b(Ljava/util/List;Lc/e/a/b/g/f/hc;Lc/e/a/b/g/f/cb;)V

    goto/16 :goto_0

    .line 681
    :pswitch_14
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 682
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 683
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 684
    :pswitch_15
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 685
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 686
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 687
    :pswitch_16
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 688
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 689
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->i(Ljava/util/List;)V

    goto/16 :goto_0

    .line 690
    :pswitch_17
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 691
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 692
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 693
    :pswitch_18
    iget-object v4, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 694
    invoke-virtual {v4, p1, v5, v6}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 695
    invoke-interface {p2, v3}, Lc/e/a/b/g/f/gc;->d(Ljava/util/List;)V

    .line 696
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->c(I)Lc/e/a/b/g/f/tb;

    move-result-object v2

    .line 697
    invoke-static {v1, v3, v2, v9, v7}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/tb;Ljava/lang/Object;Lc/e/a/b/g/f/zc;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0

    .line 698
    :pswitch_19
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 699
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 700
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->n(Ljava/util/List;)V

    goto/16 :goto_0

    .line 701
    :pswitch_1a
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 702
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 703
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->k(Ljava/util/List;)V

    goto/16 :goto_0

    .line 704
    :pswitch_1b
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 705
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 706
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->f(Ljava/util/List;)V

    goto/16 :goto_0

    .line 707
    :pswitch_1c
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 708
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 709
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->h(Ljava/util/List;)V

    goto/16 :goto_0

    .line 710
    :pswitch_1d
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 711
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 712
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 713
    :pswitch_1e
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 714
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 715
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->e(Ljava/util/List;)V

    goto/16 :goto_0

    .line 716
    :pswitch_1f
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 717
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 718
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 719
    :pswitch_20
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 720
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 721
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->o(Ljava/util/List;)V

    goto/16 :goto_0

    .line 722
    :pswitch_21
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 723
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 724
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 725
    :pswitch_22
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 726
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 727
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 728
    :pswitch_23
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 729
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 730
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 731
    :pswitch_24
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 732
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 733
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->i(Ljava/util/List;)V

    goto/16 :goto_0

    .line 734
    :pswitch_25
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 735
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 736
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 737
    :pswitch_26
    iget-object v4, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 738
    invoke-virtual {v4, p1, v5, v6}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 739
    invoke-interface {p2, v3}, Lc/e/a/b/g/f/gc;->d(Ljava/util/List;)V

    .line 740
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->c(I)Lc/e/a/b/g/f/tb;

    move-result-object v2

    .line 741
    invoke-static {v1, v3, v2, v9, v7}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/tb;Ljava/lang/Object;Lc/e/a/b/g/f/zc;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0

    .line 742
    :pswitch_27
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 743
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 744
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->n(Ljava/util/List;)V

    goto/16 :goto_0

    .line 745
    :pswitch_28
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 746
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 747
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->p(Ljava/util/List;)V

    goto/16 :goto_0

    .line 748
    :pswitch_29
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v1

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 749
    iget-object v4, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    .line 750
    invoke-virtual {v4, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 751
    invoke-interface {p2, v2, v1, p3}, Lc/e/a/b/g/f/gc;->a(Ljava/util/List;Lc/e/a/b/g/f/hc;Lc/e/a/b/g/f/cb;)V

    goto/16 :goto_0

    .line 752
    :pswitch_2a
    invoke-static {v3}, Lc/e/a/b/g/f/Wb;->f(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 753
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 754
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 755
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->j(Ljava/util/List;)V

    goto/16 :goto_0

    .line 756
    :cond_f
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 757
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->m(Ljava/util/List;)V

    goto/16 :goto_0

    .line 758
    :pswitch_2b
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 759
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 760
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->k(Ljava/util/List;)V

    goto/16 :goto_0

    .line 761
    :pswitch_2c
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 762
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 763
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->f(Ljava/util/List;)V

    goto/16 :goto_0

    .line 764
    :pswitch_2d
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 765
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 766
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->h(Ljava/util/List;)V

    goto/16 :goto_0

    .line 767
    :pswitch_2e
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 768
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 769
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 770
    :pswitch_2f
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 771
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 772
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->e(Ljava/util/List;)V

    goto/16 :goto_0

    .line 773
    :pswitch_30
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 774
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 775
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 776
    :pswitch_31
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 777
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 778
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->o(Ljava/util/List;)V

    goto/16 :goto_0

    .line 779
    :pswitch_32
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 780
    invoke-virtual {v1, p1, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 781
    invoke-interface {p2, v1}, Lc/e/a/b/g/f/gc;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 782
    :pswitch_33
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_10

    and-int v1, v3, v5

    int-to-long v3, v1

    .line 783
    invoke-static {p1, v3, v4}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 784
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v2

    .line 785
    invoke-interface {p2, v2, p3}, Lc/e/a/b/g/f/gc;->b(Lc/e/a/b/g/f/hc;Lc/e/a/b/g/f/cb;)Ljava/lang/Object;

    move-result-object v2

    .line 786
    invoke-static {v1, v2}, Lc/e/a/b/g/f/qb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 787
    invoke-static {p1, v3, v4, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 788
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v1

    .line 789
    invoke-interface {p2, v1, p3}, Lc/e/a/b/g/f/gc;->b(Lc/e/a/b/g/f/hc;Lc/e/a/b/g/f/cb;)Ljava/lang/Object;

    move-result-object v1

    .line 790
    invoke-static {p1, v3, v4, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 791
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_34
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 792
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->p()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JJ)V

    .line 793
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_35
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 794
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->m()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JI)V

    .line 795
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_36
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 796
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->d()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JJ)V

    .line 797
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_37
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 798
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->b()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JI)V

    .line 799
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 800
    :pswitch_38
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->i()I

    move-result v4

    .line 801
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->c(I)Lc/e/a/b/g/f/tb;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 802
    invoke-interface {v6, v4}, Lc/e/a/b/g/f/tb;->a(I)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_7

    .line 803
    :cond_11
    invoke-static {v1, v4, v9, v7}, Lc/e/a/b/g/f/kc;->a(IILjava/lang/Object;Lc/e/a/b/g/f/zc;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0

    :cond_12
    :goto_7
    and-int v1, v3, v5

    int-to-long v5, v1

    .line 804
    invoke-static {p1, v5, v6, v4}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JI)V

    .line 805
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_39
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 806
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->g()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JI)V

    .line 807
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3a
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 808
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->k()Lcom/google/android/gms/internal/measurement/zzdp;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 809
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 810
    :pswitch_3b
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_13

    and-int v1, v3, v5

    int-to-long v3, v1

    .line 811
    invoke-static {p1, v3, v4}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 812
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v2

    .line 813
    invoke-interface {p2, v2, p3}, Lc/e/a/b/g/f/gc;->a(Lc/e/a/b/g/f/hc;Lc/e/a/b/g/f/cb;)Ljava/lang/Object;

    move-result-object v2

    .line 814
    invoke-static {v1, v2}, Lc/e/a/b/g/f/qb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 815
    invoke-static {p1, v3, v4, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 816
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v1

    .line 817
    invoke-interface {p2, v1, p3}, Lc/e/a/b/g/f/gc;->a(Lc/e/a/b/g/f/hc;Lc/e/a/b/g/f/cb;)Ljava/lang/Object;

    move-result-object v1

    .line 818
    invoke-static {p1, v3, v4, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 819
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 820
    :pswitch_3c
    invoke-virtual {p0, p1, v3, p2}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;ILc/e/a/b/g/f/gc;)V

    .line 821
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3d
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 822
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->o()Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JZ)V

    .line 823
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3e
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 824
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->l()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JI)V

    .line 825
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3f
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 826
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->c()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JJ)V

    .line 827
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_40
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 828
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->a()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JI)V

    .line 829
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_41
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 830
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->f()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JJ)V

    .line 831
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_42
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 832
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->h()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JJ)V

    .line 833
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_43
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 834
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->readFloat()F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JF)V

    .line 835
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_44
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 836
    invoke-interface {p2}, Lc/e/a/b/g/f/gc;->readDouble()D

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JD)V

    .line 837
    invoke-virtual {p0, p1, v2}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 838
    :cond_14
    :goto_8
    invoke-virtual {v7, v9, p2}, Lc/e/a/b/g/f/zc;->a(Ljava/lang/Object;Lc/e/a/b/g/f/gc;)Z

    move-result v1
    :try_end_5
    .catch Lcom/google/android/gms/internal/measurement/zzfi; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_0

    .line 839
    iget p2, p0, Lc/e/a/b/g/f/Wb;->m:I

    :goto_9
    iget p3, p0, Lc/e/a/b/g/f/Wb;->n:I

    if-ge p2, p3, :cond_15

    .line 840
    iget-object p3, p0, Lc/e/a/b/g/f/Wb;->l:[I

    aget p3, p3, p2

    .line 841
    invoke-virtual {p0, p1, p3, v9, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;ILjava/lang/Object;Lc/e/a/b/g/f/zc;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_15
    if-eqz v9, :cond_16

    .line 842
    invoke-virtual {v7, p1, v9}, Lc/e/a/b/g/f/zc;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    return-void

    .line 843
    :catch_0
    :try_start_6
    invoke-virtual {v7, p2}, Lc/e/a/b/g/f/zc;->a(Lc/e/a/b/g/f/gc;)Z

    if-nez v9, :cond_17

    .line 844
    invoke-virtual {v7, p1}, Lc/e/a/b/g/f/zc;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    .line 845
    :cond_17
    invoke-virtual {v7, v9, p2}, Lc/e/a/b/g/f/zc;->a(Ljava/lang/Object;Lc/e/a/b/g/f/gc;)Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v1, :cond_0

    .line 846
    iget p2, p0, Lc/e/a/b/g/f/Wb;->m:I

    :goto_a
    iget p3, p0, Lc/e/a/b/g/f/Wb;->n:I

    if-ge p2, p3, :cond_18

    .line 847
    iget-object p3, p0, Lc/e/a/b/g/f/Wb;->l:[I

    aget p3, p3, p2

    .line 848
    invoke-virtual {p0, p1, p3, v9, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;ILjava/lang/Object;Lc/e/a/b/g/f/zc;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_18
    if-eqz v9, :cond_19

    .line 849
    invoke-virtual {v7, p1, v9}, Lc/e/a/b/g/f/zc;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    return-void

    :catchall_0
    move-exception p2

    .line 850
    iget p3, p0, Lc/e/a/b/g/f/Wb;->m:I

    :goto_b
    iget v0, p0, Lc/e/a/b/g/f/Wb;->n:I

    if-ge p3, v0, :cond_1a

    .line 851
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->l:[I

    aget v0, v0, p3

    .line 852
    invoke-virtual {p0, p1, v0, v9, v7}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;ILjava/lang/Object;Lc/e/a/b/g/f/zc;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    :cond_1a
    if-eqz v9, :cond_1b

    .line 853
    invoke-virtual {v7, p1, v9}, Lc/e/a/b/g/f/zc;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw p2

    .line 854
    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_d

    :goto_c
    throw p1

    :goto_d
    goto :goto_c

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 88
    :goto_0
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 89
    invoke-virtual {p0, v0}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 90
    iget-object v4, p0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 91
    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 92
    :pswitch_1
    invoke-virtual {p0, p2, v4, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 94
    invoke-virtual {p0, p1, v4, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 95
    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 96
    :pswitch_3
    invoke-virtual {p0, p2, v4, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 98
    invoke-virtual {p0, p1, v4, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 99
    :pswitch_4
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    invoke-static {v1, p1, p2, v2, v3}, Lc/e/a/b/g/f/kc;->a(Lc/e/a/b/g/f/Nb;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 100
    :pswitch_5
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    invoke-virtual {v1, p1, p2, v2, v3}, Lc/e/a/b/g/f/Db;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 101
    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 102
    :pswitch_7
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JJ)V

    .line 104
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 105
    :pswitch_8
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JI)V

    .line 107
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 108
    :pswitch_9
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JJ)V

    .line 110
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 111
    :pswitch_a
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JI)V

    .line 113
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 114
    :pswitch_b
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JI)V

    .line 116
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 117
    :pswitch_c
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JI)V

    .line 119
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 120
    :pswitch_d
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 122
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 123
    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 124
    :pswitch_f
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 126
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 127
    :pswitch_10
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->c(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JZ)V

    .line 129
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 130
    :pswitch_11
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JI)V

    .line 132
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 133
    :pswitch_12
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JJ)V

    .line 135
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 136
    :pswitch_13
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JI)V

    .line 138
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 139
    :pswitch_14
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JJ)V

    .line 141
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 142
    :pswitch_15
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JJ)V

    .line 144
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 145
    :pswitch_16
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->d(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JF)V

    .line 147
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 148
    :pswitch_17
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JD)V

    .line 150
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 151
    :cond_1
    iget-boolean v0, p0, Lc/e/a/b/g/f/Wb;->j:Z

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->q:Lc/e/a/b/g/f/zc;

    invoke-static {v0, p1, p2}, Lc/e/a/b/g/f/kc;->a(Lc/e/a/b/g/f/zc;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    iget-boolean v0, p0, Lc/e/a/b/g/f/Wb;->h:Z

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-static {v0, p1, p2}, Lc/e/a/b/g/f/kc;->a(Lc/e/a/b/g/f/db;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 155
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 156
    invoke-virtual {p0, p3}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 157
    invoke-virtual {p0, p2, p3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 159
    invoke-static {p2, v0, v1}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 160
    invoke-static {v2, p2}, Lc/e/a/b/g/f/qb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 161
    invoke-static {p1, v0, v1, p2}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 162
    invoke-virtual {p0, p1, p3}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 163
    invoke-static {p1, v0, v1, p2}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 164
    invoke-virtual {p0, p1, p3}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/Object;[BIILc/e/a/b/g/f/Ia;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lc/e/a/b/g/f/Ia;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 1162
    iget-boolean v0, v15, Lc/e/a/b/g/f/Wb;->j:Z

    if-eqz v0, :cond_12

    .line 1163
    sget-object v9, Lc/e/a/b/g/f/Wb;->b:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v13, :cond_10

    add-int/lit8 v3, v0, 0x1

    .line 1164
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 1165
    invoke-static {v0, v12, v3, v11}, Lc/e/a/b/g/f/Ha;->a(I[BILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 1166
    iget v3, v11, Lc/e/a/b/g/f/Ia;->a:I

    move v8, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v8, v3

    :goto_1
    ushr-int/lit8 v7, v17, 0x3

    and-int/lit8 v6, v17, 0x7

    if-le v7, v1, :cond_1

    .line 1167
    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v15, v7, v2}, Lc/e/a/b/g/f/Wb;->a(II)I

    move-result v0

    goto :goto_2

    .line 1168
    :cond_1
    invoke-virtual {v15, v7}, Lc/e/a/b/g/f/Wb;->g(I)I

    move-result v0

    :goto_2
    move v4, v0

    if-ne v4, v10, :cond_2

    move/from16 v24, v7

    move v2, v8

    move-object/from16 v18, v9

    const/16 v19, 0x0

    const/16 v26, -0x1

    goto/16 :goto_f

    .line 1169
    :cond_2
    iget-object v0, v15, Lc/e/a/b/g/f/Wb;->c:[I

    add-int/lit8 v1, v4, 0x1

    aget v5, v0, v1

    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v3, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v1, v0

    const/16 v0, 0x11

    const/4 v10, 0x2

    if-gt v3, v0, :cond_7

    const/4 v0, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    if-nez v6, :cond_a

    .line 1170
    invoke-static {v12, v8, v11}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v6

    move-wide/from16 v19, v1

    .line 1171
    iget-wide v0, v11, Lc/e/a/b/g/f/Ia;->b:J

    .line 1172
    invoke-static {v0, v1}, Lc/e/a/b/g/f/Ua;->a(J)J

    move-result-wide v21

    move-object v0, v9

    move-wide/from16 v2, v19

    move-object/from16 v1, p1

    move v10, v4

    move-wide/from16 v4, v21

    .line 1173
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_6

    :pswitch_1
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1174
    invoke-static {v12, v8, v11}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 1175
    iget v1, v11, Lc/e/a/b/g/f/Ia;->a:I

    .line 1176
    invoke-static {v1}, Lc/e/a/b/g/f/Ua;->a(I)I

    move-result v1

    .line 1177
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_2
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1178
    invoke-static {v12, v8, v11}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 1179
    iget v1, v11, Lc/e/a/b/g/f/Ia;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_3
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 1180
    invoke-static {v12, v8, v11}, Lc/e/a/b/g/f/Ha;->e([BILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 1181
    iget-object v1, v11, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 1182
    invoke-virtual {v15, v4}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v0

    .line 1183
    invoke-static {v0, v12, v8, v13, v11}, Lc/e/a/b/g/f/Ha;->a(Lc/e/a/b/g/f/hc;[BIILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 1184
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1185
    iget-object v1, v11, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 1186
    :cond_3
    iget-object v5, v11, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    .line 1187
    invoke-static {v1, v5}, Lc/e/a/b/g/f/qb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1188
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_4

    .line 1189
    invoke-static {v12, v8, v11}, Lc/e/a/b/g/f/Ha;->c([BILc/e/a/b/g/f/Ia;)I

    move-result v0

    goto :goto_3

    .line 1190
    :cond_4
    invoke-static {v12, v8, v11}, Lc/e/a/b/g/f/Ha;->d([BILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 1191
    :goto_3
    iget-object v1, v11, Lc/e/a/b/g/f/Ia;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_6
    move-wide v2, v1

    if-nez v6, :cond_a

    .line 1192
    invoke-static {v12, v8, v11}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v1

    .line 1193
    iget-wide v5, v11, Lc/e/a/b/g/f/Ia;->b:J

    const-wide/16 v19, 0x0

    cmp-long v8, v5, v19

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-static {v14, v2, v3, v0}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JZ)V

    move v0, v1

    goto :goto_5

    :pswitch_7
    move-wide v2, v1

    const/4 v0, 0x5

    if-ne v6, v0, :cond_a

    .line 1194
    invoke-static {v12, v8}, Lc/e/a/b/g/f/Ha;->a([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v8, 0x4

    :goto_5
    move v2, v4

    move v1, v7

    goto/16 :goto_9

    :pswitch_8
    move-wide v2, v1

    if-ne v6, v0, :cond_a

    .line 1195
    invoke-static {v12, v8}, Lc/e/a/b/g/f/Ha;->b([BI)J

    move-result-wide v5

    move-object v0, v9

    move-object/from16 v1, p1

    move v10, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_7

    :pswitch_9
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1196
    invoke-static {v12, v8, v11}, Lc/e/a/b/g/f/Ha;->a([BILc/e/a/b/g/f/Ia;)I

    move-result v0

    .line 1197
    iget v1, v11, Lc/e/a/b/g/f/Ia;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_a
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1198
    invoke-static {v12, v8, v11}, Lc/e/a/b/g/f/Ha;->b([BILc/e/a/b/g/f/Ia;)I

    move-result v6

    .line 1199
    iget-wide v4, v11, Lc/e/a/b/g/f/Ia;->b:J

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_6
    move v0, v6

    goto :goto_8

    :pswitch_b
    move-wide v2, v1

    move v10, v4

    const/4 v0, 0x5

    if-ne v6, v0, :cond_6

    .line 1200
    invoke-static {v12, v8}, Lc/e/a/b/g/f/Ha;->d([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    goto :goto_8

    :pswitch_c
    move-wide v2, v1

    move v10, v4

    if-ne v6, v0, :cond_6

    .line 1201
    invoke-static {v12, v8}, Lc/e/a/b/g/f/Ha;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JD)V

    :goto_7
    add-int/lit8 v0, v8, 0x8

    :goto_8
    move v1, v7

    move v2, v10

    :goto_9
    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_6
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    goto :goto_c

    :cond_7
    const/16 v0, 0x1b

    if-ne v3, v0, :cond_b

    if-ne v6, v10, :cond_a

    .line 1202
    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/vb;

    .line 1203
    invoke-interface {v0}, Lc/e/a/b/g/f/vb;->s()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1204
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0xa

    goto :goto_a

    :cond_8
    shl-int/lit8 v3, v3, 0x1

    .line 1205
    :goto_a
    invoke-interface {v0, v3}, Lc/e/a/b/g/f/vb;->c(I)Lc/e/a/b/g/f/vb;

    move-result-object v0

    .line 1206
    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_9
    move-object v5, v0

    .line 1207
    invoke-virtual {v15, v4}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v19, v4

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 1208
    invoke-static/range {v0 .. v6}, Lc/e/a/b/g/f/Ha;->a(Lc/e/a/b/g/f/hc;I[BIILc/e/a/b/g/f/vb;Lc/e/a/b/g/f/Ia;)I

    move-result v0

    move v1, v7

    move/from16 v2, v19

    goto :goto_9

    :cond_a
    :goto_b
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    :goto_c
    const/16 v26, -0x1

    goto :goto_d

    :cond_b
    move/from16 v19, v4

    const/16 v0, 0x31

    if-gt v3, v0, :cond_c

    int-to-long v4, v5

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v10, v3

    move v3, v8

    move-wide/from16 v22, v4

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 p3, v6

    move v6, v7

    move/from16 v24, v7

    move/from16 v7, p3

    move v15, v8

    move/from16 v8, v19

    move-object/from16 v18, v9

    move/from16 v25, v10

    const/16 v26, -0x1

    move-wide/from16 v9, v22

    move/from16 v11, v25

    move-wide/from16 v12, v20

    move-object/from16 v14, p5

    .line 1209
    invoke-virtual/range {v0 .. v14}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;[BIIIIIIJIJLc/e/a/b/g/f/Ia;)I

    move-result v0

    if-ne v0, v15, :cond_f

    goto :goto_e

    :cond_c
    move-wide/from16 v20, v1

    move/from16 v25, v3

    move/from16 p3, v6

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    const/16 v0, 0x32

    move/from16 v9, v25

    if-ne v9, v0, :cond_e

    move/from16 v7, p3

    if-eq v7, v10, :cond_d

    :goto_d
    move v2, v15

    goto :goto_f

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v20

    move-object/from16 v8, p5

    .line 1210
    invoke-virtual/range {v0 .. v8}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;[BIIIJLc/e/a/b/g/f/Ia;)I

    const/4 v0, 0x0

    throw v0

    :cond_e
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v17

    move/from16 v6, v24

    move-wide/from16 v10, v20

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 1211
    invoke-virtual/range {v0 .. v13}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;[BIIIIIIIJILc/e/a/b/g/f/Ia;)I

    move-result v0

    if-ne v0, v15, :cond_f

    :goto_e
    move v2, v0

    .line 1212
    :goto_f
    invoke-static/range {p1 .. p1}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;)Lc/e/a/b/g/f/Ac;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 1213
    invoke-static/range {v0 .. v5}, Lc/e/a/b/g/f/Ha;->a(I[BIILc/e/a/b/g/f/Ac;Lc/e/a/b/g/f/Ia;)I

    move-result v0

    :cond_f
    const/4 v10, -0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v18

    move/from16 v2, v19

    move/from16 v1, v24

    goto/16 :goto_0

    :cond_10
    move v4, v13

    if-ne v0, v4, :cond_11

    return-void

    .line 1214
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->h()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object v0

    throw v0

    :cond_12
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 1215
    invoke-virtual/range {v0 .. v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;[BIIILc/e/a/b/g/f/Ia;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 1224
    :goto_0
    iget v4, p0, Lc/e/a/b/g/f/Wb;->m:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_c

    .line 1225
    iget-object v4, p0, Lc/e/a/b/g/f/Wb;->l:[I

    aget v4, v4, v1

    .line 1226
    iget-object v6, p0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v6, v6, v4

    .line 1227
    invoke-virtual {p0, v4}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result v7

    .line 1228
    iget-boolean v8, p0, Lc/e/a/b/g/f/Wb;->j:Z

    const v9, 0xfffff

    if-nez v8, :cond_0

    .line 1229
    iget-object v8, p0, Lc/e/a/b/g/f/Wb;->c:[I

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    and-int v10, v8, v9

    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v5, v8

    if-eq v10, v2, :cond_1

    .line 1230
    sget-object v2, Lc/e/a/b/g/f/Wb;->b:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v2, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v3, v2

    move v2, v10

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :cond_1
    :goto_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v7

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_3

    .line 1231
    invoke-virtual {p0, p1, v4, v3, v8}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;III)Z

    move-result v10

    if-nez v10, :cond_3

    return v0

    :cond_3
    const/high16 v10, 0xff00000

    and-int/2addr v10, v7

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x9

    if-eq v10, v11, :cond_a

    const/16 v11, 0x11

    if-eq v10, v11, :cond_a

    const/16 v8, 0x1b

    if-eq v10, v8, :cond_7

    const/16 v8, 0x3c

    if-eq v10, v8, :cond_6

    const/16 v8, 0x44

    if-eq v10, v8, :cond_6

    const/16 v6, 0x31

    if-eq v10, v6, :cond_7

    const/16 v5, 0x32

    if-eq v10, v5, :cond_4

    goto :goto_5

    .line 1232
    :cond_4
    iget-object v5, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    and-int v6, v7, v9

    int-to-long v6, v6

    .line 1233
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lc/e/a/b/g/f/Nb;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 1234
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    .line 1235
    :cond_5
    invoke-virtual {p0, v4}, Lc/e/a/b/g/f/Wb;->b(I)Ljava/lang/Object;

    move-result-object p1

    .line 1236
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    invoke-interface {v0, p1}, Lc/e/a/b/g/f/Nb;->c(Ljava/lang/Object;)Lc/e/a/b/g/f/Mb;

    const/4 p1, 0x0

    throw p1

    .line 1237
    :cond_6
    invoke-virtual {p0, p1, v6, v4}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1238
    invoke-virtual {p0, v4}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;ILc/e/a/b/g/f/hc;)Z

    move-result v4

    if-nez v4, :cond_b

    return v0

    :cond_7
    and-int v6, v7, v9

    int-to-long v6, v6

    .line 1239
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1240
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1241
    invoke-virtual {p0, v4}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v4

    const/4 v7, 0x0

    .line 1242
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 1243
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1244
    invoke-interface {v4, v8}, Lc/e/a/b/g/f/hc;->a(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-nez v5, :cond_b

    return v0

    .line 1245
    :cond_a
    invoke-virtual {p0, p1, v4, v3, v8}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1246
    invoke-virtual {p0, v4}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;ILc/e/a/b/g/f/hc;)Z

    move-result v4

    if-nez v4, :cond_b

    return v0

    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1247
    :cond_c
    iget-boolean v1, p0, Lc/e/a/b/g/f/Wb;->h:Z

    if-eqz v1, :cond_d

    .line 1248
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-virtual {v1, p1}, Lc/e/a/b/g/f/db;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/g/f/gb;->d()Z

    move-result p1

    if-nez p1, :cond_d

    return v0

    :cond_d
    return v5
.end method

.method public final a(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1261
    iget-boolean v0, p0, Lc/e/a/b/g/f/Wb;->j:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    .line 1262
    invoke-virtual {p0, p2}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1263
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1264
    :pswitch_0
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 1265
    :pswitch_1
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v2

    .line 1266
    :pswitch_2
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 1267
    :pswitch_3
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    .line 1268
    :pswitch_4
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    .line 1269
    :pswitch_5
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    .line 1270
    :pswitch_6
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    .line 1271
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzdp;->a:Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzdp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    .line 1272
    :pswitch_8
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    .line 1273
    :pswitch_9
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1274
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 1275
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    .line 1276
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/zzdp;

    if-eqz p2, :cond_c

    .line 1277
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzdp;->a:Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzdp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2

    .line 1278
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1279
    :pswitch_a
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->c(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 1280
    :pswitch_b
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    .line 1281
    :pswitch_c
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_e

    return v3

    :cond_e
    return v2

    .line 1282
    :pswitch_d
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v2

    .line 1283
    :pswitch_e
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_10

    return v3

    :cond_10
    return v2

    .line 1284
    :pswitch_f
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_11

    return v3

    :cond_11
    return v2

    .line 1285
    :pswitch_10
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->d(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v3

    :cond_12
    return v2

    .line 1286
    :pswitch_11
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->e(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_13

    return v3

    :cond_13
    return v2

    .line 1287
    :cond_14
    invoke-virtual {p0, p2}, Lc/e/a/b/g/f/Wb;->e(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    .line 1288
    invoke-static {p1, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_15

    return v3

    :cond_15
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1289
    invoke-virtual {p0, p3}, Lc/e/a/b/g/f/Wb;->e(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 1290
    invoke-static {p1, v0, v1}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 1259
    iget-boolean v0, p0, Lc/e/a/b/g/f/Wb;->j:Z

    if-eqz v0, :cond_0

    .line 1260
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p3, p4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(II)I
    .locals 4

    .line 661
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 662
    iget-object v3, p0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 71
    iget-boolean v2, v0, Lc/e/a/b/g/f/Wb;->j:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const/4 v7, 0x1

    const v8, 0xfffff

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_13

    .line 72
    sget-object v2, Lc/e/a/b/g/f/Wb;->b:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 73
    :goto_0
    iget-object v14, v0, Lc/e/a/b/g/f/Wb;->c:[I

    array-length v14, v14

    if-ge v12, v14, :cond_12

    .line 74
    invoke-virtual {v0, v12}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 75
    iget-object v3, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v3, v3, v12

    and-int/2addr v14, v8

    int-to-long v5, v14

    .line 76
    sget-object v14, Lcom/google/android/gms/internal/measurement/zzet;->zzafe:Lcom/google/android/gms/internal/measurement/zzet;

    .line 77
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzet;->f()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lcom/google/android/gms/internal/measurement/zzet;->zzafr:Lcom/google/android/gms/internal/measurement/zzet;

    .line 78
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzet;->f()I

    move-result v14

    if-gt v15, v14, :cond_0

    .line 79
    iget-object v14, v0, Lc/e/a/b/g/f/Wb;->c:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v8

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_4

    .line 80
    :pswitch_0
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 81
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/a/b/g/f/Sb;

    .line 82
    invoke-virtual {v0, v12}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v6

    .line 83
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzeg;->c(ILc/e/a/b/g/f/Sb;Lc/e/a/b/g/f/hc;)I

    move-result v3

    goto/16 :goto_3

    .line 84
    :pswitch_1
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 85
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzeg;->f(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 86
    :pswitch_2
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 87
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzeg;->h(II)I

    move-result v3

    goto/16 :goto_3

    .line 88
    :pswitch_3
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 89
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzeg;->h(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 90
    :pswitch_4
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 91
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/measurement/zzeg;->j(II)I

    move-result v3

    goto/16 :goto_3

    .line 92
    :pswitch_5
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 93
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzeg;->k(II)I

    move-result v3

    goto/16 :goto_3

    .line 94
    :pswitch_6
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 95
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(II)I

    move-result v3

    goto/16 :goto_3

    .line 96
    :pswitch_7
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 97
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzdp;

    .line 98
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzeg;->c(ILcom/google/android/gms/internal/measurement/zzdp;)I

    move-result v3

    goto/16 :goto_3

    .line 99
    :pswitch_8
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 100
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 101
    invoke-virtual {v0, v12}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lc/e/a/b/g/f/kc;->a(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)I

    move-result v3

    goto/16 :goto_3

    .line 102
    :pswitch_9
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 103
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 104
    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/zzdp;

    if-eqz v6, :cond_1

    .line 105
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzeg;->c(ILcom/google/android/gms/internal/measurement/zzdp;)I

    move-result v3

    goto/16 :goto_3

    .line 106
    :cond_1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzeg;->b(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 107
    :pswitch_a
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 108
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/measurement/zzeg;->b(IZ)I

    move-result v3

    goto/16 :goto_3

    .line 109
    :pswitch_b
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 110
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/measurement/zzeg;->i(II)I

    move-result v3

    goto/16 :goto_3

    .line 111
    :pswitch_c
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 112
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzeg;->g(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 113
    :pswitch_d
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 114
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzeg;->f(II)I

    move-result v3

    goto/16 :goto_3

    .line 115
    :pswitch_e
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 116
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzeg;->e(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 117
    :pswitch_f
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 118
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzeg;->d(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 119
    :pswitch_10
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 120
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->b(IF)I

    move-result v3

    goto/16 :goto_3

    .line 121
    :pswitch_11
    invoke-virtual {v0, v1, v3, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 122
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzeg;->b(ID)I

    move-result v3

    goto/16 :goto_3

    .line 123
    :pswitch_12
    iget-object v14, v0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    .line 124
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v12}, Lc/e/a/b/g/f/Wb;->b(I)Ljava/lang/Object;

    move-result-object v6

    .line 125
    invoke-interface {v14, v3, v5, v6}, Lc/e/a/b/g/f/Nb;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3

    .line 126
    :pswitch_13
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v12}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v6

    .line 127
    invoke-static {v3, v5, v6}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Lc/e/a/b/g/f/hc;)I

    move-result v3

    goto/16 :goto_3

    .line 128
    :pswitch_14
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 129
    invoke-static {v5}, Lc/e/a/b/g/f/kc;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 130
    iget-boolean v6, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v6, :cond_2

    int-to-long v14, v14

    .line 131
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 132
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v3

    .line 133
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 134
    :pswitch_15
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 135
    invoke-static {v5}, Lc/e/a/b/g/f/kc;->j(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 136
    iget-boolean v6, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v6, :cond_3

    int-to-long v14, v14

    .line 137
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 138
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v3

    .line 139
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 140
    :pswitch_16
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 141
    invoke-static {v5}, Lc/e/a/b/g/f/kc;->b(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 142
    iget-boolean v6, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v6, :cond_4

    int-to-long v14, v14

    .line 143
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 144
    :cond_4
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v3

    .line 145
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 146
    :pswitch_17
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 147
    invoke-static {v5}, Lc/e/a/b/g/f/kc;->a(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 148
    iget-boolean v6, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v6, :cond_5

    int-to-long v14, v14

    .line 149
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 150
    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v3

    .line 151
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 152
    :pswitch_18
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 153
    invoke-static {v5}, Lc/e/a/b/g/f/kc;->g(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 154
    iget-boolean v6, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v6, :cond_6

    int-to-long v14, v14

    .line 155
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 156
    :cond_6
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v3

    .line 157
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 158
    :pswitch_19
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 159
    invoke-static {v5}, Lc/e/a/b/g/f/kc;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 160
    iget-boolean v6, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v6, :cond_7

    int-to-long v14, v14

    .line 161
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 162
    :cond_7
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v3

    .line 163
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 164
    :pswitch_1a
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 165
    invoke-static {v5}, Lc/e/a/b/g/f/kc;->c(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 166
    iget-boolean v6, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v6, :cond_8

    int-to-long v14, v14

    .line 167
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 168
    :cond_8
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v3

    .line 169
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 170
    :pswitch_1b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 171
    invoke-static {v5}, Lc/e/a/b/g/f/kc;->a(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 172
    iget-boolean v6, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v6, :cond_9

    int-to-long v14, v14

    .line 173
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 174
    :cond_9
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v3

    .line 175
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 176
    :pswitch_1c
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 177
    invoke-static {v5}, Lc/e/a/b/g/f/kc;->b(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 178
    iget-boolean v6, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v6, :cond_a

    int-to-long v14, v14

    .line 179
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 180
    :cond_a
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v3

    .line 181
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 182
    :pswitch_1d
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 183
    invoke-static {v5}, Lc/e/a/b/g/f/kc;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 184
    iget-boolean v6, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v6, :cond_b

    int-to-long v14, v14

    .line 185
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 186
    :cond_b
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v3

    .line 187
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v6

    goto/16 :goto_2

    .line 188
    :pswitch_1e
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 189
    invoke-static {v5}, Lc/e/a/b/g/f/kc;->e(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 190
    iget-boolean v6, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v6, :cond_c

    int-to-long v14, v14

    .line 191
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 192
    :cond_c
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v3

    .line 193
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v6

    goto :goto_2

    .line 194
    :pswitch_1f
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 195
    invoke-static {v5}, Lc/e/a/b/g/f/kc;->d(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 196
    iget-boolean v6, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v6, :cond_d

    int-to-long v14, v14

    .line 197
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 198
    :cond_d
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v3

    .line 199
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v6

    goto :goto_2

    .line 200
    :pswitch_20
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 201
    invoke-static {v5}, Lc/e/a/b/g/f/kc;->a(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 202
    iget-boolean v6, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v6, :cond_e

    int-to-long v14, v14

    .line 203
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 204
    :cond_e
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v3

    .line 205
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v6

    goto :goto_2

    .line 206
    :pswitch_21
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 207
    invoke-static {v5}, Lc/e/a/b/g/f/kc;->b(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 208
    iget-boolean v6, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v6, :cond_f

    int-to-long v14, v14

    .line 209
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 210
    :cond_f
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v3

    .line 211
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v6

    :goto_2
    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto/16 :goto_3

    .line 212
    :pswitch_22
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lc/e/a/b/g/f/kc;->c(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 213
    :pswitch_23
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lc/e/a/b/g/f/kc;->g(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 214
    :pswitch_24
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lc/e/a/b/g/f/kc;->i(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 215
    :pswitch_25
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lc/e/a/b/g/f/kc;->h(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 216
    :pswitch_26
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lc/e/a/b/g/f/kc;->d(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 217
    :pswitch_27
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lc/e/a/b/g/f/kc;->f(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 218
    :pswitch_28
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    .line 219
    :pswitch_29
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v12}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v6

    .line 220
    invoke-static {v3, v5, v6}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/hc;)I

    move-result v3

    goto :goto_3

    .line 221
    :pswitch_2a
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    .line 222
    :pswitch_2b
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lc/e/a/b/g/f/kc;->j(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 223
    :pswitch_2c
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lc/e/a/b/g/f/kc;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 224
    :pswitch_2d
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lc/e/a/b/g/f/kc;->i(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 225
    :pswitch_2e
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lc/e/a/b/g/f/kc;->e(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 226
    :pswitch_2f
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 227
    :pswitch_30
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 228
    :pswitch_31
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lc/e/a/b/g/f/kc;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 229
    :pswitch_32
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lc/e/a/b/g/f/kc;->i(ILjava/util/List;Z)I

    move-result v3

    :goto_3
    add-int/2addr v13, v3

    goto/16 :goto_4

    .line 230
    :pswitch_33
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 231
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/a/b/g/f/Sb;

    .line 232
    invoke-virtual {v0, v12}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v6

    .line 233
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzeg;->c(ILc/e/a/b/g/f/Sb;Lc/e/a/b/g/f/hc;)I

    move-result v3

    goto :goto_3

    .line 234
    :pswitch_34
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 235
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzeg;->f(IJ)I

    move-result v3

    goto :goto_3

    .line 236
    :pswitch_35
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 237
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzeg;->h(II)I

    move-result v3

    goto :goto_3

    .line 238
    :pswitch_36
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 239
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzeg;->h(IJ)I

    move-result v3

    goto :goto_3

    .line 240
    :pswitch_37
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 241
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/measurement/zzeg;->j(II)I

    move-result v3

    goto :goto_3

    .line 242
    :pswitch_38
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 243
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzeg;->k(II)I

    move-result v3

    goto :goto_3

    .line 244
    :pswitch_39
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 245
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzeg;->g(II)I

    move-result v3

    goto :goto_3

    .line 246
    :pswitch_3a
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 247
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzdp;

    .line 248
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzeg;->c(ILcom/google/android/gms/internal/measurement/zzdp;)I

    move-result v3

    goto :goto_3

    .line 249
    :pswitch_3b
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 250
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 251
    invoke-virtual {v0, v12}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lc/e/a/b/g/f/kc;->a(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)I

    move-result v3

    goto/16 :goto_3

    .line 252
    :pswitch_3c
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 253
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 254
    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/zzdp;

    if-eqz v6, :cond_10

    .line 255
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzeg;->c(ILcom/google/android/gms/internal/measurement/zzdp;)I

    move-result v3

    goto/16 :goto_3

    .line 256
    :cond_10
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzeg;->b(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 257
    :pswitch_3d
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 258
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/measurement/zzeg;->b(IZ)I

    move-result v3

    goto/16 :goto_3

    .line 259
    :pswitch_3e
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 260
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/measurement/zzeg;->i(II)I

    move-result v3

    goto/16 :goto_3

    .line 261
    :pswitch_3f
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 262
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzeg;->g(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 263
    :pswitch_40
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 264
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzeg;->f(II)I

    move-result v3

    goto/16 :goto_3

    .line 265
    :pswitch_41
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 266
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzeg;->e(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 267
    :pswitch_42
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 268
    invoke-static {v1, v5, v6}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzeg;->d(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 269
    :pswitch_43
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 270
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->b(IF)I

    move-result v3

    goto/16 :goto_3

    .line 271
    :pswitch_44
    invoke-virtual {v0, v1, v12}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 272
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzeg;->b(ID)I

    move-result v3

    goto/16 :goto_3

    :cond_11
    :goto_4
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    .line 273
    :cond_12
    iget-object v2, v0, Lc/e/a/b/g/f/Wb;->q:Lc/e/a/b/g/f/zc;

    invoke-static {v2, v1}, Lc/e/a/b/g/f/Wb;->a(Lc/e/a/b/g/f/zc;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    .line 274
    :cond_13
    sget-object v2, Lc/e/a/b/g/f/Wb;->b:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v12, 0x0

    .line 275
    :goto_5
    iget-object v13, v0, Lc/e/a/b/g/f/Wb;->c:[I

    array-length v13, v13

    if-ge v3, v13, :cond_2b

    .line 276
    invoke-virtual {v0, v3}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result v13

    .line 277
    iget-object v14, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v15, v14, v3

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_15

    add-int/lit8 v11, v3, 0x2

    .line 278
    aget v11, v14, v11

    and-int v14, v11, v8

    ushr-int/lit8 v18, v11, 0x14

    shl-int v18, v7, v18

    if-eq v14, v6, :cond_14

    int-to-long v9, v14

    .line 279
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    goto :goto_6

    :cond_14
    move v14, v6

    :goto_6
    move v6, v14

    goto :goto_8

    .line 280
    :cond_15
    iget-boolean v9, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v9, :cond_16

    sget-object v9, Lcom/google/android/gms/internal/measurement/zzet;->zzafe:Lcom/google/android/gms/internal/measurement/zzet;

    .line 281
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzet;->f()I

    move-result v9

    if-lt v4, v9, :cond_16

    sget-object v9, Lcom/google/android/gms/internal/measurement/zzet;->zzafr:Lcom/google/android/gms/internal/measurement/zzet;

    .line 282
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzet;->f()I

    move-result v9

    if-gt v4, v9, :cond_16

    .line 283
    iget-object v9, v0, Lc/e/a/b/g/f/Wb;->c:[I

    add-int/lit8 v10, v3, 0x2

    aget v9, v9, v10

    and-int v11, v9, v8

    goto :goto_7

    :cond_16
    const/4 v11, 0x0

    :goto_7
    const/16 v18, 0x0

    :goto_8
    and-int v9, v13, v8

    int-to-long v9, v9

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_b

    .line 284
    :pswitch_45
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 285
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/a/b/g/f/Sb;

    .line 286
    invoke-virtual {v0, v3}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    .line 287
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/measurement/zzeg;->c(ILc/e/a/b/g/f/Sb;Lc/e/a/b/g/f/hc;)I

    move-result v4

    goto/16 :goto_a

    .line 288
    :pswitch_46
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 289
    invoke-static {v1, v9, v10}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzeg;->f(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 290
    :pswitch_47
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 291
    invoke-static {v1, v9, v10}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->h(II)I

    move-result v4

    goto/16 :goto_a

    .line 292
    :pswitch_48
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v9, 0x0

    .line 293
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzeg;->h(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 294
    :pswitch_49
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 295
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->j(II)I

    move-result v9

    goto/16 :goto_d

    .line 296
    :pswitch_4a
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 297
    invoke-static {v1, v9, v10}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->k(II)I

    move-result v4

    goto/16 :goto_a

    .line 298
    :pswitch_4b
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 299
    invoke-static {v1, v9, v10}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(II)I

    move-result v4

    goto/16 :goto_a

    .line 300
    :pswitch_4c
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 301
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzdp;

    .line 302
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->c(ILcom/google/android/gms/internal/measurement/zzdp;)I

    move-result v4

    goto/16 :goto_a

    .line 303
    :pswitch_4d
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 304
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 305
    invoke-virtual {v0, v3}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    invoke-static {v15, v4, v9}, Lc/e/a/b/g/f/kc;->a(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)I

    move-result v4

    goto/16 :goto_a

    .line 306
    :pswitch_4e
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 307
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 308
    instance-of v9, v4, Lcom/google/android/gms/internal/measurement/zzdp;

    if-eqz v9, :cond_17

    .line 309
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->c(ILcom/google/android/gms/internal/measurement/zzdp;)I

    move-result v4

    goto/16 :goto_a

    .line 310
    :cond_17
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->b(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_a

    .line 311
    :pswitch_4f
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 312
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/measurement/zzeg;->b(IZ)I

    move-result v4

    goto/16 :goto_a

    .line 313
    :pswitch_50
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 314
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->i(II)I

    move-result v9

    goto/16 :goto_d

    .line 315
    :pswitch_51
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v9, 0x0

    .line 316
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzeg;->g(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 317
    :pswitch_52
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 318
    invoke-static {v1, v9, v10}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->f(II)I

    move-result v4

    goto/16 :goto_a

    .line 319
    :pswitch_53
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 320
    invoke-static {v1, v9, v10}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzeg;->e(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 321
    :pswitch_54
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 322
    invoke-static {v1, v9, v10}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzeg;->d(IJ)I

    move-result v4

    goto/16 :goto_a

    .line 323
    :pswitch_55
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 324
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->b(IF)I

    move-result v9

    goto/16 :goto_d

    .line 325
    :pswitch_56
    invoke-virtual {v0, v1, v15, v3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v9, 0x0

    .line 326
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzeg;->b(ID)I

    move-result v4

    goto/16 :goto_a

    .line 327
    :pswitch_57
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    .line 328
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v3}, Lc/e/a/b/g/f/Wb;->b(I)Ljava/lang/Object;

    move-result-object v10

    .line 329
    invoke-interface {v4, v15, v9, v10}, Lc/e/a/b/g/f/Nb;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_a

    .line 330
    :pswitch_58
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 331
    invoke-virtual {v0, v3}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    .line 332
    invoke-static {v15, v4, v9}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Lc/e/a/b/g/f/hc;)I

    move-result v4

    goto/16 :goto_a

    .line 333
    :pswitch_59
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 334
    invoke-static {v4}, Lc/e/a/b/g/f/kc;->f(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 335
    iget-boolean v9, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v9, :cond_18

    int-to-long v9, v11

    .line 336
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 337
    :cond_18
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v9

    .line 338
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v10

    goto/16 :goto_9

    .line 339
    :pswitch_5a
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 340
    invoke-static {v4}, Lc/e/a/b/g/f/kc;->j(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 341
    iget-boolean v9, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v9, :cond_19

    int-to-long v9, v11

    .line 342
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 343
    :cond_19
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v9

    .line 344
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v10

    goto/16 :goto_9

    .line 345
    :pswitch_5b
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 346
    invoke-static {v4}, Lc/e/a/b/g/f/kc;->b(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 347
    iget-boolean v9, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v9, :cond_1a

    int-to-long v9, v11

    .line 348
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 349
    :cond_1a
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v9

    .line 350
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v10

    goto/16 :goto_9

    .line 351
    :pswitch_5c
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 352
    invoke-static {v4}, Lc/e/a/b/g/f/kc;->a(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 353
    iget-boolean v9, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v9, :cond_1b

    int-to-long v9, v11

    .line 354
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 355
    :cond_1b
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v9

    .line 356
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v10

    goto/16 :goto_9

    .line 357
    :pswitch_5d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 358
    invoke-static {v4}, Lc/e/a/b/g/f/kc;->g(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 359
    iget-boolean v9, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v9, :cond_1c

    int-to-long v9, v11

    .line 360
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 361
    :cond_1c
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v9

    .line 362
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v10

    goto/16 :goto_9

    .line 363
    :pswitch_5e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 364
    invoke-static {v4}, Lc/e/a/b/g/f/kc;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 365
    iget-boolean v9, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v9, :cond_1d

    int-to-long v9, v11

    .line 366
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 367
    :cond_1d
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v9

    .line 368
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v10

    goto/16 :goto_9

    .line 369
    :pswitch_5f
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 370
    invoke-static {v4}, Lc/e/a/b/g/f/kc;->c(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 371
    iget-boolean v9, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v9, :cond_1e

    int-to-long v9, v11

    .line 372
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 373
    :cond_1e
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v9

    .line 374
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v10

    goto/16 :goto_9

    .line 375
    :pswitch_60
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 376
    invoke-static {v4}, Lc/e/a/b/g/f/kc;->a(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 377
    iget-boolean v9, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v9, :cond_1f

    int-to-long v9, v11

    .line 378
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 379
    :cond_1f
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v9

    .line 380
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v10

    goto/16 :goto_9

    .line 381
    :pswitch_61
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 382
    invoke-static {v4}, Lc/e/a/b/g/f/kc;->b(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 383
    iget-boolean v9, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v9, :cond_20

    int-to-long v9, v11

    .line 384
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 385
    :cond_20
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v9

    .line 386
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v10

    goto/16 :goto_9

    .line 387
    :pswitch_62
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 388
    invoke-static {v4}, Lc/e/a/b/g/f/kc;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 389
    iget-boolean v9, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v9, :cond_21

    int-to-long v9, v11

    .line 390
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 391
    :cond_21
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v9

    .line 392
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v10

    goto/16 :goto_9

    .line 393
    :pswitch_63
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 394
    invoke-static {v4}, Lc/e/a/b/g/f/kc;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 395
    iget-boolean v9, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v9, :cond_22

    int-to-long v9, v11

    .line 396
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 397
    :cond_22
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v9

    .line 398
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v10

    goto :goto_9

    .line 399
    :pswitch_64
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 400
    invoke-static {v4}, Lc/e/a/b/g/f/kc;->d(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 401
    iget-boolean v9, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v9, :cond_23

    int-to-long v9, v11

    .line 402
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 403
    :cond_23
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v9

    .line 404
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v10

    goto :goto_9

    .line 405
    :pswitch_65
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 406
    invoke-static {v4}, Lc/e/a/b/g/f/kc;->a(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 407
    iget-boolean v9, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v9, :cond_24

    int-to-long v9, v11

    .line 408
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 409
    :cond_24
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v9

    .line 410
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v10

    goto :goto_9

    .line 411
    :pswitch_66
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 412
    invoke-static {v4}, Lc/e/a/b/g/f/kc;->b(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 413
    iget-boolean v9, v0, Lc/e/a/b/g/f/Wb;->k:Z

    if-eqz v9, :cond_25

    int-to-long v9, v11

    .line 414
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 415
    :cond_25
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzeg;->e(I)I

    move-result v9

    .line 416
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(I)I

    move-result v10

    :goto_9
    add-int/2addr v9, v10

    add-int/2addr v9, v4

    goto/16 :goto_d

    .line 417
    :pswitch_67
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v11, 0x0

    .line 418
    invoke-static {v15, v4, v11}, Lc/e/a/b/g/f/kc;->c(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_68
    const/4 v11, 0x0

    .line 419
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 420
    invoke-static {v15, v4, v11}, Lc/e/a/b/g/f/kc;->g(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_69
    const/4 v11, 0x0

    .line 421
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 422
    invoke-static {v15, v4, v11}, Lc/e/a/b/g/f/kc;->i(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_6a
    const/4 v11, 0x0

    .line 423
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 424
    invoke-static {v15, v4, v11}, Lc/e/a/b/g/f/kc;->h(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_6b
    const/4 v11, 0x0

    .line 425
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 426
    invoke-static {v15, v4, v11}, Lc/e/a/b/g/f/kc;->d(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_6c
    const/4 v11, 0x0

    .line 427
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 428
    invoke-static {v15, v4, v11}, Lc/e/a/b/g/f/kc;->f(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    .line 429
    :pswitch_6d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 430
    invoke-static {v15, v4}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_a

    .line 431
    :pswitch_6e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v3}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    .line 432
    invoke-static {v15, v4, v9}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/hc;)I

    move-result v4

    goto :goto_a

    .line 433
    :pswitch_6f
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;)I

    move-result v4

    goto :goto_a

    .line 434
    :pswitch_70
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v11, 0x0

    .line 435
    invoke-static {v15, v4, v11}, Lc/e/a/b/g/f/kc;->j(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_71
    const/4 v11, 0x0

    .line 436
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 437
    invoke-static {v15, v4, v11}, Lc/e/a/b/g/f/kc;->h(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_72
    const/4 v11, 0x0

    .line 438
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 439
    invoke-static {v15, v4, v11}, Lc/e/a/b/g/f/kc;->i(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_73
    const/4 v11, 0x0

    .line 440
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 441
    invoke-static {v15, v4, v11}, Lc/e/a/b/g/f/kc;->e(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_74
    const/4 v11, 0x0

    .line 442
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 443
    invoke-static {v15, v4, v11}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_75
    const/4 v11, 0x0

    .line 444
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 445
    invoke-static {v15, v4, v11}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_76
    const/4 v11, 0x0

    .line 446
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 447
    invoke-static {v15, v4, v11}, Lc/e/a/b/g/f/kc;->h(ILjava/util/List;Z)I

    move-result v4

    goto :goto_a

    :pswitch_77
    const/4 v11, 0x0

    .line 448
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 449
    invoke-static {v15, v4, v11}, Lc/e/a/b/g/f/kc;->i(ILjava/util/List;Z)I

    move-result v4

    :goto_a
    add-int/2addr v5, v4

    :cond_26
    :goto_b
    const/4 v4, 0x0

    :goto_c
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_11

    :pswitch_78
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 450
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/a/b/g/f/Sb;

    .line 451
    invoke-virtual {v0, v3}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    .line 452
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/measurement/zzeg;->c(ILc/e/a/b/g/f/Sb;Lc/e/a/b/g/f/hc;)I

    move-result v4

    goto :goto_a

    :pswitch_79
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 453
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzeg;->f(IJ)I

    move-result v4

    goto :goto_a

    :pswitch_7a
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 454
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->h(II)I

    move-result v4

    goto :goto_a

    :pswitch_7b
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    const-wide/16 v9, 0x0

    .line 455
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzeg;->h(IJ)I

    move-result v4

    goto :goto_a

    :pswitch_7c
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 456
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->j(II)I

    move-result v9

    :goto_d
    add-int/2addr v5, v9

    goto :goto_b

    :pswitch_7d
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 457
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->k(II)I

    move-result v4

    goto :goto_a

    :pswitch_7e
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 458
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->g(II)I

    move-result v4

    goto :goto_a

    :pswitch_7f
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 459
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzdp;

    .line 460
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->c(ILcom/google/android/gms/internal/measurement/zzdp;)I

    move-result v4

    goto :goto_a

    :pswitch_80
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 461
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 462
    invoke-virtual {v0, v3}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    invoke-static {v15, v4, v9}, Lc/e/a/b/g/f/kc;->a(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_81
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 463
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 464
    instance-of v9, v4, Lcom/google/android/gms/internal/measurement/zzdp;

    if-eqz v9, :cond_27

    .line 465
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->c(ILcom/google/android/gms/internal/measurement/zzdp;)I

    move-result v4

    goto/16 :goto_a

    .line 466
    :cond_27
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->b(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_82
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 467
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/measurement/zzeg;->b(IZ)I

    move-result v4

    goto/16 :goto_a

    :pswitch_83
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 468
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzeg;->i(II)I

    move-result v9

    add-int/2addr v5, v9

    goto/16 :goto_c

    :pswitch_84
    const/4 v4, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_28

    const-wide/16 v13, 0x0

    .line 469
    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzeg;->g(IJ)I

    move-result v9

    goto :goto_e

    :cond_28
    const-wide/16 v13, 0x0

    goto :goto_f

    :pswitch_85
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    .line 470
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-static {v15, v9}, Lcom/google/android/gms/internal/measurement/zzeg;->f(II)I

    move-result v9

    goto :goto_e

    :pswitch_86
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    .line 471
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzeg;->e(IJ)I

    move-result v9

    goto :goto_e

    :pswitch_87
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_29

    .line 472
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzeg;->d(IJ)I

    move-result v9

    :goto_e
    add-int/2addr v5, v9

    :cond_29
    :goto_f
    const/4 v9, 0x0

    goto :goto_10

    :pswitch_88
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_29

    const/4 v9, 0x0

    .line 473
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/measurement/zzeg;->b(IF)I

    move-result v10

    add-int/2addr v5, v10

    :cond_2a
    :goto_10
    const-wide/16 v10, 0x0

    goto :goto_11

    :pswitch_89
    const/4 v4, 0x0

    const/4 v9, 0x0

    const-wide/16 v13, 0x0

    and-int v10, v12, v18

    if-eqz v10, :cond_2a

    const-wide/16 v10, 0x0

    .line 474
    invoke-static {v15, v10, v11}, Lcom/google/android/gms/internal/measurement/zzeg;->b(ID)I

    move-result v15

    add-int/2addr v5, v15

    :goto_11
    add-int/lit8 v3, v3, 0x3

    move-wide v9, v13

    const/4 v4, 0x0

    const/4 v11, 0x0

    goto/16 :goto_5

    .line 475
    :cond_2b
    iget-object v2, v0, Lc/e/a/b/g/f/Wb;->q:Lc/e/a/b/g/f/zc;

    invoke-static {v2, v1}, Lc/e/a/b/g/f/Wb;->a(Lc/e/a/b/g/f/zc;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    .line 476
    iget-boolean v2, v0, Lc/e/a/b/g/f/Wb;->h:Z

    if-eqz v2, :cond_2c

    .line 477
    iget-object v2, v0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-virtual {v2, v1}, Lc/e/a/b/g/f/db;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/g/f/gb;->h()I

    move-result v1

    add-int/2addr v5, v1

    :cond_2c
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    .line 653
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->d:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 655
    iget-boolean v0, p0, Lc/e/a/b/g/f/Wb;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 656
    :cond_0
    invoke-virtual {p0, p2}, Lc/e/a/b/g/f/Wb;->e(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 657
    invoke-static {p1, v1, v2}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 658
    invoke-static {p1, v1, v2, p2}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final b(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 659
    invoke-virtual {p0, p3}, Lc/e/a/b/g/f/Wb;->e(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 660
    invoke-static {p1, v0, v1, p2}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Lc/e/a/b/g/f/Oc;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/e/a/b/g/f/Oc;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 478
    iget-boolean v3, v0, Lc/e/a/b/g/f/Wb;->h:Z

    if-eqz v3, :cond_0

    .line 479
    iget-object v3, v0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-virtual {v3, v1}, Lc/e/a/b/g/f/db;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object v3

    .line 480
    invoke-virtual {v3}, Lc/e/a/b/g/f/gb;->b()Z

    move-result v5

    if-nez v5, :cond_0

    .line 481
    invoke-virtual {v3}, Lc/e/a/b/g/f/gb;->e()Ljava/util/Iterator;

    move-result-object v3

    .line 482
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v5, -0x1

    .line 483
    iget-object v6, v0, Lc/e/a/b/g/f/Wb;->c:[I

    array-length v6, v6

    .line 484
    sget-object v7, Lc/e/a/b/g/f/Wb;->b:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_1
    if-ge v5, v6, :cond_5

    .line 485
    invoke-virtual {v0, v5}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result v11

    .line 486
    iget-object v12, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v13, v12, v5

    const/high16 v14, 0xff00000

    and-int/2addr v14, v11

    ushr-int/lit8 v14, v14, 0x14

    .line 487
    iget-boolean v15, v0, Lc/e/a/b/g/f/Wb;->j:Z

    const v16, 0xfffff

    const/4 v4, 0x1

    if-nez v15, :cond_2

    const/16 v15, 0x11

    if-gt v14, v15, :cond_2

    add-int/lit8 v15, v5, 0x2

    .line 488
    aget v12, v12, v15

    and-int v15, v12, v16

    if-eq v15, v9, :cond_1

    int-to-long v9, v15

    .line 489
    invoke-virtual {v7, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v10

    goto :goto_2

    :cond_1
    move v15, v9

    :goto_2
    ushr-int/lit8 v9, v12, 0x14

    shl-int v9, v4, v9

    goto :goto_3

    :cond_2
    move v15, v9

    const/4 v9, 0x0

    :goto_3
    if-nez v3, :cond_4

    and-int v11, v11, v16

    int-to-long v11, v11

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_4

    .line 490
    :pswitch_0
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 491
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    .line 492
    invoke-interface {v2, v13, v4, v9}, Lc/e/a/b/g/f/Oc;->a(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_4

    .line 493
    :pswitch_1
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 494
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lc/e/a/b/g/f/Oc;->b(IJ)V

    goto/16 :goto_4

    .line 495
    :pswitch_2
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 496
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->f(II)V

    goto/16 :goto_4

    .line 497
    :pswitch_3
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 498
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lc/e/a/b/g/f/Oc;->a(IJ)V

    goto/16 :goto_4

    .line 499
    :pswitch_4
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 500
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->e(II)V

    goto/16 :goto_4

    .line 501
    :pswitch_5
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 502
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->b(II)V

    goto/16 :goto_4

    .line 503
    :pswitch_6
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 504
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->d(II)V

    goto/16 :goto_4

    .line 505
    :pswitch_7
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 506
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->a(ILcom/google/android/gms/internal/measurement/zzdp;)V

    goto/16 :goto_4

    .line 507
    :pswitch_8
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 508
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 509
    invoke-virtual {v0, v5}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    invoke-interface {v2, v13, v4, v9}, Lc/e/a/b/g/f/Oc;->b(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_4

    .line 510
    :pswitch_9
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 511
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v4, v2}, Lc/e/a/b/g/f/Wb;->a(ILjava/lang/Object;Lc/e/a/b/g/f/Oc;)V

    goto/16 :goto_4

    .line 512
    :pswitch_a
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 513
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Wb;->f(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->a(IZ)V

    goto/16 :goto_4

    .line 514
    :pswitch_b
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 515
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->c(II)V

    goto/16 :goto_4

    .line 516
    :pswitch_c
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 517
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lc/e/a/b/g/f/Oc;->c(IJ)V

    goto/16 :goto_4

    .line 518
    :pswitch_d
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 519
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->a(II)V

    goto/16 :goto_4

    .line 520
    :pswitch_e
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 521
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lc/e/a/b/g/f/Oc;->e(IJ)V

    goto/16 :goto_4

    .line 522
    :pswitch_f
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 523
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lc/e/a/b/g/f/Oc;->d(IJ)V

    goto/16 :goto_4

    .line 524
    :pswitch_10
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 525
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->a(IF)V

    goto/16 :goto_4

    .line 526
    :pswitch_11
    invoke-virtual {v0, v1, v13, v5}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 527
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lc/e/a/b/g/f/Oc;->a(ID)V

    goto/16 :goto_4

    .line 528
    :pswitch_12
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v13, v4, v5}, Lc/e/a/b/g/f/Wb;->a(Lc/e/a/b/g/f/Oc;ILjava/lang/Object;I)V

    goto/16 :goto_4

    .line 529
    :pswitch_13
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 530
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 531
    invoke-virtual {v0, v5}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v11

    .line 532
    invoke-static {v4, v9, v2, v11}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Lc/e/a/b/g/f/Oc;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_4

    .line 533
    :pswitch_14
    iget-object v9, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v9, v9, v5

    .line 534
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 535
    invoke-static {v9, v11, v2, v4}, Lc/e/a/b/g/f/kc;->e(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 536
    :pswitch_15
    iget-object v9, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v9, v9, v5

    .line 537
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 538
    invoke-static {v9, v11, v2, v4}, Lc/e/a/b/g/f/kc;->j(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 539
    :pswitch_16
    iget-object v9, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v9, v9, v5

    .line 540
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 541
    invoke-static {v9, v11, v2, v4}, Lc/e/a/b/g/f/kc;->g(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 542
    :pswitch_17
    iget-object v9, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v9, v9, v5

    .line 543
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 544
    invoke-static {v9, v11, v2, v4}, Lc/e/a/b/g/f/kc;->l(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 545
    :pswitch_18
    iget-object v9, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v9, v9, v5

    .line 546
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 547
    invoke-static {v9, v11, v2, v4}, Lc/e/a/b/g/f/kc;->m(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 548
    :pswitch_19
    iget-object v9, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v9, v9, v5

    .line 549
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 550
    invoke-static {v9, v11, v2, v4}, Lc/e/a/b/g/f/kc;->i(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 551
    :pswitch_1a
    iget-object v9, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v9, v9, v5

    .line 552
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 553
    invoke-static {v9, v11, v2, v4}, Lc/e/a/b/g/f/kc;->n(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 554
    :pswitch_1b
    iget-object v9, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v9, v9, v5

    .line 555
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 556
    invoke-static {v9, v11, v2, v4}, Lc/e/a/b/g/f/kc;->k(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 557
    :pswitch_1c
    iget-object v9, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v9, v9, v5

    .line 558
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 559
    invoke-static {v9, v11, v2, v4}, Lc/e/a/b/g/f/kc;->f(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 560
    :pswitch_1d
    iget-object v9, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v9, v9, v5

    .line 561
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 562
    invoke-static {v9, v11, v2, v4}, Lc/e/a/b/g/f/kc;->h(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 563
    :pswitch_1e
    iget-object v9, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v9, v9, v5

    .line 564
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 565
    invoke-static {v9, v11, v2, v4}, Lc/e/a/b/g/f/kc;->d(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 566
    :pswitch_1f
    iget-object v9, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v9, v9, v5

    .line 567
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 568
    invoke-static {v9, v11, v2, v4}, Lc/e/a/b/g/f/kc;->c(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 569
    :pswitch_20
    iget-object v9, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v9, v9, v5

    .line 570
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 571
    invoke-static {v9, v11, v2, v4}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 572
    :pswitch_21
    iget-object v9, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v9, v9, v5

    .line 573
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 574
    invoke-static {v9, v11, v2, v4}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 575
    :pswitch_22
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 576
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 577
    invoke-static {v4, v9, v2, v8}, Lc/e/a/b/g/f/kc;->e(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 578
    :pswitch_23
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 579
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 580
    invoke-static {v4, v9, v2, v8}, Lc/e/a/b/g/f/kc;->j(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 581
    :pswitch_24
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 582
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 583
    invoke-static {v4, v9, v2, v8}, Lc/e/a/b/g/f/kc;->g(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 584
    :pswitch_25
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 585
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 586
    invoke-static {v4, v9, v2, v8}, Lc/e/a/b/g/f/kc;->l(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 587
    :pswitch_26
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 588
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 589
    invoke-static {v4, v9, v2, v8}, Lc/e/a/b/g/f/kc;->m(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 590
    :pswitch_27
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 591
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 592
    invoke-static {v4, v9, v2, v8}, Lc/e/a/b/g/f/kc;->i(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 593
    :pswitch_28
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 594
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 595
    invoke-static {v4, v9, v2}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Lc/e/a/b/g/f/Oc;)V

    goto/16 :goto_4

    .line 596
    :pswitch_29
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 597
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 598
    invoke-virtual {v0, v5}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v11

    .line 599
    invoke-static {v4, v9, v2, v11}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/Oc;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_4

    .line 600
    :pswitch_2a
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 601
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 602
    invoke-static {v4, v9, v2}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/Oc;)V

    goto/16 :goto_4

    .line 603
    :pswitch_2b
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 604
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 605
    invoke-static {v4, v9, v2, v8}, Lc/e/a/b/g/f/kc;->n(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 606
    :pswitch_2c
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 607
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 608
    invoke-static {v4, v9, v2, v8}, Lc/e/a/b/g/f/kc;->k(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 609
    :pswitch_2d
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 610
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 611
    invoke-static {v4, v9, v2, v8}, Lc/e/a/b/g/f/kc;->f(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 612
    :pswitch_2e
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 613
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 614
    invoke-static {v4, v9, v2, v8}, Lc/e/a/b/g/f/kc;->h(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 615
    :pswitch_2f
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 616
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 617
    invoke-static {v4, v9, v2, v8}, Lc/e/a/b/g/f/kc;->d(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 618
    :pswitch_30
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 619
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 620
    invoke-static {v4, v9, v2, v8}, Lc/e/a/b/g/f/kc;->c(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 621
    :pswitch_31
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 622
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 623
    invoke-static {v4, v9, v2, v8}, Lc/e/a/b/g/f/kc;->b(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    .line 624
    :pswitch_32
    iget-object v4, v0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v5

    .line 625
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 626
    invoke-static {v4, v9, v2, v8}, Lc/e/a/b/g/f/kc;->a(ILjava/util/List;Lc/e/a/b/g/f/Oc;Z)V

    goto/16 :goto_4

    :pswitch_33
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 627
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    .line 628
    invoke-interface {v2, v13, v4, v9}, Lc/e/a/b/g/f/Oc;->a(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_4

    :pswitch_34
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 629
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lc/e/a/b/g/f/Oc;->b(IJ)V

    goto/16 :goto_4

    :pswitch_35
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 630
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->f(II)V

    goto/16 :goto_4

    :pswitch_36
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 631
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lc/e/a/b/g/f/Oc;->a(IJ)V

    goto/16 :goto_4

    :pswitch_37
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 632
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->e(II)V

    goto/16 :goto_4

    :pswitch_38
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 633
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->b(II)V

    goto/16 :goto_4

    :pswitch_39
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 634
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->d(II)V

    goto/16 :goto_4

    :pswitch_3a
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 635
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->a(ILcom/google/android/gms/internal/measurement/zzdp;)V

    goto/16 :goto_4

    :pswitch_3b
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 636
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 637
    invoke-virtual {v0, v5}, Lc/e/a/b/g/f/Wb;->a(I)Lc/e/a/b/g/f/hc;

    move-result-object v9

    invoke-interface {v2, v13, v4, v9}, Lc/e/a/b/g/f/Oc;->b(ILjava/lang/Object;Lc/e/a/b/g/f/hc;)V

    goto/16 :goto_4

    :pswitch_3c
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 638
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v4, v2}, Lc/e/a/b/g/f/Wb;->a(ILjava/lang/Object;Lc/e/a/b/g/f/Oc;)V

    goto :goto_4

    :pswitch_3d
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 639
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Fc;->c(Ljava/lang/Object;J)Z

    move-result v4

    .line 640
    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->a(IZ)V

    goto :goto_4

    :pswitch_3e
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 641
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->c(II)V

    goto :goto_4

    :pswitch_3f
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 642
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lc/e/a/b/g/f/Oc;->c(IJ)V

    goto :goto_4

    :pswitch_40
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 643
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->a(II)V

    goto :goto_4

    :pswitch_41
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 644
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lc/e/a/b/g/f/Oc;->e(IJ)V

    goto :goto_4

    :pswitch_42
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 645
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {v2, v13, v11, v12}, Lc/e/a/b/g/f/Oc;->d(IJ)V

    goto :goto_4

    :pswitch_43
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 646
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Fc;->d(Ljava/lang/Object;J)F

    move-result v4

    .line 647
    invoke-interface {v2, v13, v4}, Lc/e/a/b/g/f/Oc;->a(IF)V

    goto :goto_4

    :pswitch_44
    and-int v4, v10, v9

    if-eqz v4, :cond_3

    .line 648
    invoke-static {v1, v11, v12}, Lc/e/a/b/g/f/Fc;->e(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 649
    invoke-interface {v2, v13, v11, v12}, Lc/e/a/b/g/f/Oc;->a(ID)V

    :cond_3
    :goto_4
    add-int/lit8 v5, v5, 0x3

    move v9, v15

    goto/16 :goto_1

    .line 650
    :cond_4
    iget-object v1, v0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-virtual {v1, v3}, Lc/e/a/b/g/f/db;->a(Ljava/util/Map$Entry;)I

    const/4 v4, 0x0

    throw v4

    :cond_5
    const/4 v4, 0x0

    if-nez v3, :cond_6

    .line 651
    iget-object v3, v0, Lc/e/a/b/g/f/Wb;->q:Lc/e/a/b/g/f/zc;

    invoke-static {v3, v1, v2}, Lc/e/a/b/g/f/Wb;->a(Lc/e/a/b/g/f/zc;Ljava/lang/Object;Lc/e/a/b/g/f/Oc;)V

    return-void

    .line 652
    :cond_6
    iget-object v1, v0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-virtual {v1, v2, v3}, Lc/e/a/b/g/f/db;->a(Lc/e/a/b/g/f/Oc;Ljava/util/Map$Entry;)V

    goto :goto_6

    :goto_5
    throw v4

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p3}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result v0

    .line 62
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 63
    invoke-virtual {p0, p2, v1, p3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {p1, v2, v3}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 65
    invoke-static {p2, v2, v3}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 66
    invoke-static {v0, p2}, Lc/e/a/b/g/f/qb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 67
    invoke-static {p1, v2, v3, p2}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 68
    invoke-virtual {p0, p1, v1, p3}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 69
    invoke-static {p1, v2, v3, p2}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 70
    invoke-virtual {p0, p1, v1, p3}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 2
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 3
    :pswitch_0
    invoke-virtual {p0, v2}, Lc/e/a/b/g/f/Wb;->e(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 4
    invoke-static {p1, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 5
    invoke-static {p2, v4, v5}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 6
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 7
    invoke-static {v4, v5}, Lc/e/a/b/g/f/kc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 8
    :pswitch_1
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-static {v3, v4}, Lc/e/a/b/g/f/kc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 10
    :pswitch_2
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Lc/e/a/b/g/f/kc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 12
    :pswitch_3
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 14
    invoke-static {v4, v5}, Lc/e/a/b/g/f/kc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 15
    :pswitch_4
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 16
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 17
    :pswitch_5
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 19
    :pswitch_6
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 21
    :pswitch_7
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 23
    :pswitch_8
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 25
    :pswitch_9
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 27
    :pswitch_a
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 29
    invoke-static {v4, v5}, Lc/e/a/b/g/f/kc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 30
    :pswitch_b
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 32
    invoke-static {v4, v5}, Lc/e/a/b/g/f/kc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 33
    :pswitch_c
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 35
    invoke-static {v4, v5}, Lc/e/a/b/g/f/kc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 36
    :pswitch_d
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->c(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->c(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 38
    :pswitch_e
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 40
    :pswitch_f
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 42
    :pswitch_10
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 44
    :pswitch_11
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 46
    :pswitch_12
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 48
    :pswitch_13
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->d(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 50
    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->d(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 51
    :pswitch_14
    invoke-virtual {p0, p1, p2, v2}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    invoke-static {p1, v6, v7}, Lc/e/a/b/g/f/Fc;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 53
    invoke-static {p2, v6, v7}, Lc/e/a/b/g/f/Fc;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    const/4 v3, 0x0

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->q:Lc/e/a/b/g/f/zc;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/zc;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    iget-object v2, p0, Lc/e/a/b/g/f/Wb;->q:Lc/e/a/b/g/f/zc;

    invoke-virtual {v2, p2}, Lc/e/a/b/g/f/zc;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 57
    :cond_4
    iget-boolean v0, p0, Lc/e/a/b/g/f/Wb;->h:Z

    if-eqz v0, :cond_5

    .line 58
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/db;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-virtual {v0, p2}, Lc/e/a/b/g/f/db;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lc/e/a/b/g/f/gb;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(I)Lc/e/a/b/g/f/tb;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->d:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lc/e/a/b/g/f/tb;

    return-object p1
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    iget v0, p0, Lc/e/a/b/g/f/Wb;->m:I

    :goto_0
    iget v1, p0, Lc/e/a/b/g/f/Wb;->n:I

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lc/e/a/b/g/f/Wb;->l:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 4
    invoke-static {p1, v1, v2}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v4, p0, Lc/e/a/b/g/f/Wb;->s:Lc/e/a/b/g/f/Nb;

    invoke-interface {v4, v3}, Lc/e/a/b/g/f/Nb;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->l:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 7
    iget-object v2, p0, Lc/e/a/b/g/f/Wb;->p:Lc/e/a/b/g/f/Db;

    iget-object v3, p0, Lc/e/a/b/g/f/Wb;->l:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lc/e/a/b/g/f/Db;->b(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->q:Lc/e/a/b/g/f/zc;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/zc;->a(Ljava/lang/Object;)V

    .line 9
    iget-boolean v0, p0, Lc/e/a/b/g/f/Wb;->h:Z

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/db;->c(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(I)I
    .locals 1

    .line 68
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->c:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/Wb;->d(I)I

    move-result v3

    .line 3
    iget-object v4, p0, Lc/e/a/b/g/f/Wb;->c:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 4
    :pswitch_0
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lc/e/a/b/g/f/qb;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 9
    :pswitch_2
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 11
    :pswitch_3
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lc/e/a/b/g/f/qb;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 13
    :pswitch_4
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 14
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 15
    :pswitch_5
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 17
    :pswitch_6
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 19
    :pswitch_7
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 21
    :pswitch_8
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 24
    :pswitch_9
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 25
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 26
    :pswitch_a
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Wb;->f(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lc/e/a/b/g/f/qb;->a(Z)I

    move-result v3

    goto/16 :goto_2

    .line 28
    :pswitch_b
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 29
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 30
    :pswitch_c
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 31
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lc/e/a/b/g/f/qb;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 32
    :pswitch_d
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 33
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Wb;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 34
    :pswitch_e
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 35
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lc/e/a/b/g/f/qb;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 36
    :pswitch_f
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 37
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Wb;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lc/e/a/b/g/f/qb;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 38
    :pswitch_10
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 39
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Wb;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 40
    :pswitch_11
    invoke-virtual {p0, p1, v4, v1}, Lc/e/a/b/g/f/Wb;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Wb;->b(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lc/e/a/b/g/f/qb;->a(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 44
    :pswitch_14
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 46
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lc/e/a/b/g/f/qb;->a(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 47
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lc/e/a/b/g/f/qb;->a(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 53
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 55
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 56
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->c(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lc/e/a/b/g/f/qb;->a(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lc/e/a/b/g/f/qb;->a(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lc/e/a/b/g/f/qb;->a(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lc/e/a/b/g/f/qb;->a(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lc/e/a/b/g/f/Fc;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 64
    invoke-static {v3, v4}, Lc/e/a/b/g/f/qb;->a(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    .line 65
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->q:Lc/e/a/b/g/f/zc;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/zc;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 66
    iget-boolean v0, p0, Lc/e/a/b/g/f/Wb;->h:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    .line 67
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->r:Lc/e/a/b/g/f/db;

    invoke-virtual {v0, p1}, Lc/e/a/b/g/f/db;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/gb;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/g/f/gb;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(I)I
    .locals 1

    .line 5
    iget-object v0, p0, Lc/e/a/b/g/f/Wb;->c:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public final g(I)I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/g/f/Wb;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lc/e/a/b/g/f/Wb;->f:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/f/Wb;->b(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
