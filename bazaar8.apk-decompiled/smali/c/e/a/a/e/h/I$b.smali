.class public Lc/e/a/a/e/h/I$b;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lc/e/a/a/e/h/C;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/h/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/o/u;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/e/a/a/e/h/J;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/util/SparseIntArray;

.field public final d:I

.field public final synthetic e:Lc/e/a/a/e/h/I;


# direct methods
.method public constructor <init>(Lc/e/a/a/e/h/I;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lc/e/a/a/o/u;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lc/e/a/a/o/u;-><init>([B)V

    iput-object p1, p0, Lc/e/a/a/e/h/I$b;->a:Lc/e/a/a/o/u;

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/h/I$b;->b:Landroid/util/SparseArray;

    .line 4
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/h/I$b;->c:Landroid/util/SparseIntArray;

    .line 5
    iput p2, p0, Lc/e/a/a/e/h/I$b;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lc/e/a/a/o/v;I)Lc/e/a/a/e/h/J$b;
    .locals 13

    .line 59
    invoke-virtual {p1}, Lc/e/a/a/o/v;->c()I

    move-result v0

    add-int/2addr p2, v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v3, v1

    .line 60
    :goto_0
    invoke-virtual {p1}, Lc/e/a/a/o/v;->c()I

    move-result v4

    if-ge v4, p2, :cond_b

    .line 61
    invoke-virtual {p1}, Lc/e/a/a/o/v;->u()I

    move-result v4

    .line 62
    invoke-virtual {p1}, Lc/e/a/a/o/v;->u()I

    move-result v5

    .line 63
    invoke-virtual {p1}, Lc/e/a/a/o/v;->c()I

    move-result v6

    add-int/2addr v6, v5

    const/4 v5, 0x5

    const/16 v7, 0x59

    const/16 v8, 0xac

    const/16 v9, 0x87

    const/16 v10, 0x81

    if-ne v4, v5, :cond_3

    .line 64
    invoke-virtual {p1}, Lc/e/a/a/o/v;->w()J

    move-result-wide v4

    .line 65
    invoke-static {}, Lc/e/a/a/e/h/I;->b()J

    move-result-wide v11

    cmp-long v7, v4, v11

    if-nez v7, :cond_0

    goto :goto_2

    .line 66
    :cond_0
    invoke-static {}, Lc/e/a/a/e/h/I;->c()J

    move-result-wide v10

    cmp-long v7, v4, v10

    if-nez v7, :cond_1

    goto :goto_3

    .line 67
    :cond_1
    invoke-static {}, Lc/e/a/a/e/h/I;->d()J

    move-result-wide v9

    cmp-long v7, v4, v9

    if-nez v7, :cond_2

    :goto_1
    const/16 v2, 0xac

    goto/16 :goto_5

    .line 68
    :cond_2
    invoke-static {}, Lc/e/a/a/e/h/I;->e()J

    move-result-wide v7

    cmp-long v9, v4, v7

    if-nez v9, :cond_a

    const/16 v2, 0x24

    goto :goto_5

    :cond_3
    const/16 v5, 0x6a

    if-ne v4, v5, :cond_4

    :goto_2
    const/16 v2, 0x81

    goto :goto_5

    :cond_4
    const/16 v5, 0x7a

    if-ne v4, v5, :cond_5

    :goto_3
    const/16 v2, 0x87

    goto :goto_5

    :cond_5
    const/16 v5, 0x7f

    if-ne v4, v5, :cond_6

    .line 69
    invoke-virtual {p1}, Lc/e/a/a/o/v;->u()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_a

    goto :goto_1

    :cond_6
    const/16 v5, 0x7b

    if-ne v4, v5, :cond_7

    const/16 v2, 0x8a

    goto :goto_5

    :cond_7
    const/16 v5, 0xa

    const/4 v8, 0x3

    if-ne v4, v5, :cond_8

    .line 70
    invoke-virtual {p1, v8}, Lc/e/a/a/o/v;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_8
    if-ne v4, v7, :cond_a

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    :goto_4
    invoke-virtual {p1}, Lc/e/a/a/o/v;->c()I

    move-result v3

    if-ge v3, v6, :cond_9

    .line 73
    invoke-virtual {p1, v8}, Lc/e/a/a/o/v;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {p1}, Lc/e/a/a/o/v;->u()I

    move-result v4

    const/4 v5, 0x4

    .line 75
    new-array v9, v5, [B

    const/4 v10, 0x0

    .line 76
    invoke-virtual {p1, v9, v10, v5}, Lc/e/a/a/o/v;->a([BII)V

    .line 77
    new-instance v5, Lc/e/a/a/e/h/J$a;

    invoke-direct {v5, v3, v4, v9}, Lc/e/a/a/e/h/J$a;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    move-object v3, v2

    const/16 v2, 0x59

    .line 78
    :cond_a
    :goto_5
    invoke-virtual {p1}, Lc/e/a/a/o/v;->c()I

    move-result v4

    sub-int/2addr v6, v4

    invoke-virtual {p1, v6}, Lc/e/a/a/o/v;->f(I)V

    goto/16 :goto_0

    .line 79
    :cond_b
    invoke-virtual {p1, p2}, Lc/e/a/a/o/v;->e(I)V

    .line 80
    new-instance v4, Lc/e/a/a/e/h/J$b;

    iget-object p1, p1, Lc/e/a/a/o/v;->a:[B

    .line 81
    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v4, v2, v1, v3, p1}, Lc/e/a/a/e/h/J$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    return-object v4
.end method

.method public a(Lc/e/a/a/o/F;Lc/e/a/a/e/i;Lc/e/a/a/e/h/J$d;)V
    .locals 0

    return-void
.end method

.method public a(Lc/e/a/a/o/v;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/o/v;->u()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v2}, Lc/e/a/a/e/h/I;->e(Lc/e/a/a/e/h/I;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    iget-object v2, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v2}, Lc/e/a/a/e/h/I;->e(Lc/e/a/a/e/h/I;)I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v2}, Lc/e/a/a/e/h/I;->b(Lc/e/a/a/e/h/I;)I

    move-result v2

    if-ne v2, v5, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v2, Lc/e/a/a/o/F;

    iget-object v6, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    .line 4
    invoke-static {v6}, Lc/e/a/a/e/h/I;->f(Lc/e/a/a/e/h/I;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/e/a/a/o/F;

    invoke-virtual {v6}, Lc/e/a/a/o/F;->a()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lc/e/a/a/o/F;-><init>(J)V

    .line 5
    iget-object v6, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v6}, Lc/e/a/a/e/h/I;->f(Lc/e/a/a/e/h/I;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object v2, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v2}, Lc/e/a/a/e/h/I;->f(Lc/e/a/a/e/h/I;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/o/F;

    .line 7
    :goto_1
    invoke-virtual {v1, v3}, Lc/e/a/a/o/v;->f(I)V

    .line 8
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/o/v;->A()I

    move-result v6

    const/4 v7, 0x3

    .line 9
    invoke-virtual {v1, v7}, Lc/e/a/a/o/v;->f(I)V

    .line 10
    iget-object v8, v0, Lc/e/a/a/e/h/I$b;->a:Lc/e/a/a/o/u;

    invoke-virtual {v1, v8, v3}, Lc/e/a/a/o/v;->a(Lc/e/a/a/o/u;I)V

    .line 11
    iget-object v8, v0, Lc/e/a/a/e/h/I$b;->a:Lc/e/a/a/o/u;

    invoke-virtual {v8, v7}, Lc/e/a/a/o/u;->c(I)V

    .line 12
    iget-object v8, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    iget-object v9, v0, Lc/e/a/a/e/h/I$b;->a:Lc/e/a/a/o/u;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lc/e/a/a/o/u;->a(I)I

    move-result v9

    invoke-static {v8, v9}, Lc/e/a/a/e/h/I;->b(Lc/e/a/a/e/h/I;I)I

    .line 13
    iget-object v8, v0, Lc/e/a/a/e/h/I$b;->a:Lc/e/a/a/o/u;

    invoke-virtual {v1, v8, v3}, Lc/e/a/a/o/v;->a(Lc/e/a/a/o/u;I)V

    .line 14
    iget-object v8, v0, Lc/e/a/a/e/h/I$b;->a:Lc/e/a/a/o/u;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lc/e/a/a/o/u;->c(I)V

    .line 15
    iget-object v8, v0, Lc/e/a/a/e/h/I$b;->a:Lc/e/a/a/o/u;

    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Lc/e/a/a/o/u;->a(I)I

    move-result v8

    .line 16
    invoke-virtual {v1, v8}, Lc/e/a/a/o/v;->f(I)V

    .line 17
    iget-object v8, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v8}, Lc/e/a/a/e/h/I;->e(Lc/e/a/a/e/h/I;)I

    move-result v8

    const/16 v12, 0x2000

    const/16 v13, 0x15

    if-ne v8, v3, :cond_3

    iget-object v8, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v8}, Lc/e/a/a/e/h/I;->g(Lc/e/a/a/e/h/I;)Lc/e/a/a/e/h/J;

    move-result-object v8

    if-nez v8, :cond_3

    .line 18
    new-instance v8, Lc/e/a/a/e/h/J$b;

    sget-object v14, Lc/e/a/a/o/I;->f:[B

    const/4 v15, 0x0

    invoke-direct {v8, v13, v15, v15, v14}, Lc/e/a/a/e/h/J$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 19
    iget-object v14, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v14}, Lc/e/a/a/e/h/I;->h(Lc/e/a/a/e/h/I;)Lc/e/a/a/e/h/J$c;

    move-result-object v15

    invoke-interface {v15, v13, v8}, Lc/e/a/a/e/h/J$c;->a(ILc/e/a/a/e/h/J$b;)Lc/e/a/a/e/h/J;

    move-result-object v8

    invoke-static {v14, v8}, Lc/e/a/a/e/h/I;->a(Lc/e/a/a/e/h/I;Lc/e/a/a/e/h/J;)Lc/e/a/a/e/h/J;

    .line 20
    iget-object v8, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v8}, Lc/e/a/a/e/h/I;->g(Lc/e/a/a/e/h/I;)Lc/e/a/a/e/h/J;

    move-result-object v8

    iget-object v14, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v14}, Lc/e/a/a/e/h/I;->i(Lc/e/a/a/e/h/I;)Lc/e/a/a/e/i;

    move-result-object v14

    new-instance v15, Lc/e/a/a/e/h/J$d;

    invoke-direct {v15, v6, v13, v12}, Lc/e/a/a/e/h/J$d;-><init>(III)V

    invoke-interface {v8, v2, v14, v15}, Lc/e/a/a/e/h/J;->a(Lc/e/a/a/o/F;Lc/e/a/a/e/i;Lc/e/a/a/e/h/J$d;)V

    .line 21
    :cond_3
    iget-object v8, v0, Lc/e/a/a/e/h/I$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 22
    iget-object v8, v0, Lc/e/a/a/e/h/I$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 23
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/o/v;->a()I

    move-result v8

    :goto_2
    if-lez v8, :cond_a

    .line 24
    iget-object v14, v0, Lc/e/a/a/e/h/I$b;->a:Lc/e/a/a/o/u;

    const/4 v15, 0x5

    invoke-virtual {v1, v14, v15}, Lc/e/a/a/o/v;->a(Lc/e/a/a/o/u;I)V

    .line 25
    iget-object v14, v0, Lc/e/a/a/e/h/I$b;->a:Lc/e/a/a/o/u;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lc/e/a/a/o/u;->a(I)I

    move-result v14

    .line 26
    iget-object v15, v0, Lc/e/a/a/e/h/I$b;->a:Lc/e/a/a/o/u;

    invoke-virtual {v15, v7}, Lc/e/a/a/o/u;->c(I)V

    .line 27
    iget-object v15, v0, Lc/e/a/a/e/h/I$b;->a:Lc/e/a/a/o/u;

    invoke-virtual {v15, v10}, Lc/e/a/a/o/u;->a(I)I

    move-result v15

    .line 28
    iget-object v7, v0, Lc/e/a/a/e/h/I$b;->a:Lc/e/a/a/o/u;

    invoke-virtual {v7, v9}, Lc/e/a/a/o/u;->c(I)V

    .line 29
    iget-object v7, v0, Lc/e/a/a/e/h/I$b;->a:Lc/e/a/a/o/u;

    invoke-virtual {v7, v11}, Lc/e/a/a/o/u;->a(I)I

    move-result v7

    .line 30
    invoke-virtual {v0, v1, v7}, Lc/e/a/a/e/h/I$b;->a(Lc/e/a/a/o/v;I)Lc/e/a/a/e/h/J$b;

    move-result-object v9

    const/4 v10, 0x6

    if-ne v14, v10, :cond_4

    .line 31
    iget v14, v9, Lc/e/a/a/e/h/J$b;->a:I

    :cond_4
    add-int/lit8 v7, v7, 0x5

    sub-int/2addr v8, v7

    .line 32
    iget-object v7, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v7}, Lc/e/a/a/e/h/I;->e(Lc/e/a/a/e/h/I;)I

    move-result v7

    if-ne v7, v3, :cond_5

    move v7, v14

    goto :goto_3

    :cond_5
    move v7, v15

    .line 33
    :goto_3
    iget-object v10, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v10}, Lc/e/a/a/e/h/I;->j(Lc/e/a/a/e/h/I;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_5

    .line 34
    :cond_6
    iget-object v10, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v10}, Lc/e/a/a/e/h/I;->e(Lc/e/a/a/e/h/I;)I

    move-result v10

    if-ne v10, v3, :cond_7

    if-ne v14, v13, :cond_7

    iget-object v9, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v9}, Lc/e/a/a/e/h/I;->g(Lc/e/a/a/e/h/I;)Lc/e/a/a/e/h/J;

    move-result-object v9

    goto :goto_4

    :cond_7
    iget-object v10, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    .line 35
    invoke-static {v10}, Lc/e/a/a/e/h/I;->h(Lc/e/a/a/e/h/I;)Lc/e/a/a/e/h/J$c;

    move-result-object v10

    invoke-interface {v10, v14, v9}, Lc/e/a/a/e/h/J$c;->a(ILc/e/a/a/e/h/J$b;)Lc/e/a/a/e/h/J;

    move-result-object v9

    .line 36
    :goto_4
    iget-object v10, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v10}, Lc/e/a/a/e/h/I;->e(Lc/e/a/a/e/h/I;)I

    move-result v10

    if-ne v10, v3, :cond_8

    iget-object v10, v0, Lc/e/a/a/e/h/I$b;->c:Landroid/util/SparseIntArray;

    .line 37
    invoke-virtual {v10, v7, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    if-ge v15, v10, :cond_9

    .line 38
    :cond_8
    iget-object v10, v0, Lc/e/a/a/e/h/I$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v7, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    iget-object v10, v0, Lc/e/a/a/e/h/I$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v10, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    :goto_5
    const/4 v7, 0x3

    const/4 v9, 0x4

    const/16 v10, 0xd

    goto/16 :goto_2

    .line 40
    :cond_a
    iget-object v1, v0, Lc/e/a/a/e/h/I$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v1, :cond_d

    .line 41
    iget-object v8, v0, Lc/e/a/a/e/h/I$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 42
    iget-object v9, v0, Lc/e/a/a/e/h/I$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 43
    iget-object v10, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v10}, Lc/e/a/a/e/h/I;->j(Lc/e/a/a/e/h/I;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v8, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 44
    iget-object v10, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v10}, Lc/e/a/a/e/h/I;->k(Lc/e/a/a/e/h/I;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v9, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 45
    iget-object v10, v0, Lc/e/a/a/e/h/I$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/e/a/a/e/h/J;

    if-eqz v10, :cond_c

    .line 46
    iget-object v11, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v11}, Lc/e/a/a/e/h/I;->g(Lc/e/a/a/e/h/I;)Lc/e/a/a/e/h/J;

    move-result-object v11

    if-eq v10, v11, :cond_b

    .line 47
    iget-object v11, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v11}, Lc/e/a/a/e/h/I;->i(Lc/e/a/a/e/h/I;)Lc/e/a/a/e/i;

    move-result-object v11

    new-instance v13, Lc/e/a/a/e/h/J$d;

    invoke-direct {v13, v6, v8, v12}, Lc/e/a/a/e/h/J$d;-><init>(III)V

    invoke-interface {v10, v2, v11, v13}, Lc/e/a/a/e/h/J;->a(Lc/e/a/a/o/F;Lc/e/a/a/e/i;Lc/e/a/a/e/h/J$d;)V

    .line 48
    :cond_b
    iget-object v8, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v8}, Lc/e/a/a/e/h/I;->a(Lc/e/a/a/e/h/I;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 49
    :cond_d
    iget-object v1, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v1}, Lc/e/a/a/e/h/I;->e(Lc/e/a/a/e/h/I;)I

    move-result v1

    if-ne v1, v3, :cond_e

    .line 50
    iget-object v1, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v1}, Lc/e/a/a/e/h/I;->c(Lc/e/a/a/e/h/I;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 51
    iget-object v1, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v1}, Lc/e/a/a/e/h/I;->i(Lc/e/a/a/e/h/I;)Lc/e/a/a/e/i;

    move-result-object v1

    invoke-interface {v1}, Lc/e/a/a/e/i;->a()V

    .line 52
    iget-object v1, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v1, v4}, Lc/e/a/a/e/h/I;->a(Lc/e/a/a/e/h/I;I)I

    .line 53
    iget-object v1, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v1, v5}, Lc/e/a/a/e/h/I;->a(Lc/e/a/a/e/h/I;Z)Z

    goto :goto_8

    .line 54
    :cond_e
    iget-object v1, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v1}, Lc/e/a/a/e/h/I;->a(Lc/e/a/a/e/h/I;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, v0, Lc/e/a/a/e/h/I$b;->d:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 55
    iget-object v1, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v1}, Lc/e/a/a/e/h/I;->e(Lc/e/a/a/e/h/I;)I

    move-result v2

    if-ne v2, v5, :cond_f

    goto :goto_7

    :cond_f
    iget-object v2, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v2}, Lc/e/a/a/e/h/I;->b(Lc/e/a/a/e/h/I;)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :goto_7
    invoke-static {v1, v4}, Lc/e/a/a/e/h/I;->a(Lc/e/a/a/e/h/I;I)I

    .line 56
    iget-object v1, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v1}, Lc/e/a/a/e/h/I;->b(Lc/e/a/a/e/h/I;)I

    move-result v1

    if-nez v1, :cond_10

    .line 57
    iget-object v1, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v1}, Lc/e/a/a/e/h/I;->i(Lc/e/a/a/e/h/I;)Lc/e/a/a/e/i;

    move-result-object v1

    invoke-interface {v1}, Lc/e/a/a/e/i;->a()V

    .line 58
    iget-object v1, v0, Lc/e/a/a/e/h/I$b;->e:Lc/e/a/a/e/h/I;

    invoke-static {v1, v5}, Lc/e/a/a/e/h/I;->a(Lc/e/a/a/e/h/I;Z)Z

    :cond_10
    :goto_8
    return-void
.end method
