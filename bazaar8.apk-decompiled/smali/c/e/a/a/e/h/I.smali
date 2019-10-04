.class public final Lc/e/a/a/e/h/I;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lc/e/a/a/e/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/e/h/I$b;,
        Lc/e/a/a/e/h/I$a;
    }
.end annotation


# static fields
.field public static final a:Lc/e/a/a/e/j;

.field public static final b:J

.field public static final c:J

.field public static final d:J

.field public static final e:J


# instance fields
.field public final f:I

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/e/a/a/o/F;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lc/e/a/a/o/v;

.field public final i:Landroid/util/SparseIntArray;

.field public final j:Lc/e/a/a/e/h/J$c;

.field public final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/e/a/a/e/h/J;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Landroid/util/SparseBooleanArray;

.field public final m:Landroid/util/SparseBooleanArray;

.field public final n:Lc/e/a/a/e/h/H;

.field public o:Lc/e/a/a/e/h/G;

.field public p:Lc/e/a/a/e/i;

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Lc/e/a/a/e/h/J;

.field public v:I

.field public w:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lc/e/a/a/e/h/e;->a:Lc/e/a/a/e/h/e;

    sput-object v0, Lc/e/a/a/e/h/I;->a:Lc/e/a/a/e/j;

    const-string v0, "AC-3"

    .line 2
    invoke-static {v0}, Lc/e/a/a/o/I;->b(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lc/e/a/a/e/h/I;->b:J

    const-string v0, "EAC3"

    .line 3
    invoke-static {v0}, Lc/e/a/a/o/I;->b(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lc/e/a/a/e/h/I;->c:J

    const-string v0, "AC-4"

    .line 4
    invoke-static {v0}, Lc/e/a/a/o/I;->b(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lc/e/a/a/e/h/I;->d:J

    const-string v0, "HEVC"

    .line 5
    invoke-static {v0}, Lc/e/a/a/o/I;->b(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lc/e/a/a/e/h/I;->e:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/a/e/h/I;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lc/e/a/a/e/h/I;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 3
    new-instance v0, Lc/e/a/a/o/F;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lc/e/a/a/o/F;-><init>(J)V

    new-instance v1, Lc/e/a/a/e/h/l;

    invoke-direct {v1, p2}, Lc/e/a/a/e/h/l;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lc/e/a/a/e/h/I;-><init>(ILc/e/a/a/o/F;Lc/e/a/a/e/h/J$c;)V

    return-void
.end method

.method public constructor <init>(ILc/e/a/a/o/F;Lc/e/a/a/e/h/J$c;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p3}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lc/e/a/a/e/h/J$c;

    iput-object p3, p0, Lc/e/a/a/e/h/I;->j:Lc/e/a/a/e/h/J$c;

    .line 6
    iput p1, p0, Lc/e/a/a/e/h/I;->f:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/h/I;->g:Ljava/util/List;

    .line 8
    iget-object p1, p0, Lc/e/a/a/e/h/I;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/e/h/I;->g:Ljava/util/List;

    .line 10
    :goto_1
    new-instance p1, Lc/e/a/a/o/v;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lc/e/a/a/o/v;-><init>([BI)V

    iput-object p1, p0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    .line 11
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/h/I;->l:Landroid/util/SparseBooleanArray;

    .line 12
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/h/I;->m:Landroid/util/SparseBooleanArray;

    .line 13
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/h/I;->k:Landroid/util/SparseArray;

    .line 14
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/h/I;->i:Landroid/util/SparseIntArray;

    .line 15
    new-instance p1, Lc/e/a/a/e/h/H;

    invoke-direct {p1}, Lc/e/a/a/e/h/H;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/h/I;->n:Lc/e/a/a/e/h/H;

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lc/e/a/a/e/h/I;->w:I

    .line 17
    invoke-virtual {p0}, Lc/e/a/a/e/h/I;->h()V

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/e/h/I;I)I
    .locals 0

    .line 3
    iput p1, p0, Lc/e/a/a/e/h/I;->q:I

    return p1
.end method

.method public static synthetic a(Lc/e/a/a/e/h/I;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/e/h/I;->k:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic a(Lc/e/a/a/e/h/I;Lc/e/a/a/e/h/J;)Lc/e/a/a/e/h/J;
    .locals 0

    .line 4
    iput-object p1, p0, Lc/e/a/a/e/h/I;->u:Lc/e/a/a/e/h/J;

    return-object p1
.end method

.method public static synthetic a(Lc/e/a/a/e/h/I;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lc/e/a/a/e/h/I;->r:Z

    return p1
.end method

.method public static synthetic b(Lc/e/a/a/e/h/I;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/e/a/a/e/h/I;->q:I

    return p0
.end method

.method public static synthetic b(Lc/e/a/a/e/h/I;I)I
    .locals 0

    .line 3
    iput p1, p0, Lc/e/a/a/e/h/I;->w:I

    return p1
.end method

.method public static synthetic b()J
    .locals 2

    .line 2
    sget-wide v0, Lc/e/a/a/e/h/I;->b:J

    return-wide v0
.end method

.method public static synthetic c()J
    .locals 2

    .line 2
    sget-wide v0, Lc/e/a/a/e/h/I;->c:J

    return-wide v0
.end method

.method public static synthetic c(Lc/e/a/a/e/h/I;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/e/a/a/e/h/I;->r:Z

    return p0
.end method

.method public static synthetic d(Lc/e/a/a/e/h/I;)I
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/e/h/I;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc/e/a/a/e/h/I;->q:I

    return v0
.end method

.method public static synthetic d()J
    .locals 2

    .line 2
    sget-wide v0, Lc/e/a/a/e/h/I;->d:J

    return-wide v0
.end method

.method public static synthetic e(Lc/e/a/a/e/h/I;)I
    .locals 0

    .line 2
    iget p0, p0, Lc/e/a/a/e/h/I;->f:I

    return p0
.end method

.method public static synthetic e()J
    .locals 2

    .line 1
    sget-wide v0, Lc/e/a/a/e/h/I;->e:J

    return-wide v0
.end method

.method public static synthetic f(Lc/e/a/a/e/h/I;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/e/h/I;->g:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic g(Lc/e/a/a/e/h/I;)Lc/e/a/a/e/h/J;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/e/h/I;->u:Lc/e/a/a/e/h/J;

    return-object p0
.end method

.method public static synthetic g()[Lc/e/a/a/e/g;
    .locals 3

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lc/e/a/a/e/g;

    new-instance v1, Lc/e/a/a/e/h/I;

    invoke-direct {v1}, Lc/e/a/a/e/h/I;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static synthetic h(Lc/e/a/a/e/h/I;)Lc/e/a/a/e/h/J$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/e/h/I;->j:Lc/e/a/a/e/h/J$c;

    return-object p0
.end method

.method public static synthetic i(Lc/e/a/a/e/h/I;)Lc/e/a/a/e/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/e/h/I;->p:Lc/e/a/a/e/i;

    return-object p0
.end method

.method public static synthetic j(Lc/e/a/a/e/h/I;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/e/h/I;->l:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic k(Lc/e/a/a/e/h/I;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/e/h/I;->m:Landroid/util/SparseBooleanArray;

    return-object p0
.end method


# virtual methods
.method public a(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 25
    invoke-interface/range {p1 .. p1}, Lc/e/a/a/e/h;->getLength()J

    move-result-wide v3

    .line 26
    iget-boolean v5, v0, Lc/e/a/a/e/h/I;->r:Z

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v5, :cond_3

    cmp-long v5, v3, v7

    if-eqz v5, :cond_0

    .line 27
    iget v5, v0, Lc/e/a/a/e/h/I;->f:I

    if-eq v5, v9, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 28
    iget-object v5, v0, Lc/e/a/a/e/h/I;->n:Lc/e/a/a/e/h/H;

    invoke-virtual {v5}, Lc/e/a/a/e/h/H;->c()Z

    move-result v5

    if-nez v5, :cond_1

    .line 29
    iget-object v3, v0, Lc/e/a/a/e/h/I;->n:Lc/e/a/a/e/h/H;

    iget v4, v0, Lc/e/a/a/e/h/I;->w:I

    invoke-virtual {v3, v1, v2, v4}, Lc/e/a/a/e/h/H;->a(Lc/e/a/a/e/h;Lc/e/a/a/e/n;I)I

    move-result v1

    return v1

    .line 30
    :cond_1
    invoke-virtual {v0, v3, v4}, Lc/e/a/a/e/h/I;->a(J)V

    .line 31
    iget-boolean v5, v0, Lc/e/a/a/e/h/I;->t:Z

    if-eqz v5, :cond_2

    .line 32
    iput-boolean v11, v0, Lc/e/a/a/e/h/I;->t:Z

    const-wide/16 v12, 0x0

    .line 33
    invoke-virtual {v0, v12, v13, v12, v13}, Lc/e/a/a/e/h/I;->a(JJ)V

    .line 34
    invoke-interface/range {p1 .. p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v14

    cmp-long v5, v14, v12

    if-eqz v5, :cond_2

    .line 35
    iput-wide v12, v2, Lc/e/a/a/e/n;->a:J

    return v10

    .line 36
    :cond_2
    iget-object v5, v0, Lc/e/a/a/e/h/I;->o:Lc/e/a/a/e/h/G;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lc/e/a/a/e/a;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 37
    iget-object v3, v0, Lc/e/a/a/e/h/I;->o:Lc/e/a/a/e/h/G;

    invoke-virtual {v3, v1, v2, v6}, Lc/e/a/a/e/a;->a(Lc/e/a/a/e/h;Lc/e/a/a/e/n;Lc/e/a/a/e/a$c;)I

    move-result v1

    return v1

    .line 38
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/e/h/I;->b(Lc/e/a/a/e/h;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, -0x1

    return v1

    .line 39
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/e/h/I;->f()I

    move-result v1

    .line 40
    iget-object v2, v0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v2}, Lc/e/a/a/o/v;->d()I

    move-result v2

    if-le v1, v2, :cond_5

    return v11

    .line 41
    :cond_5
    iget-object v5, v0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v5}, Lc/e/a/a/o/v;->i()I

    move-result v5

    const/high16 v12, 0x800000

    and-int/2addr v12, v5

    if-eqz v12, :cond_6

    .line 42
    iget-object v2, v0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v2, v1}, Lc/e/a/a/o/v;->e(I)V

    return v11

    :cond_6
    const/high16 v12, 0x400000

    and-int/2addr v12, v5

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    goto :goto_1

    :cond_7
    const/4 v12, 0x0

    :goto_1
    or-int/2addr v12, v11

    const v13, 0x1fff00

    and-int/2addr v13, v5

    shr-int/lit8 v13, v13, 0x8

    and-int/lit8 v14, v5, 0x20

    if-eqz v14, :cond_8

    const/4 v14, 0x1

    goto :goto_2

    :cond_8
    const/4 v14, 0x0

    :goto_2
    and-int/lit8 v15, v5, 0x10

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    goto :goto_3

    :cond_9
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_a

    .line 43
    iget-object v6, v0, Lc/e/a/a/e/h/I;->k:Landroid/util/SparseArray;

    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/e/a/a/e/h/J;

    :cond_a
    if-nez v6, :cond_b

    .line 44
    iget-object v2, v0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v2, v1}, Lc/e/a/a/o/v;->e(I)V

    return v11

    .line 45
    :cond_b
    iget v15, v0, Lc/e/a/a/e/h/I;->f:I

    if-eq v15, v9, :cond_d

    and-int/lit8 v5, v5, 0xf

    .line 46
    iget-object v15, v0, Lc/e/a/a/e/h/I;->i:Landroid/util/SparseIntArray;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v15, v13, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 47
    iget-object v8, v0, Lc/e/a/a/e/h/I;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v13, v5}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v7, v5, :cond_c

    .line 48
    iget-object v2, v0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v2, v1}, Lc/e/a/a/o/v;->e(I)V

    return v11

    :cond_c
    add-int/2addr v7, v10

    and-int/lit8 v7, v7, 0xf

    if-eq v5, v7, :cond_d

    .line 49
    invoke-interface {v6}, Lc/e/a/a/e/h/J;->a()V

    :cond_d
    if-eqz v14, :cond_f

    .line 50
    iget-object v5, v0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v5}, Lc/e/a/a/o/v;->u()I

    move-result v5

    .line 51
    iget-object v7, v0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v7}, Lc/e/a/a/o/v;->u()I

    move-result v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_e

    const/4 v7, 0x2

    goto :goto_4

    :cond_e
    const/4 v7, 0x0

    :goto_4
    or-int/2addr v12, v7

    .line 52
    iget-object v7, v0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    sub-int/2addr v5, v10

    invoke-virtual {v7, v5}, Lc/e/a/a/o/v;->f(I)V

    .line 53
    :cond_f
    iget-boolean v5, v0, Lc/e/a/a/e/h/I;->r:Z

    .line 54
    invoke-virtual {v0, v13}, Lc/e/a/a/e/h/I;->a(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 55
    iget-object v7, v0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v7, v1}, Lc/e/a/a/o/v;->d(I)V

    .line 56
    iget-object v7, v0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-interface {v6, v7, v12}, Lc/e/a/a/e/h/J;->a(Lc/e/a/a/o/v;I)V

    .line 57
    iget-object v6, v0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v6, v2}, Lc/e/a/a/o/v;->d(I)V

    .line 58
    :cond_10
    iget v2, v0, Lc/e/a/a/e/h/I;->f:I

    if-eq v2, v9, :cond_11

    if-nez v5, :cond_11

    iget-boolean v2, v0, Lc/e/a/a/e/h/I;->r:Z

    if-eqz v2, :cond_11

    const-wide/16 v5, -0x1

    cmp-long v2, v3, v5

    if-eqz v2, :cond_11

    .line 59
    iput-boolean v10, v0, Lc/e/a/a/e/h/I;->t:Z

    .line 60
    :cond_11
    iget-object v2, v0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v2, v1}, Lc/e/a/a/o/v;->e(I)V

    return v11
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public final a(J)V
    .locals 12

    .line 61
    iget-boolean v0, p0, Lc/e/a/a/e/h/I;->s:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lc/e/a/a/e/h/I;->s:Z

    .line 63
    iget-object v0, p0, Lc/e/a/a/e/h/I;->n:Lc/e/a/a/e/h/H;

    invoke-virtual {v0}, Lc/e/a/a/e/h/H;->a()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 64
    new-instance v0, Lc/e/a/a/e/h/G;

    iget-object v1, p0, Lc/e/a/a/e/h/I;->n:Lc/e/a/a/e/h/H;

    .line 65
    invoke-virtual {v1}, Lc/e/a/a/e/h/H;->b()Lc/e/a/a/o/F;

    move-result-object v6

    iget-object v1, p0, Lc/e/a/a/e/h/I;->n:Lc/e/a/a/e/h/H;

    .line 66
    invoke-virtual {v1}, Lc/e/a/a/e/h/H;->a()J

    move-result-wide v7

    iget v11, p0, Lc/e/a/a/e/h/I;->w:I

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v11}, Lc/e/a/a/e/h/G;-><init>(Lc/e/a/a/o/F;JJI)V

    iput-object v0, p0, Lc/e/a/a/e/h/I;->o:Lc/e/a/a/e/h/G;

    .line 67
    iget-object p1, p0, Lc/e/a/a/e/h/I;->p:Lc/e/a/a/e/i;

    iget-object p2, p0, Lc/e/a/a/e/h/I;->o:Lc/e/a/a/e/h/G;

    invoke-virtual {p2}, Lc/e/a/a/e/a;->a()Lc/e/a/a/e/o;

    move-result-object p2

    invoke-interface {p1, p2}, Lc/e/a/a/e/i;->a(Lc/e/a/a/e/o;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lc/e/a/a/e/h/I;->p:Lc/e/a/a/e/i;

    new-instance p2, Lc/e/a/a/e/o$b;

    iget-object v0, p0, Lc/e/a/a/e/h/I;->n:Lc/e/a/a/e/h/H;

    invoke-virtual {v0}, Lc/e/a/a/e/h/H;->a()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lc/e/a/a/e/o$b;-><init>(J)V

    invoke-interface {p1, p2}, Lc/e/a/a/e/i;->a(Lc/e/a/a/e/o;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(JJ)V
    .locals 10

    .line 10
    iget p1, p0, Lc/e/a/a/e/h/I;->f:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lc/e/a/a/o/e;->b(Z)V

    .line 11
    iget-object p1, p0, Lc/e/a/a/e/h/I;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    const-wide/16 v2, 0x0

    if-ge v1, p1, :cond_4

    .line 12
    iget-object v4, p0, Lc/e/a/a/e/h/I;->g:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/a/a/o/F;

    .line 13
    invoke-virtual {v4}, Lc/e/a/a/o/F;->c()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_2

    .line 14
    invoke-virtual {v4}, Lc/e/a/a/o/F;->c()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_3

    .line 15
    invoke-virtual {v4}, Lc/e/a/a/o/F;->a()J

    move-result-wide v2

    cmp-long v5, v2, p3

    if-eqz v5, :cond_3

    .line 16
    :cond_2
    invoke-virtual {v4}, Lc/e/a/a/o/F;->d()V

    .line 17
    invoke-virtual {v4, p3, p4}, Lc/e/a/a/o/F;->d(J)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    cmp-long p1, p3, v2

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Lc/e/a/a/e/h/I;->o:Lc/e/a/a/e/h/G;

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p1, p3, p4}, Lc/e/a/a/e/a;->b(J)V

    .line 20
    :cond_5
    iget-object p1, p0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {p1}, Lc/e/a/a/o/v;->C()V

    .line 21
    iget-object p1, p0, Lc/e/a/a/e/h/I;->i:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    const/4 p1, 0x0

    .line 22
    :goto_3
    iget-object p2, p0, Lc/e/a/a/e/h/I;->k:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 23
    iget-object p2, p0, Lc/e/a/a/e/h/I;->k:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/e/a/a/e/h/J;

    invoke-interface {p2}, Lc/e/a/a/e/h/J;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 24
    :cond_6
    iput v0, p0, Lc/e/a/a/e/h/I;->v:I

    return-void
.end method

.method public a(Lc/e/a/a/e/i;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lc/e/a/a/e/h/I;->p:Lc/e/a/a/e/i;

    return-void
.end method

.method public final a(I)Z
    .locals 3

    .line 69
    iget v0, p0, Lc/e/a/a/e/h/I;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lc/e/a/a/e/h/I;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/e/h/I;->m:Landroid/util/SparseBooleanArray;

    .line 70
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public a(Lc/e/a/a/e/h;)Z
    .locals 7

    .line 5
    iget-object v0, p0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    .line 6
    invoke-interface {p1, v0, v1, v2}, Lc/e/a/a/e/h;->a([BII)V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    .line 7
    aget-byte v4, v0, v4

    const/16 v6, 0x47

    if-eq v4, v6, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    .line 8
    invoke-interface {p1, v2}, Lc/e/a/a/e/h;->c(I)V

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final b(Lc/e/a/a/e/h;)Z
    .locals 6

    .line 4
    iget-object v0, p0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    iget-object v1, v0, Lc/e/a/a/o/v;->a:[B

    .line 5
    invoke-virtual {v0}, Lc/e/a/a/o/v;->c()I

    move-result v0

    rsub-int v0, v0, 0x24b8

    const/4 v2, 0x0

    const/16 v3, 0xbc

    if-ge v0, v3, :cond_1

    .line 6
    iget-object v0, p0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    iget-object v4, p0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v4}, Lc/e/a/a/o/v;->c()I

    move-result v4

    invoke-static {v1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :cond_0
    iget-object v4, p0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v4, v1, v0}, Lc/e/a/a/o/v;->a([BI)V

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->a()I

    move-result v0

    if-ge v0, v3, :cond_3

    .line 10
    iget-object v0, p0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->d()I

    move-result v0

    rsub-int v4, v0, 0x24b8

    .line 11
    invoke-interface {p1, v1, v0, v4}, Lc/e/a/a/e/h;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    return v2

    .line 12
    :cond_2
    iget-object v5, p0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    add-int/2addr v0, v4

    invoke-virtual {v5, v0}, Lc/e/a/a/o/v;->d(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final f()I
    .locals 4

    .line 2
    iget-object v0, p0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->c()I

    move-result v0

    .line 3
    iget-object v1, p0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v1}, Lc/e/a/a/o/v;->d()I

    move-result v1

    .line 4
    iget-object v2, p0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    iget-object v2, v2, Lc/e/a/a/o/v;->a:[B

    invoke-static {v2, v0, v1}, Lc/e/a/a/e/h/K;->a([BII)I

    move-result v2

    .line 5
    iget-object v3, p0, Lc/e/a/a/e/h/I;->h:Lc/e/a/a/o/v;

    invoke-virtual {v3, v2}, Lc/e/a/a/o/v;->e(I)V

    add-int/lit16 v3, v2, 0xbc

    if-le v3, v1, :cond_1

    .line 6
    iget v1, p0, Lc/e/a/a/e/h/I;->v:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lc/e/a/a/e/h/I;->v:I

    .line 7
    iget v0, p0, Lc/e/a/a/e/h/I;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lc/e/a/a/e/h/I;->v:I

    const/16 v1, 0x178

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lc/e/a/a/e/h/I;->v:I

    :cond_2
    :goto_0
    return v3
.end method

.method public final h()V
    .locals 7

    .line 2
    iget-object v0, p0, Lc/e/a/a/e/h/I;->l:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3
    iget-object v0, p0, Lc/e/a/a/e/h/I;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4
    iget-object v0, p0, Lc/e/a/a/e/h/I;->j:Lc/e/a/a/e/h/J$c;

    .line 5
    invoke-interface {v0}, Lc/e/a/a/e/h/J$c;->a()Landroid/util/SparseArray;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 7
    iget-object v4, p0, Lc/e/a/a/e/h/I;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lc/e/a/a/e/h/I;->k:Landroid/util/SparseArray;

    new-instance v1, Lc/e/a/a/e/h/D;

    new-instance v3, Lc/e/a/a/e/h/I$a;

    invoke-direct {v3, p0}, Lc/e/a/a/e/h/I$a;-><init>(Lc/e/a/a/e/h/I;)V

    invoke-direct {v1, v3}, Lc/e/a/a/e/h/D;-><init>(Lc/e/a/a/e/h/C;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lc/e/a/a/e/h/I;->u:Lc/e/a/a/e/h/J;

    return-void
.end method
