.class public Lb/y/a/A;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/y/a/A$a;
    }
.end annotation


# instance fields
.field public final a:Lb/y/a/A$a;


# direct methods
.method public constructor <init>(Lb/y/a/A$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/y/a/A;->a:Lb/y/a/A$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/y/a/a$b;",
            ">;)I"
        }
    .end annotation

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/y/a/a$b;

    .line 18
    iget v3, v3, Lb/y/a/a$b;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_1

    return v0

    :cond_0
    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final a(Ljava/util/List;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/y/a/a$b;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lb/y/a/a$b;

    .line 2
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lb/y/a/a$b;

    .line 3
    iget v0, v6, Lb/y/a/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    .line 4
    invoke-virtual/range {v1 .. v6}, Lb/y/a/A;->c(Ljava/util/List;ILb/y/a/a$b;ILb/y/a/a$b;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    .line 5
    invoke-virtual/range {v1 .. v6}, Lb/y/a/A;->b(Ljava/util/List;ILb/y/a/a$b;ILb/y/a/a$b;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    .line 6
    invoke-virtual/range {v1 .. v6}, Lb/y/a/A;->a(Ljava/util/List;ILb/y/a/a$b;ILb/y/a/a$b;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/util/List;ILb/y/a/a$b;ILb/y/a/a$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/y/a/a$b;",
            ">;I",
            "Lb/y/a/a$b;",
            "I",
            "Lb/y/a/a$b;",
            ")V"
        }
    .end annotation

    .line 7
    iget v0, p3, Lb/y/a/a$b;->d:I

    iget v1, p5, Lb/y/a/a$b;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget v1, p3, Lb/y/a/a$b;->b:I

    iget v2, p5, Lb/y/a/a$b;->b:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 9
    :cond_1
    iget v1, p5, Lb/y/a/a$b;->b:I

    iget v2, p3, Lb/y/a/a$b;->b:I

    if-gt v1, v2, :cond_2

    .line 10
    iget v1, p5, Lb/y/a/a$b;->d:I

    add-int/2addr v2, v1

    iput v2, p3, Lb/y/a/a$b;->b:I

    .line 11
    :cond_2
    iget v1, p5, Lb/y/a/a$b;->b:I

    iget v2, p3, Lb/y/a/a$b;->d:I

    if-gt v1, v2, :cond_3

    .line 12
    iget v1, p5, Lb/y/a/a$b;->d:I

    add-int/2addr v2, v1

    iput v2, p3, Lb/y/a/a$b;->d:I

    .line 13
    :cond_3
    iget v1, p5, Lb/y/a/a$b;->b:I

    add-int/2addr v1, v0

    iput v1, p5, Lb/y/a/a$b;->b:I

    .line 14
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/y/a/a$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lb/y/a/A;->a(Ljava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Lb/y/a/A;->a(Ljava/util/List;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;ILb/y/a/a$b;ILb/y/a/a$b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/y/a/a$b;",
            ">;I",
            "Lb/y/a/a$b;",
            "I",
            "Lb/y/a/a$b;",
            ")V"
        }
    .end annotation

    .line 3
    iget v0, p3, Lb/y/a/a$b;->b:I

    iget v1, p3, Lb/y/a/a$b;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    .line 4
    iget v4, p5, Lb/y/a/a$b;->b:I

    if-ne v4, v0, :cond_0

    iget v4, p5, Lb/y/a/a$b;->d:I

    sub-int/2addr v1, v0

    if-ne v4, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 5
    :cond_1
    iget v4, p5, Lb/y/a/a$b;->b:I

    add-int/lit8 v5, v1, 0x1

    if-ne v4, v5, :cond_2

    iget v4, p5, Lb/y/a/a$b;->d:I

    sub-int/2addr v0, v1

    if-ne v4, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 6
    :goto_1
    iget v1, p3, Lb/y/a/a$b;->d:I

    iget v4, p5, Lb/y/a/a$b;->b:I

    const/4 v5, 0x2

    if-ge v1, v4, :cond_3

    sub-int/2addr v4, v3

    .line 7
    iput v4, p5, Lb/y/a/a$b;->b:I

    goto :goto_2

    .line 8
    :cond_3
    iget v6, p5, Lb/y/a/a$b;->d:I

    add-int/2addr v4, v6

    if-ge v1, v4, :cond_5

    sub-int/2addr v6, v3

    .line 9
    iput v6, p5, Lb/y/a/a$b;->d:I

    .line 10
    iput v5, p3, Lb/y/a/a$b;->a:I

    .line 11
    iput v3, p3, Lb/y/a/a$b;->d:I

    .line 12
    iget p2, p5, Lb/y/a/a$b;->d:I

    if-nez p2, :cond_4

    .line 13
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lb/y/a/A;->a:Lb/y/a/A$a;

    invoke-interface {p1, p5}, Lb/y/a/A$a;->a(Lb/y/a/a$b;)V

    :cond_4
    return-void

    .line 15
    :cond_5
    :goto_2
    iget v1, p3, Lb/y/a/a$b;->b:I

    iget v4, p5, Lb/y/a/a$b;->b:I

    const/4 v6, 0x0

    if-gt v1, v4, :cond_6

    add-int/2addr v4, v3

    .line 16
    iput v4, p5, Lb/y/a/a$b;->b:I

    goto :goto_3

    .line 17
    :cond_6
    iget v7, p5, Lb/y/a/a$b;->d:I

    add-int v8, v4, v7

    if-ge v1, v8, :cond_7

    add-int/2addr v4, v7

    sub-int/2addr v4, v1

    .line 18
    iget-object v7, p0, Lb/y/a/A;->a:Lb/y/a/A$a;

    add-int/2addr v1, v3

    invoke-interface {v7, v5, v1, v4, v6}, Lb/y/a/A$a;->a(IIILjava/lang/Object;)Lb/y/a/a$b;

    move-result-object v6

    .line 19
    iget v1, p3, Lb/y/a/a$b;->b:I

    iget v3, p5, Lb/y/a/a$b;->b:I

    sub-int/2addr v1, v3

    iput v1, p5, Lb/y/a/a$b;->d:I

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 20
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Lb/y/a/A;->a:Lb/y/a/A$a;

    invoke-interface {p1, p3}, Lb/y/a/A$a;->a(Lb/y/a/a$b;)V

    return-void

    :cond_8
    if-eqz v0, :cond_c

    if-eqz v6, :cond_a

    .line 23
    iget v0, p3, Lb/y/a/a$b;->b:I

    iget v1, v6, Lb/y/a/a$b;->b:I

    if-le v0, v1, :cond_9

    .line 24
    iget v1, v6, Lb/y/a/a$b;->d:I

    sub-int/2addr v0, v1

    iput v0, p3, Lb/y/a/a$b;->b:I

    .line 25
    :cond_9
    iget v0, p3, Lb/y/a/a$b;->d:I

    iget v1, v6, Lb/y/a/a$b;->b:I

    if-le v0, v1, :cond_a

    .line 26
    iget v1, v6, Lb/y/a/a$b;->d:I

    sub-int/2addr v0, v1

    iput v0, p3, Lb/y/a/a$b;->d:I

    .line 27
    :cond_a
    iget v0, p3, Lb/y/a/a$b;->b:I

    iget v1, p5, Lb/y/a/a$b;->b:I

    if-le v0, v1, :cond_b

    .line 28
    iget v1, p5, Lb/y/a/a$b;->d:I

    sub-int/2addr v0, v1

    iput v0, p3, Lb/y/a/a$b;->b:I

    .line 29
    :cond_b
    iget v0, p3, Lb/y/a/a$b;->d:I

    iget v1, p5, Lb/y/a/a$b;->b:I

    if-le v0, v1, :cond_10

    .line 30
    iget v1, p5, Lb/y/a/a$b;->d:I

    sub-int/2addr v0, v1

    iput v0, p3, Lb/y/a/a$b;->d:I

    goto :goto_4

    :cond_c
    if-eqz v6, :cond_e

    .line 31
    iget v0, p3, Lb/y/a/a$b;->b:I

    iget v1, v6, Lb/y/a/a$b;->b:I

    if-lt v0, v1, :cond_d

    .line 32
    iget v1, v6, Lb/y/a/a$b;->d:I

    sub-int/2addr v0, v1

    iput v0, p3, Lb/y/a/a$b;->b:I

    .line 33
    :cond_d
    iget v0, p3, Lb/y/a/a$b;->d:I

    iget v1, v6, Lb/y/a/a$b;->b:I

    if-lt v0, v1, :cond_e

    .line 34
    iget v1, v6, Lb/y/a/a$b;->d:I

    sub-int/2addr v0, v1

    iput v0, p3, Lb/y/a/a$b;->d:I

    .line 35
    :cond_e
    iget v0, p3, Lb/y/a/a$b;->b:I

    iget v1, p5, Lb/y/a/a$b;->b:I

    if-lt v0, v1, :cond_f

    .line 36
    iget v1, p5, Lb/y/a/a$b;->d:I

    sub-int/2addr v0, v1

    iput v0, p3, Lb/y/a/a$b;->b:I

    .line 37
    :cond_f
    iget v0, p3, Lb/y/a/a$b;->d:I

    iget v1, p5, Lb/y/a/a$b;->b:I

    if-lt v0, v1, :cond_10

    .line 38
    iget v1, p5, Lb/y/a/a$b;->d:I

    sub-int/2addr v0, v1

    iput v0, p3, Lb/y/a/a$b;->d:I

    .line 39
    :cond_10
    :goto_4
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget p5, p3, Lb/y/a/a$b;->b:I

    iget v0, p3, Lb/y/a/a$b;->d:I

    if-eq p5, v0, :cond_11

    .line 41
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 42
    :cond_11
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_5
    if-eqz v6, :cond_12

    .line 43
    invoke-interface {p1, p2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_12
    return-void
.end method

.method public c(Ljava/util/List;ILb/y/a/a$b;ILb/y/a/a$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/y/a/a$b;",
            ">;I",
            "Lb/y/a/a$b;",
            "I",
            "Lb/y/a/a$b;",
            ")V"
        }
    .end annotation

    .line 1
    iget v0, p3, Lb/y/a/a$b;->d:I

    iget v1, p5, Lb/y/a/a$b;->b:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v4

    .line 2
    iput v1, p5, Lb/y/a/a$b;->b:I

    goto :goto_0

    .line 3
    :cond_0
    iget v5, p5, Lb/y/a/a$b;->d:I

    add-int/2addr v1, v5

    if-ge v0, v1, :cond_1

    sub-int/2addr v5, v4

    .line 4
    iput v5, p5, Lb/y/a/a$b;->d:I

    .line 5
    iget-object v0, p0, Lb/y/a/A;->a:Lb/y/a/A$a;

    iget v1, p3, Lb/y/a/a$b;->b:I

    iget-object v5, p5, Lb/y/a/a$b;->c:Ljava/lang/Object;

    invoke-interface {v0, v2, v1, v4, v5}, Lb/y/a/A$a;->a(IIILjava/lang/Object;)Lb/y/a/a$b;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v3

    .line 6
    :goto_1
    iget v1, p3, Lb/y/a/a$b;->b:I

    iget v5, p5, Lb/y/a/a$b;->b:I

    if-gt v1, v5, :cond_2

    add-int/2addr v5, v4

    .line 7
    iput v5, p5, Lb/y/a/a$b;->b:I

    goto :goto_2

    .line 8
    :cond_2
    iget v6, p5, Lb/y/a/a$b;->d:I

    add-int v7, v5, v6

    if-ge v1, v7, :cond_3

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    .line 9
    iget-object v3, p0, Lb/y/a/A;->a:Lb/y/a/A$a;

    add-int/2addr v1, v4

    iget-object v4, p5, Lb/y/a/a$b;->c:Ljava/lang/Object;

    invoke-interface {v3, v2, v1, v5, v4}, Lb/y/a/A$a;->a(IIILjava/lang/Object;)Lb/y/a/a$b;

    move-result-object v3

    .line 10
    iget v1, p5, Lb/y/a/a$b;->d:I

    sub-int/2addr v1, v5

    iput v1, p5, Lb/y/a/a$b;->d:I

    .line 11
    :cond_3
    :goto_2
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget p3, p5, Lb/y/a/a$b;->d:I

    if-lez p3, :cond_4

    .line 13
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 14
    :cond_4
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 15
    iget-object p3, p0, Lb/y/a/A;->a:Lb/y/a/A$a;

    invoke-interface {p3, p5}, Lb/y/a/A$a;->a(Lb/y/a/a$b;)V

    :goto_3
    if-eqz v0, :cond_5

    .line 16
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    if-eqz v3, :cond_6

    .line 17
    invoke-interface {p1, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    return-void
.end method
