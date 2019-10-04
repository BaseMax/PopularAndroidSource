.class public Lb/y/a/o$b;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/y/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/y/a/o$e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[I

.field public final c:[I

.field public final d:Lb/y/a/o$a;

.field public final e:I

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(Lb/y/a/o$a;Ljava/util/List;[I[IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/y/a/o$a;",
            "Ljava/util/List<",
            "Lb/y/a/o$e;",
            ">;[I[IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lb/y/a/o$b;->a:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lb/y/a/o$b;->b:[I

    .line 4
    iput-object p4, p0, Lb/y/a/o$b;->c:[I

    .line 5
    iget-object p2, p0, Lb/y/a/o$b;->b:[I

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([II)V

    .line 6
    iget-object p2, p0, Lb/y/a/o$b;->c:[I

    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([II)V

    .line 7
    iput-object p1, p0, Lb/y/a/o$b;->d:Lb/y/a/o$a;

    .line 8
    invoke-virtual {p1}, Lb/y/a/o$a;->b()I

    move-result p2

    iput p2, p0, Lb/y/a/o$b;->e:I

    .line 9
    invoke-virtual {p1}, Lb/y/a/o$a;->a()I

    move-result p1

    iput p1, p0, Lb/y/a/o$b;->f:I

    .line 10
    iput-boolean p5, p0, Lb/y/a/o$b;->g:Z

    .line 11
    invoke-virtual {p0}, Lb/y/a/o$b;->a()V

    .line 12
    invoke-virtual {p0}, Lb/y/a/o$b;->b()V

    return-void
.end method

.method public static a(Ljava/util/List;IZ)Lb/y/a/o$c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/y/a/o$c;",
            ">;IZ)",
            "Lb/y/a/o$c;"
        }
    .end annotation

    .line 46
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 47
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/y/a/o$c;

    .line 48
    iget v3, v2, Lb/y/a/o$c;->a:I

    if-ne v3, p1, :cond_2

    iget-boolean v3, v2, Lb/y/a/o$c;->c:Z

    if-ne v3, p2, :cond_2

    .line 49
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 50
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 51
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/y/a/o$c;

    iget v3, p1, Lb/y/a/o$c;->b:I

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, -0x1

    :goto_2
    add-int/2addr v3, v4

    iput v3, p1, Lb/y/a/o$c;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/y/a/o$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/y/a/o$b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/y/a/o$e;

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget v2, v0, Lb/y/a/o$e;->a:I

    if-nez v2, :cond_1

    iget v0, v0, Lb/y/a/o$e;->b:I

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    new-instance v0, Lb/y/a/o$e;

    invoke-direct {v0}, Lb/y/a/o$e;-><init>()V

    .line 4
    iput v1, v0, Lb/y/a/o$e;->a:I

    .line 5
    iput v1, v0, Lb/y/a/o$e;->b:I

    .line 6
    iput-boolean v1, v0, Lb/y/a/o$e;->d:Z

    .line 7
    iput v1, v0, Lb/y/a/o$e;->c:I

    .line 8
    iput-boolean v1, v0, Lb/y/a/o$e;->e:Z

    .line 9
    iget-object v2, p0, Lb/y/a/o$b;->a:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final a(III)V
    .locals 2

    .line 10
    iget-object v0, p0, Lb/y/a/o$b;->b:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, p2, p3, v0}, Lb/y/a/o$b;->a(IIIZ)Z

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 1

    .line 25
    new-instance v0, Lb/y/a/b;

    invoke-direct {v0, p1}, Lb/y/a/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$a;)V

    invoke-virtual {p0, v0}, Lb/y/a/o$b;->a(Lb/y/a/z;)V

    return-void
.end method

.method public a(Lb/y/a/z;)V
    .locals 14

    .line 26
    instance-of v0, p1, Lb/y/a/c;

    if-eqz v0, :cond_0

    .line 27
    check-cast p1, Lb/y/a/c;

    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lb/y/a/c;

    invoke-direct {v0, p1}, Lb/y/a/c;-><init>(Lb/y/a/z;)V

    move-object p1, v0

    .line 29
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget v1, p0, Lb/y/a/o$b;->e:I

    .line 31
    iget v2, p0, Lb/y/a/o$b;->f:I

    .line 32
    iget-object v3, p0, Lb/y/a/o$b;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    move v9, v2

    move v8, v3

    :goto_1
    if-ltz v8, :cond_5

    .line 33
    iget-object v2, p0, Lb/y/a/o$b;->a:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lb/y/a/o$e;

    .line 34
    iget v11, v10, Lb/y/a/o$e;->c:I

    .line 35
    iget v2, v10, Lb/y/a/o$e;->a:I

    add-int v12, v2, v11

    .line 36
    iget v2, v10, Lb/y/a/o$e;->b:I

    add-int v13, v2, v11

    if-ge v12, v1, :cond_1

    sub-int v5, v1, v12

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, v12

    move v6, v12

    .line 37
    invoke-virtual/range {v1 .. v6}, Lb/y/a/o$b;->b(Ljava/util/List;Lb/y/a/z;III)V

    :cond_1
    if-ge v13, v9, :cond_2

    sub-int v5, v9, v13

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, v12

    move v6, v13

    .line 38
    invoke-virtual/range {v1 .. v6}, Lb/y/a/o$b;->a(Ljava/util/List;Lb/y/a/z;III)V

    :cond_2
    add-int/lit8 v11, v11, -0x1

    :goto_2
    if-ltz v11, :cond_4

    .line 39
    iget-object v1, p0, Lb/y/a/o$b;->b:[I

    iget v2, v10, Lb/y/a/o$e;->a:I

    add-int v3, v2, v11

    aget v1, v1, v3

    and-int/lit8 v1, v1, 0x1f

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    add-int v1, v2, v11

    .line 40
    iget-object v3, p0, Lb/y/a/o$b;->d:Lb/y/a/o$a;

    add-int/2addr v2, v11

    iget v4, v10, Lb/y/a/o$e;->b:I

    add-int/2addr v4, v11

    .line 41
    invoke-virtual {v3, v2, v4}, Lb/y/a/o$a;->c(II)Ljava/lang/Object;

    move-result-object v2

    .line 42
    invoke-virtual {p1, v1, v7, v2}, Lb/y/a/c;->a(IILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 43
    :cond_4
    iget v1, v10, Lb/y/a/o$e;->a:I

    .line 44
    iget v9, v10, Lb/y/a/o$e;->b:I

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 45
    :cond_5
    invoke-virtual {p1}, Lb/y/a/c;->a()V

    return-void
.end method

.method public final a(Ljava/util/List;Lb/y/a/z;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/y/a/o$c;",
            ">;",
            "Lb/y/a/z;",
            "III)V"
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lb/y/a/o$b;->g:Z

    if-nez v0, :cond_0

    .line 53
    invoke-interface {p2, p3, p4}, Lb/y/a/z;->b(II)V

    return-void

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p4, v0

    :goto_0
    if-ltz p4, :cond_5

    .line 54
    iget-object v1, p0, Lb/y/a/o$b;->c:[I

    add-int v2, p5, p4

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/16 v4, 0x8

    if-eq v1, v4, :cond_2

    const/16 v3, 0x10

    if-ne v1, v3, :cond_1

    .line 55
    new-instance v1, Lb/y/a/o$c;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p3, v3}, Lb/y/a/o$c;-><init>(IIZ)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown flag for pos "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long p3, v1

    .line 57
    invoke-static {p3, p4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_2
    iget-object v4, p0, Lb/y/a/o$b;->c:[I

    aget v4, v4, v2

    shr-int/lit8 v4, v4, 0x5

    .line 59
    invoke-static {p1, v4, v0}, Lb/y/a/o$b;->a(Ljava/util/List;IZ)Lb/y/a/o$c;

    move-result-object v5

    .line 60
    iget v5, v5, Lb/y/a/o$c;->b:I

    invoke-interface {p2, v5, p3}, Lb/y/a/z;->a(II)V

    if-ne v1, v3, :cond_4

    .line 61
    iget-object v1, p0, Lb/y/a/o$b;->d:Lb/y/a/o$a;

    .line 62
    invoke-virtual {v1, v4, v2}, Lb/y/a/o$a;->c(II)Ljava/lang/Object;

    move-result-object v1

    .line 63
    invoke-interface {p2, p3, v0, v1}, Lb/y/a/z;->a(IILjava/lang/Object;)V

    goto :goto_2

    .line 64
    :cond_3
    invoke-interface {p2, p3, v0}, Lb/y/a/z;->b(II)V

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/y/a/o$c;

    .line 66
    iget v3, v2, Lb/y/a/o$c;->b:I

    add-int/2addr v3, v0

    iput v3, v2, Lb/y/a/o$c;->b:I

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final a(IIIZ)Z
    .locals 8

    if-eqz p4, :cond_0

    add-int/lit8 p2, p2, -0x1

    move v0, p1

    move v1, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    move v1, v0

    :goto_0
    if-ltz p3, :cond_7

    .line 12
    iget-object v2, p0, Lb/y/a/o$b;->a:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/y/a/o$e;

    .line 13
    iget v3, v2, Lb/y/a/o$e;->a:I

    iget v4, v2, Lb/y/a/o$e;->c:I

    add-int/2addr v3, v4

    .line 14
    iget v5, v2, Lb/y/a/o$e;->b:I

    add-int/2addr v5, v4

    const/16 v4, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eqz p4, :cond_3

    sub-int/2addr v0, v7

    :goto_1
    if-lt v0, v3, :cond_6

    .line 15
    iget-object p2, p0, Lb/y/a/o$b;->d:Lb/y/a/o$a;

    invoke-virtual {p2, v0, v1}, Lb/y/a/o$a;->b(II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 16
    iget-object p1, p0, Lb/y/a/o$b;->d:Lb/y/a/o$a;

    invoke-virtual {p1, v0, v1}, Lb/y/a/o$a;->a(II)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x4

    .line 17
    :goto_2
    iget-object p1, p0, Lb/y/a/o$b;->c:[I

    shl-int/lit8 p2, v0, 0x5

    or-int/lit8 p2, p2, 0x10

    aput p2, p1, v1

    .line 18
    iget-object p1, p0, Lb/y/a/o$b;->b:[I

    shl-int/lit8 p2, v1, 0x5

    or-int/2addr p2, v4

    aput p2, p1, v0

    return v7

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    sub-int/2addr p2, v7

    :goto_3
    if-lt p2, v5, :cond_6

    .line 19
    iget-object v0, p0, Lb/y/a/o$b;->d:Lb/y/a/o$a;

    invoke-virtual {v0, v1, p2}, Lb/y/a/o$a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    iget-object p3, p0, Lb/y/a/o$b;->d:Lb/y/a/o$a;

    invoke-virtual {p3, v1, p2}, Lb/y/a/o$a;->a(II)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x4

    .line 21
    :goto_4
    iget-object p3, p0, Lb/y/a/o$b;->b:[I

    sub-int/2addr p1, v7

    shl-int/lit8 p4, p2, 0x5

    or-int/lit8 p4, p4, 0x10

    aput p4, p3, p1

    .line 22
    iget-object p3, p0, Lb/y/a/o$b;->c:[I

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v4

    aput p1, p3, p2

    return v7

    :cond_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 23
    :cond_6
    iget v0, v2, Lb/y/a/o$e;->a:I

    .line 24
    iget p2, v2, Lb/y/a/o$e;->b:I

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 9

    .line 1
    iget v0, p0, Lb/y/a/o$b;->e:I

    .line 2
    iget v1, p0, Lb/y/a/o$b;->f:I

    .line 3
    iget-object v2, p0, Lb/y/a/o$b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_4

    .line 4
    iget-object v4, p0, Lb/y/a/o$b;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/y/a/o$e;

    .line 5
    iget v5, v4, Lb/y/a/o$e;->a:I

    iget v6, v4, Lb/y/a/o$e;->c:I

    add-int/2addr v5, v6

    .line 6
    iget v7, v4, Lb/y/a/o$e;->b:I

    add-int/2addr v7, v6

    .line 7
    iget-boolean v6, p0, Lb/y/a/o$b;->g:Z

    if-eqz v6, :cond_1

    :goto_1
    if-le v0, v5, :cond_0

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Lb/y/a/o$b;->a(III)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    :goto_2
    if-le v1, v7, :cond_1

    .line 9
    invoke-virtual {p0, v0, v1, v2}, Lb/y/a/o$b;->b(III)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 10
    :goto_3
    iget v1, v4, Lb/y/a/o$e;->c:I

    if-ge v0, v1, :cond_3

    .line 11
    iget v1, v4, Lb/y/a/o$e;->a:I

    add-int/2addr v1, v0

    .line 12
    iget v5, v4, Lb/y/a/o$e;->b:I

    add-int/2addr v5, v0

    .line 13
    iget-object v6, p0, Lb/y/a/o$b;->d:Lb/y/a/o$a;

    .line 14
    invoke-virtual {v6, v1, v5}, Lb/y/a/o$a;->a(II)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_4

    :cond_2
    const/4 v6, 0x2

    .line 15
    :goto_4
    iget-object v7, p0, Lb/y/a/o$b;->b:[I

    shl-int/lit8 v8, v5, 0x5

    or-int/2addr v8, v6

    aput v8, v7, v1

    .line 16
    iget-object v7, p0, Lb/y/a/o$b;->c:[I

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v1, v6

    aput v1, v7, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 17
    :cond_3
    iget v0, v4, Lb/y/a/o$e;->a:I

    .line 18
    iget v1, v4, Lb/y/a/o$e;->b:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final b(III)V
    .locals 2

    .line 19
    iget-object v0, p0, Lb/y/a/o$b;->c:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, p1, p2, p3, v0}, Lb/y/a/o$b;->a(IIIZ)Z

    return-void
.end method

.method public final b(Ljava/util/List;Lb/y/a/z;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/y/a/o$c;",
            ">;",
            "Lb/y/a/z;",
            "III)V"
        }
    .end annotation

    .line 21
    iget-boolean v0, p0, Lb/y/a/o$b;->g:Z

    if-nez v0, :cond_0

    .line 22
    invoke-interface {p2, p3, p4}, Lb/y/a/z;->c(II)V

    return-void

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p4, v0

    :goto_0
    if-ltz p4, :cond_5

    .line 23
    iget-object v1, p0, Lb/y/a/o$b;->b:[I

    add-int v2, p5, p4

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/16 v4, 0x8

    if-eq v1, v4, :cond_2

    const/16 v3, 0x10

    if-ne v1, v3, :cond_1

    .line 24
    new-instance v1, Lb/y/a/o$c;

    add-int v3, p3, p4

    invoke-direct {v1, v2, v3, v0}, Lb/y/a/o$c;-><init>(IIZ)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown flag for pos "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long p3, v1

    .line 26
    invoke-static {p3, p4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    iget-object v4, p0, Lb/y/a/o$b;->b:[I

    aget v4, v4, v2

    shr-int/lit8 v4, v4, 0x5

    const/4 v5, 0x0

    .line 28
    invoke-static {p1, v4, v5}, Lb/y/a/o$b;->a(Ljava/util/List;IZ)Lb/y/a/o$c;

    move-result-object v5

    add-int v6, p3, p4

    .line 29
    iget v7, v5, Lb/y/a/o$c;->b:I

    sub-int/2addr v7, v0

    invoke-interface {p2, v6, v7}, Lb/y/a/z;->a(II)V

    if-ne v1, v3, :cond_4

    .line 30
    iget v1, v5, Lb/y/a/o$c;->b:I

    sub-int/2addr v1, v0

    iget-object v3, p0, Lb/y/a/o$b;->d:Lb/y/a/o$a;

    .line 31
    invoke-virtual {v3, v2, v4}, Lb/y/a/o$a;->c(II)Ljava/lang/Object;

    move-result-object v2

    .line 32
    invoke-interface {p2, v1, v0, v2}, Lb/y/a/z;->a(IILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    add-int v1, p3, p4

    .line 33
    invoke-interface {p2, v1, v0}, Lb/y/a/z;->c(II)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/y/a/o$c;

    .line 35
    iget v3, v2, Lb/y/a/o$c;->b:I

    sub-int/2addr v3, v0

    iput v3, v2, Lb/y/a/o$c;->b:I

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 p4, p4, -0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method
