.class public Lb/D/t;
.super Lb/o/a/Q;
.source "FragmentTransitionSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/o/a/Q;-><init>()V

    return-void
.end method

.method public static a(Lb/D/E;)Z
    .locals 1

    .line 13
    invoke-virtual {p0}, Lb/D/E;->j()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lb/o/a/Q;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lb/D/E;->k()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lb/o/a/Q;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lb/D/E;->p()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lb/o/a/Q;->a(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_0

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
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 18
    check-cast p1, Lb/D/E;

    .line 19
    check-cast p2, Lb/D/E;

    .line 20
    check-cast p3, Lb/D/E;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 21
    new-instance v0, Lb/D/K;

    invoke-direct {v0}, Lb/D/K;-><init>()V

    .line 22
    invoke-virtual {v0, p1}, Lb/D/K;->a(Lb/D/E;)Lb/D/K;

    .line 23
    invoke-virtual {v0, p2}, Lb/D/K;->a(Lb/D/E;)Lb/D/K;

    const/4 p1, 0x1

    .line 24
    invoke-virtual {v0, p1}, Lb/D/K;->b(I)Lb/D/K;

    move-object p1, v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_4

    .line 25
    new-instance p2, Lb/D/K;

    invoke-direct {p2}, Lb/D/K;-><init>()V

    if-eqz p1, :cond_3

    .line 26
    invoke-virtual {p2, p1}, Lb/D/K;->a(Lb/D/E;)Lb/D/K;

    .line 27
    :cond_3
    invoke-virtual {p2, p3}, Lb/D/K;->a(Lb/D/E;)Lb/D/K;

    return-object p2

    :cond_4
    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lb/D/E;

    invoke-static {p1, p2}, Lb/D/H;->a(Landroid/view/ViewGroup;Lb/D/E;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 47
    check-cast p1, Lb/D/E;

    .line 48
    new-instance v0, Lb/D/s;

    invoke-direct {v0, p0, p2}, Lb/D/s;-><init>(Lb/D/t;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lb/D/E;->a(Lb/D/E$b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 45
    check-cast p1, Lb/D/E;

    .line 46
    invoke-virtual {p1, p2}, Lb/D/E;->a(Landroid/view/View;)Lb/D/E;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 16
    check-cast p1, Lb/D/E;

    .line 17
    new-instance v0, Lb/D/q;

    invoke-direct {v0, p0, p2, p3}, Lb/D/q;-><init>(Lb/D/t;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lb/D/E;->a(Lb/D/E$c;)Lb/D/E;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 29
    move-object v0, p1

    check-cast v0, Lb/D/E;

    .line 30
    new-instance v9, Lb/D/r;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lb/D/r;-><init>(Lb/D/t;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Lb/D/E;->a(Lb/D/E$c;)Lb/D/E;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2
    check-cast p1, Lb/D/E;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, Lb/D/K;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lb/D/K;

    .line 5
    invoke-virtual {p1}, Lb/D/K;->u()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Lb/D/K;->a(I)Lb/D/E;

    move-result-object v2

    .line 7
    invoke-virtual {p0, v2, p2}, Lb/D/t;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Lb/D/t;->a(Lb/D/E;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lb/D/E;->q()Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lb/o/a/Q;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 12
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lb/D/E;->a(Landroid/view/View;)Lb/D/E;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 31
    check-cast p1, Lb/D/E;

    .line 32
    instance-of v0, p1, Lb/D/K;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lb/D/K;

    .line 34
    invoke-virtual {p1}, Lb/D/K;->u()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 35
    invoke-virtual {p1, v1}, Lb/D/K;->a(I)Lb/D/E;

    move-result-object v2

    .line 36
    invoke-virtual {p0, v2, p2, p3}, Lb/D/t;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p1}, Lb/D/t;->a(Lb/D/E;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 38
    invoke-virtual {p1}, Lb/D/E;->q()Ljava/util/List;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 40
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 42
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lb/D/E;->a(Landroid/view/View;)Lb/D/E;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-ltz p3, :cond_3

    .line 44
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lb/D/E;->d(Landroid/view/View;)Lb/D/E;

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lb/D/E;

    return p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Lb/D/E;

    invoke-virtual {p1}, Lb/D/E;->clone()Lb/D/E;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    new-instance v0, Lb/D/K;

    invoke-direct {v0}, Lb/D/K;-><init>()V

    if-eqz p1, :cond_0

    .line 12
    check-cast p1, Lb/D/E;

    invoke-virtual {v0, p1}, Lb/D/K;->a(Lb/D/E;)Lb/D/K;

    :cond_0
    if-eqz p2, :cond_1

    .line 13
    check-cast p2, Lb/D/E;

    invoke-virtual {v0, p2}, Lb/D/K;->a(Lb/D/E;)Lb/D/K;

    :cond_1
    if-eqz p3, :cond_2

    .line 14
    check-cast p3, Lb/D/E;

    invoke-virtual {v0, p3}, Lb/D/K;->a(Lb/D/E;)Lb/D/K;

    :cond_2
    return-object v0
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 19
    check-cast p1, Lb/D/E;

    .line 20
    invoke-virtual {p1, p2}, Lb/D/E;->d(Landroid/view/View;)Lb/D/E;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2
    check-cast p1, Lb/D/K;

    .line 3
    invoke-virtual {p1}, Lb/D/E;->q()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7
    invoke-static {v0, v3}, Lb/o/a/Q;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0, p1, p3}, Lb/D/t;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 15
    check-cast p1, Lb/D/K;

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Lb/D/E;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    invoke-virtual {p1}, Lb/D/E;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lb/D/t;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lb/D/K;

    invoke-direct {v0}, Lb/D/K;-><init>()V

    .line 2
    check-cast p1, Lb/D/E;

    invoke-virtual {v0, p1}, Lb/D/K;->a(Lb/D/E;)Lb/D/K;

    return-object v0
.end method

.method public c(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lb/D/E;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 5
    invoke-virtual {p0, p2, v0}, Lb/o/a/Q;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6
    new-instance p2, Lb/D/p;

    invoke-direct {p2, p0, v0}, Lb/D/p;-><init>(Lb/D/t;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lb/D/E;->a(Lb/D/E$b;)V

    :cond_0
    return-void
.end method
