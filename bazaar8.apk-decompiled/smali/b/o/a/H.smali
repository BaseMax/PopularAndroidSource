.class public Lb/o/a/H;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/o/a/H$a;
    }
.end annotation


# static fields
.field public static final a:[I

.field public static final b:Lb/o/a/Q;

.field public static final c:Lb/o/a/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lb/o/a/H;->a:[I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/o/a/M;

    invoke-direct {v0}, Lb/o/a/M;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lb/o/a/H;->b:Lb/o/a/Q;

    .line 3
    invoke-static {}, Lb/o/a/H;->a()Lb/o/a/Q;

    move-result-object v0

    sput-object v0, Lb/o/a/H;->c:Lb/o/a/Q;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method public static a(Lb/f/b;Lb/o/a/H$a;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lb/o/a/H$a;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 137
    iget-object p1, p1, Lb/o/a/H$a;->c:Lb/o/a/a;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 138
    iget-object p2, p1, Lb/o/a/C;->o:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 139
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 140
    iget-object p1, p1, Lb/o/a/C;->o:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lb/o/a/C;->p:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 143
    :goto_0
    invoke-virtual {p0, p1}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lb/f/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lb/o/a/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Lb/f/b;

    invoke-direct {v0}, Lb/f/b;-><init>()V

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_4

    .line 18
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/o/a/a;

    .line 19
    invoke-virtual {v1, p0}, Lb/o/a/a;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    .line 20
    :cond_0
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 21
    iget-object v3, v1, Lb/o/a/C;->o:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v2, :cond_1

    .line 23
    iget-object v2, v1, Lb/o/a/C;->o:Ljava/util/ArrayList;

    .line 24
    iget-object v1, v1, Lb/o/a/C;->p:Ljava/util/ArrayList;

    goto :goto_1

    .line 25
    :cond_1
    iget-object v2, v1, Lb/o/a/C;->o:Ljava/util/ArrayList;

    .line 26
    iget-object v1, v1, Lb/o/a/C;->p:Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 27
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 28
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v6}, Lb/f/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 30
    invoke-virtual {v0, v5, v7}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 31
    :cond_2
    invoke-virtual {v0, v5, v6}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static a(Lb/o/a/Q;Lb/f/b;Ljava/lang/Object;Lb/o/a/H$a;)Lb/f/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/Q;",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lb/o/a/H$a;",
            ")",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p3, Lb/o/a/H$a;->a:Landroidx/fragment/app/Fragment;

    .line 111
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v1

    .line 112
    invoke-virtual {p1}, Lb/f/i;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz p2, :cond_7

    if-nez v1, :cond_0

    goto :goto_3

    .line 113
    :cond_0
    new-instance p2, Lb/f/b;

    invoke-direct {p2}, Lb/f/b;-><init>()V

    .line 114
    invoke-virtual {p0, p2, v1}, Lb/o/a/Q;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 115
    iget-object p0, p3, Lb/o/a/H$a;->c:Lb/o/a/a;

    .line 116
    iget-boolean p3, p3, Lb/o/a/H$a;->b:Z

    if-eqz p3, :cond_1

    .line 117
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->I()Lb/i/a/s;

    move-result-object p3

    .line 118
    iget-object p0, p0, Lb/o/a/C;->o:Ljava/util/ArrayList;

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->G()Lb/i/a/s;

    move-result-object p3

    .line 120
    iget-object p0, p0, Lb/o/a/C;->p:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 121
    invoke-virtual {p2, p0}, Lb/f/b;->a(Ljava/util/Collection;)Z

    .line 122
    invoke-virtual {p1}, Lb/f/b;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Lb/f/b;->a(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p3, :cond_5

    .line 123
    invoke-virtual {p3, p0, p2}, Lb/i/a/s;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 124
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_6

    .line 125
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    invoke-virtual {p2, v0}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_3

    .line 127
    invoke-static {p1, v0}, Lb/o/a/H;->a(Lb/f/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 128
    invoke-virtual {p1, v0}, Lb/f/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 129
    :cond_3
    invoke-static {v1}, Lb/i/k/z;->r(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 130
    invoke-static {p1, v0}, Lb/o/a/H;->a(Lb/f/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 131
    invoke-static {v1}, Lb/i/k/z;->r(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 132
    :cond_5
    invoke-static {p1, p2}, Lb/o/a/H;->a(Lb/f/b;Lb/f/b;)V

    :cond_6
    return-object p2

    .line 133
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lb/f/i;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lb/o/a/H$a;Landroid/util/SparseArray;I)Lb/o/a/H$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/H$a;",
            "Landroid/util/SparseArray<",
            "Lb/o/a/H$a;",
            ">;I)",
            "Lb/o/a/H$a;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 212
    new-instance p0, Lb/o/a/H$a;

    invoke-direct {p0}, Lb/o/a/H$a;-><init>()V

    .line 213
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static a()Lb/o/a/Q;
    .locals 3

    const-string v0, "b.D.t"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/o/a/Q;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Lb/o/a/Q;
    .locals 2

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->H()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->U()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->W()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 67
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    .line 68
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->F()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 69
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->R()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 71
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->V()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 73
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    return-object p1

    .line 75
    :cond_6
    sget-object p0, Lb/o/a/H;->b:Lb/o/a/Q;

    if-eqz p0, :cond_7

    invoke-static {p0, v0}, Lb/o/a/H;->a(Lb/o/a/Q;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 76
    sget-object p0, Lb/o/a/H;->b:Lb/o/a/Q;

    return-object p0

    .line 77
    :cond_7
    sget-object p0, Lb/o/a/H;->c:Lb/o/a/Q;

    if-eqz p0, :cond_8

    invoke-static {p0, v0}, Lb/o/a/H;->a(Lb/o/a/Q;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 78
    sget-object p0, Lb/o/a/H;->c:Lb/o/a/Q;

    return-object p0

    .line 79
    :cond_8
    sget-object p0, Lb/o/a/H;->b:Lb/o/a/Q;

    if-nez p0, :cond_9

    sget-object p0, Lb/o/a/H;->c:Lb/o/a/Q;

    if-nez p0, :cond_9

    return-object p1

    .line 80
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lb/o/a/Q;Landroid/view/ViewGroup;Landroid/view/View;Lb/f/b;Lb/o/a/H$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/Q;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lb/o/a/H$a;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 94
    iget-object v8, v7, Lb/o/a/H$a;->a:Landroidx/fragment/app/Fragment;

    .line 95
    iget-object v9, v7, Lb/o/a/H$a;->d:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    if-eqz v8, :cond_6

    if-nez v9, :cond_0

    goto/16 :goto_3

    .line 96
    :cond_0
    iget-boolean v12, v7, Lb/o/a/H$a;->b:Z

    .line 97
    invoke-virtual/range {p3 .. p3}, Lb/f/i;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v13, p3

    move-object v1, v0

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {v6, v8, v9, v12}, Lb/o/a/H;->a(Lb/o/a/Q;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v13, p3

    .line 99
    :goto_0
    invoke-static {v6, v13, v1, v7}, Lb/o/a/H;->b(Lb/o/a/Q;Lb/f/b;Ljava/lang/Object;Lb/o/a/H$a;)Lb/f/b;

    move-result-object v3

    .line 100
    invoke-virtual/range {p3 .. p3}, Lb/f/i;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v14, v0

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {v3}, Lb/f/b;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v14, v1

    :goto_1
    if-nez v11, :cond_3

    if-nez p8, :cond_3

    if-nez v14, :cond_3

    return-object v0

    :cond_3
    const/4 v1, 0x1

    .line 102
    invoke-static {v8, v9, v12, v3, v1}, Lb/o/a/H;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/f/b;Z)V

    if-eqz v14, :cond_4

    .line 103
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v5, p2

    .line 104
    invoke-virtual {v6, v14, v5, v10}, Lb/o/a/Q;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 105
    iget-boolean v4, v7, Lb/o/a/H$a;->e:Z

    .line 106
    iget-object v2, v7, Lb/o/a/H$a;->f:Lb/o/a/a;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v16, v2

    move-object/from16 v2, p8

    move-object/from16 v5, v16

    .line 107
    invoke-static/range {v0 .. v5}, Lb/o/a/H;->a(Lb/o/a/Q;Ljava/lang/Object;Ljava/lang/Object;Lb/f/b;ZLb/o/a/a;)V

    if-eqz v11, :cond_5

    .line 108
    invoke-virtual {v6, v11, v15}, Lb/o/a/Q;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    move-object v15, v0

    .line 109
    :cond_5
    :goto_2
    new-instance v5, Lb/o/a/G;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v3, v14

    move-object/from16 v4, p4

    move-object v13, v5

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move-object v7, v8

    move-object v8, v9

    move v9, v12

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object v12, v15

    invoke-direct/range {v0 .. v12}, Lb/o/a/G;-><init>(Lb/o/a/Q;Lb/f/b;Ljava/lang/Object;Lb/o/a/H$a;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lb/i/k/r;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/i/k/r;

    return-object v14

    :cond_6
    :goto_3
    return-object v0
.end method

.method public static a(Lb/o/a/Q;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 83
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->W()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->V()Ljava/lang/Object;

    move-result-object p1

    .line 85
    :goto_0
    invoke-virtual {p0, p1}, Lb/o/a/Q;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lb/o/a/Q;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lb/o/a/Q;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 87
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->R()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->F()Ljava/lang/Object;

    move-result-object p1

    .line 89
    :goto_0
    invoke-virtual {p0, p1}, Lb/o/a/Q;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lb/o/a/Q;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 175
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->z()Z

    move-result p4

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->y()Z

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    :goto_0
    if-eqz p4, :cond_2

    .line 177
    invoke-virtual {p0, p2, p1, p3}, Lb/o/a/Q;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Lb/o/a/Q;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static a(Lb/f/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lb/f/i;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 135
    invoke-virtual {p0, v1}, Lb/f/i;->e(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {p0, v1}, Lb/f/i;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lb/o/a/Q;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/Q;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 167
    invoke-virtual {p0, v0, p2}, Lb/o/a/Q;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 168
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 169
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 170
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p0, p1, v0}, Lb/o/a/Q;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/f/b;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 156
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->G()Lb/i/a/s;

    move-result-object p0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->G()Lb/i/a/s;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 160
    :cond_1
    invoke-virtual {p3}, Lb/f/i;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 161
    invoke-virtual {p3, v0}, Lb/f/i;->c(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {p3, v0}, Lb/f/i;->e(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    if-eqz p4, :cond_3

    .line 163
    invoke-virtual {p0, p2, p1, p3}, Lb/i/a/s;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 164
    :cond_3
    invoke-virtual {p0, p2, p1, p3}, Lb/i/a/s;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static a(Lb/f/b;Lb/f/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lb/f/i;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 153
    invoke-virtual {p0, v0}, Lb/f/i;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    invoke-virtual {p1, v1}, Lb/f/i;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-virtual {p0, v0}, Lb/f/i;->d(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lb/o/a/Q;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/Q;",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/view/View;",
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

    .line 60
    new-instance v9, Lb/o/a/E;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lb/o/a/E;-><init>(Ljava/lang/Object;Lb/o/a/Q;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p1

    invoke-static {p1, v9}, Lb/i/k/r;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/i/k/r;

    return-void
.end method

.method public static a(Lb/o/a/Q;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/Q;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 32
    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->O:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->h(Z)V

    .line 34
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    .line 35
    invoke-virtual {p0, p1, v0, p3}, Lb/o/a/Q;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 36
    iget-object p0, p2, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    .line 37
    new-instance p1, Lb/o/a/D;

    invoke-direct {p1, p3}, Lb/o/a/D;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1}, Lb/i/k/r;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/i/k/r;

    :cond_0
    return-void
.end method

.method public static a(Lb/o/a/Q;Ljava/lang/Object;Ljava/lang/Object;Lb/f/b;ZLb/o/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/Q;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Lb/o/a/a;",
            ")V"
        }
    .end annotation

    .line 144
    iget-object v0, p5, Lb/o/a/C;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 146
    iget-object p4, p5, Lb/o/a/C;->p:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p4, p5, Lb/o/a/C;->o:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 149
    :goto_0
    invoke-virtual {p3, p4}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 150
    invoke-virtual {p0, p1, p3}, Lb/o/a/Q;->c(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 151
    invoke-virtual {p0, p2, p3}, Lb/o/a/Q;->c(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static a(Lb/o/a/a;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/a;",
            "Landroid/util/SparseArray<",
            "Lb/o/a/H$a;",
            ">;Z)V"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lb/o/a/C;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 180
    iget-object v3, p0, Lb/o/a/C;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/o/a/C$a;

    .line 181
    invoke-static {p0, v3, p1, v1, p2}, Lb/o/a/H;->a(Lb/o/a/a;Lb/o/a/C$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lb/o/a/a;Lb/o/a/C$a;Landroid/util/SparseArray;ZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/a;",
            "Lb/o/a/C$a;",
            "Landroid/util/SparseArray<",
            "Lb/o/a/H$a;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 182
    iget-object v10, v1, Lb/o/a/C$a;->b:Landroidx/fragment/app/Fragment;

    if-nez v10, :cond_0

    return-void

    .line 183
    :cond_0
    iget v11, v10, Landroidx/fragment/app/Fragment;->x:I

    if-nez v11, :cond_1

    return-void

    :cond_1
    if-eqz v3, :cond_2

    .line 184
    sget-object v4, Lb/o/a/H;->a:[I

    iget v1, v1, Lb/o/a/C$a;->a:I

    aget v1, v4, v1

    goto :goto_0

    :cond_2
    iget v1, v1, Lb/o/a/C$a;->a:I

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_a

    const/4 v6, 0x3

    if-eq v1, v6, :cond_7

    const/4 v6, 0x4

    if-eq v1, v6, :cond_5

    const/4 v6, 0x5

    if-eq v1, v6, :cond_3

    const/4 v6, 0x6

    if-eq v1, v6, :cond_7

    const/4 v6, 0x7

    if-eq v1, v6, :cond_a

    const/4 v1, 0x0

    :goto_1
    const/4 v12, 0x0

    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_3
    if-eqz p4, :cond_4

    .line 185
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->O:Z

    if-eqz v1, :cond_c

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v1, :cond_c

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v1, :cond_c

    goto :goto_5

    .line 186
    :cond_4
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->z:Z

    goto :goto_6

    :cond_5
    if-eqz p4, :cond_6

    .line 187
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->O:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v1, :cond_8

    :goto_2
    goto :goto_3

    .line 188
    :cond_6
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v1, :cond_8

    goto :goto_2

    :cond_7
    if-eqz p4, :cond_9

    .line 189
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->l:Z

    if-nez v1, :cond_8

    iget-object v1, v10, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 190
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    iget v1, v10, Landroidx/fragment/app/Fragment;->P:F

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_8

    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    .line 191
    :cond_9
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v1, :cond_8

    goto :goto_3

    :goto_4
    move v13, v1

    const/4 v1, 0x0

    const/4 v12, 0x1

    goto :goto_7

    :cond_a
    if-eqz p4, :cond_b

    .line 192
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->N:Z

    goto :goto_6

    .line 193
    :cond_b
    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->l:Z

    if-nez v1, :cond_c

    iget-boolean v1, v10, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v1, :cond_c

    :goto_5
    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    move v4, v1

    const/4 v1, 0x1

    goto :goto_1

    .line 194
    :goto_7
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/o/a/H$a;

    if-eqz v4, :cond_d

    .line 195
    invoke-static {v6, v2, v11}, Lb/o/a/H;->a(Lb/o/a/H$a;Landroid/util/SparseArray;I)Lb/o/a/H$a;

    move-result-object v6

    .line 196
    iput-object v10, v6, Lb/o/a/H$a;->a:Landroidx/fragment/app/Fragment;

    .line 197
    iput-boolean v3, v6, Lb/o/a/H$a;->b:Z

    .line 198
    iput-object v0, v6, Lb/o/a/H$a;->c:Lb/o/a/a;

    :cond_d
    move-object v14, v6

    const/4 v15, 0x0

    if-nez p4, :cond_f

    if-eqz v1, :cond_f

    if-eqz v14, :cond_e

    .line 199
    iget-object v1, v14, Lb/o/a/H$a;->d:Landroidx/fragment/app/Fragment;

    if-ne v1, v10, :cond_e

    .line 200
    iput-object v15, v14, Lb/o/a/H$a;->d:Landroidx/fragment/app/Fragment;

    .line 201
    :cond_e
    iget-object v4, v0, Lb/o/a/a;->s:Lb/o/a/v;

    .line 202
    iget v1, v10, Landroidx/fragment/app/Fragment;->b:I

    if-ge v1, v5, :cond_f

    iget v1, v4, Lb/o/a/v;->s:I

    if-lt v1, v5, :cond_f

    iget-boolean v1, v0, Lb/o/a/C;->q:Z

    if-nez v1, :cond_f

    .line 203
    invoke-virtual {v4, v10}, Lb/o/a/v;->m(Landroidx/fragment/app/Fragment;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v10

    .line 204
    invoke-virtual/range {v4 .. v9}, Lb/o/a/v;->a(Landroidx/fragment/app/Fragment;IIIZ)V

    :cond_f
    if-eqz v13, :cond_11

    if-eqz v14, :cond_10

    .line 205
    iget-object v1, v14, Lb/o/a/H$a;->d:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_11

    .line 206
    :cond_10
    invoke-static {v14, v2, v11}, Lb/o/a/H;->a(Lb/o/a/H$a;Landroid/util/SparseArray;I)Lb/o/a/H$a;

    move-result-object v14

    .line 207
    iput-object v10, v14, Lb/o/a/H$a;->d:Landroidx/fragment/app/Fragment;

    .line 208
    iput-boolean v3, v14, Lb/o/a/H$a;->e:Z

    .line 209
    iput-object v0, v14, Lb/o/a/H$a;->f:Lb/o/a/a;

    :cond_11
    if-nez p4, :cond_12

    if-eqz v12, :cond_12

    if-eqz v14, :cond_12

    .line 210
    iget-object v0, v14, Lb/o/a/H$a;->a:Landroidx/fragment/app/Fragment;

    if-ne v0, v10, :cond_12

    .line 211
    iput-object v15, v14, Lb/o/a/H$a;->a:Landroidx/fragment/app/Fragment;

    :cond_12
    return-void
.end method

.method public static a(Lb/o/a/v;ILb/o/a/H$a;Landroid/view/View;Lb/f/b;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/v;",
            "I",
            "Lb/o/a/H$a;",
            "Landroid/view/View;",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 38
    iget-object v1, v0, Lb/o/a/v;->u:Lb/o/a/j;

    invoke-virtual {v1}, Lb/o/a/j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v0, v0, Lb/o/a/v;->u:Lb/o/a/j;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lb/o/a/j;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v13, v0

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    if-nez v13, :cond_1

    return-void

    .line 40
    :cond_1
    iget-object v14, v9, Lb/o/a/H$a;->a:Landroidx/fragment/app/Fragment;

    .line 41
    iget-object v15, v9, Lb/o/a/H$a;->d:Landroidx/fragment/app/Fragment;

    .line 42
    invoke-static {v15, v14}, Lb/o/a/H;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Lb/o/a/Q;

    move-result-object v8

    if-nez v8, :cond_2

    return-void

    .line 43
    :cond_2
    iget-boolean v0, v9, Lb/o/a/H$a;->b:Z

    .line 44
    iget-boolean v1, v9, Lb/o/a/H$a;->e:Z

    .line 45
    invoke-static {v8, v14, v0}, Lb/o/a/H;->a(Lb/o/a/Q;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 46
    invoke-static {v8, v15, v1}, Lb/o/a/H;->b(Lb/o/a/Q;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    move-object v1, v13

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 p0, v4

    move-object/from16 v4, p2

    move-object/from16 p1, v5

    move-object/from16 v16, v6

    move-object/from16 v6, p0

    move-object/from16 v17, v7

    move-object v12, v8

    move-object/from16 v8, v16

    .line 49
    invoke-static/range {v0 .. v8}, Lb/o/a/H;->a(Lb/o/a/Q;Landroid/view/ViewGroup;Landroid/view/View;Lb/f/b;Lb/o/a/H$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v8, v17

    if-nez v8, :cond_3

    if-nez v6, :cond_3

    move-object/from16 v0, v16

    if-nez v0, :cond_4

    return-void

    :cond_3
    move-object/from16 v0, v16

    :cond_4
    move-object/from16 v1, p1

    .line 50
    invoke-static {v12, v0, v15, v1, v10}, Lb/o/a/H;->a(Lb/o/a/Q;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 51
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move-object/from16 v18, v0

    goto :goto_2

    :cond_6
    :goto_1
    const/16 v18, 0x0

    .line 52
    :goto_2
    invoke-virtual {v12, v8, v10}, Lb/o/a/Q;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 53
    iget-boolean v5, v9, Lb/o/a/H$a;->b:Z

    move-object v0, v12

    move-object v1, v8

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v14

    invoke-static/range {v0 .. v5}, Lb/o/a/H;->a(Lb/o/a/Q;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 54
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v12

    move-object v1, v9

    move-object v2, v8

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    move-object v5, v15

    move-object/from16 v7, p0

    .line 55
    invoke-virtual/range {v0 .. v7}, Lb/o/a/Q;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    move-object v5, v8

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    move-object v8, v15

    .line 56
    invoke-static/range {v0 .. v8}, Lb/o/a/H;->a(Lb/o/a/Q;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    .line 57
    invoke-virtual {v12, v13, v0, v11}, Lb/o/a/Q;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 58
    invoke-virtual {v12, v13, v9}, Lb/o/a/Q;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v12, v13, v0, v11}, Lb/o/a/Q;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public static a(Lb/o/a/v;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/v;",
            "Ljava/util/ArrayList<",
            "Lb/o/a/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .line 3
    iget v0, p0, Lb/o/a/v;->s:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move v1, p3

    :goto_0
    if-ge v1, p4, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/o/a/a;

    .line 6
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-static {v2, v0, p5}, Lb/o/a/H;->b(Lb/o/a/a;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v2, v0, p5}, Lb/o/a/H;->a(Lb/o/a/a;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lb/o/a/v;->t:Lb/o/a/m;

    invoke-virtual {v2}, Lb/o/a/m;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    .line 12
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 13
    invoke-static {v4, p1, p2, p3, p4}, Lb/o/a/H;->a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lb/f/b;

    move-result-object v5

    .line 14
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/o/a/H$a;

    if-eqz p5, :cond_3

    .line 15
    invoke-static {p0, v4, v6, v1, v5}, Lb/o/a/H;->b(Lb/o/a/v;ILb/o/a/H$a;Landroid/view/View;Lb/f/b;)V

    goto :goto_3

    .line 16
    :cond_3
    invoke-static {p0, v4, v6, v1, v5}, Lb/o/a/H;->a(Lb/o/a/v;ILb/o/a/H$a;Landroid/view/View;Lb/f/b;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static a(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 173
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 174
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lb/f/b;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Lb/f/i;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 91
    invoke-virtual {p1, v0}, Lb/f/i;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 92
    invoke-static {v1}, Lb/i/k/z;->r(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lb/o/a/Q;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/Q;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 82
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lb/o/a/Q;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lb/o/a/Q;Lb/f/b;Ljava/lang/Object;Lb/o/a/H$a;)Lb/f/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/Q;",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lb/o/a/H$a;",
            ")",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lb/f/i;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    .line 53
    :cond_0
    iget-object p2, p3, Lb/o/a/H$a;->d:Landroidx/fragment/app/Fragment;

    .line 54
    new-instance v0, Lb/f/b;

    invoke-direct {v0}, Lb/f/b;-><init>()V

    .line 55
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->Ja()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lb/o/a/Q;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 56
    iget-object p0, p3, Lb/o/a/H$a;->f:Lb/o/a/a;

    .line 57
    iget-boolean p3, p3, Lb/o/a/H$a;->e:Z

    if-eqz p3, :cond_1

    .line 58
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->G()Lb/i/a/s;

    move-result-object p2

    .line 59
    iget-object p0, p0, Lb/o/a/C;->p:Ljava/util/ArrayList;

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->I()Lb/i/a/s;

    move-result-object p2

    .line 61
    iget-object p0, p0, Lb/o/a/C;->o:Ljava/util/ArrayList;

    .line 62
    :goto_0
    invoke-virtual {v0, p0}, Lb/f/b;->a(Ljava/util/Collection;)Z

    if-eqz p2, :cond_4

    .line 63
    invoke-virtual {p2, p0, v0}, Lb/i/a/s;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 64
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_5

    .line 65
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 66
    invoke-virtual {v0, p3}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_2

    .line 67
    invoke-virtual {p1, p3}, Lb/f/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 68
    :cond_2
    invoke-static {v1}, Lb/i/k/z;->r(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 69
    invoke-virtual {p1, p3}, Lb/f/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 70
    invoke-static {v1}, Lb/i/k/z;->r(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {v0}, Lb/f/b;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb/f/b;->a(Ljava/util/Collection;)Z

    :cond_5
    return-object v0

    .line 72
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lb/f/i;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lb/o/a/Q;Landroid/view/ViewGroup;Landroid/view/View;Lb/f/b;Lb/o/a/H$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/Q;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lb/o/a/H$a;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v7, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v8, p7

    .line 27
    iget-object v9, v7, Lb/o/a/H$a;->a:Landroidx/fragment/app/Fragment;

    .line 28
    iget-object v10, v7, Lb/o/a/H$a;->d:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_0

    .line 29
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->Ja()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v4, 0x0

    if-eqz v9, :cond_9

    if-nez v10, :cond_1

    goto/16 :goto_3

    .line 30
    :cond_1
    iget-boolean v11, v7, Lb/o/a/H$a;->b:Z

    .line 31
    invoke-virtual/range {p3 .. p3}, Lb/f/i;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p0, v9, v10, v11}, Lb/o/a/H;->a(Lb/o/a/Q;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    .line 33
    :goto_0
    invoke-static {p0, v1, v5, v7}, Lb/o/a/H;->b(Lb/o/a/Q;Lb/f/b;Ljava/lang/Object;Lb/o/a/H$a;)Lb/f/b;

    move-result-object v12

    .line 34
    invoke-static {p0, v1, v5, v7}, Lb/o/a/H;->a(Lb/o/a/Q;Lb/f/b;Ljava/lang/Object;Lb/o/a/H$a;)Lb/f/b;

    move-result-object v13

    .line 35
    invoke-virtual/range {p3 .. p3}, Lb/f/i;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5

    if-eqz v12, :cond_3

    .line 36
    invoke-virtual {v12}, Lb/f/i;->clear()V

    :cond_3
    if-eqz v13, :cond_4

    .line 37
    invoke-virtual {v13}, Lb/f/i;->clear()V

    :cond_4
    move-object v14, v4

    goto :goto_1

    .line 38
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lb/f/b;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 39
    invoke-static {v2, v12, v14}, Lb/o/a/H;->a(Ljava/util/ArrayList;Lb/f/b;Ljava/util/Collection;)V

    .line 40
    invoke-virtual/range {p3 .. p3}, Lb/f/b;->values()Ljava/util/Collection;

    move-result-object v1

    .line 41
    invoke-static {v3, v13, v1}, Lb/o/a/H;->a(Ljava/util/ArrayList;Lb/f/b;Ljava/util/Collection;)V

    move-object v14, v5

    :goto_1
    if-nez v8, :cond_6

    if-nez p8, :cond_6

    if-nez v14, :cond_6

    return-object v4

    :cond_6
    const/4 v1, 0x1

    .line 42
    invoke-static {v9, v10, v11, v12, v1}, Lb/o/a/H;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/f/b;Z)V

    if-eqz v14, :cond_8

    .line 43
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p0, v14, v0, v2}, Lb/o/a/Q;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 45
    iget-boolean v4, v7, Lb/o/a/H$a;->e:Z

    .line 46
    iget-object v5, v7, Lb/o/a/H$a;->f:Lb/o/a/a;

    move-object v0, p0

    move-object v1, v14

    move-object/from16 v2, p8

    move-object v3, v12

    .line 47
    invoke-static/range {v0 .. v5}, Lb/o/a/H;->a(Lb/o/a/Q;Ljava/lang/Object;Ljava/lang/Object;Lb/f/b;ZLb/o/a/a;)V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 49
    invoke-static {v13, v7, v8, v11}, Lb/o/a/H;->a(Lb/f/b;Lb/o/a/H$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 50
    invoke-virtual {p0, v8, v0}, Lb/o/a/Q;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_7
    move-object v7, v0

    move-object v5, v1

    goto :goto_2

    :cond_8
    move-object v5, v4

    move-object v7, v5

    .line 51
    :goto_2
    new-instance v8, Lb/o/a/F;

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v13

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lb/o/a/F;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb/f/b;Landroid/view/View;Lb/o/a/Q;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lb/i/k/r;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/i/k/r;

    return-object v14

    :cond_9
    :goto_3
    return-object v4
.end method

.method public static b(Lb/o/a/Q;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->U()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->H()Ljava/lang/Object;

    move-result-object p1

    .line 26
    :goto_0
    invoke-virtual {p0, p1}, Lb/o/a/Q;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lb/o/a/a;Landroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/a;",
            "Landroid/util/SparseArray<",
            "Lb/o/a/H$a;",
            ">;Z)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lb/o/a/a;->s:Lb/o/a/v;

    iget-object v0, v0, Lb/o/a/v;->u:Lb/o/a/j;

    invoke-virtual {v0}, Lb/o/a/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lb/o/a/C;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 75
    iget-object v2, p0, Lb/o/a/C;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/o/a/C$a;

    .line 76
    invoke-static {p0, v2, p1, v1, p2}, Lb/o/a/H;->a(Lb/o/a/a;Lb/o/a/C$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(Lb/o/a/v;ILb/o/a/H$a;Landroid/view/View;Lb/f/b;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/a/v;",
            "I",
            "Lb/o/a/H$a;",
            "Landroid/view/View;",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v9, p3

    .line 1
    iget-object v1, v0, Lb/o/a/v;->u:Lb/o/a/j;

    invoke-virtual {v1}, Lb/o/a/j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lb/o/a/v;->u:Lb/o/a/j;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lb/o/a/j;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    if-nez v10, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v11, v4, Lb/o/a/H$a;->a:Landroidx/fragment/app/Fragment;

    .line 4
    iget-object v12, v4, Lb/o/a/H$a;->d:Landroidx/fragment/app/Fragment;

    .line 5
    invoke-static {v12, v11}, Lb/o/a/H;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Lb/o/a/Q;

    move-result-object v13

    if-nez v13, :cond_2

    return-void

    .line 6
    :cond_2
    iget-boolean v14, v4, Lb/o/a/H$a;->b:Z

    .line 7
    iget-boolean v0, v4, Lb/o/a/H$a;->e:Z

    .line 8
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-static {v13, v11, v14}, Lb/o/a/H;->a(Lb/o/a/Q;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 11
    invoke-static {v13, v12, v0}, Lb/o/a/H;->b(Lb/o/a/Q;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v13

    move-object v1, v10

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object v5, v8

    move-object/from16 p0, v6

    move-object v6, v15

    move-object/from16 p1, v7

    move-object/from16 v16, v10

    move-object v10, v8

    move-object/from16 v8, p0

    .line 12
    invoke-static/range {v0 .. v8}, Lb/o/a/H;->b(Lb/o/a/Q;Landroid/view/ViewGroup;Landroid/view/View;Lb/f/b;Lb/o/a/H$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v6, p1

    if-nez v6, :cond_3

    if-nez v8, :cond_3

    move-object/from16 v7, p0

    if-nez v7, :cond_4

    return-void

    :cond_3
    move-object/from16 v7, p0

    .line 13
    :cond_4
    invoke-static {v13, v7, v12, v10, v9}, Lb/o/a/H;->a(Lb/o/a/Q;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 14
    invoke-static {v13, v6, v11, v15, v9}, Lb/o/a/H;->a(Lb/o/a/Q;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v0, 0x4

    .line 15
    invoke-static {v9, v0}, Lb/o/a/H;->a(Ljava/util/ArrayList;I)V

    move-object v0, v13

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v11

    move-object v11, v5

    move v5, v14

    .line 16
    invoke-static/range {v0 .. v5}, Lb/o/a/H;->a(Lb/o/a/Q;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 17
    invoke-static {v13, v7, v12, v11}, Lb/o/a/H;->a(Lb/o/a/Q;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    .line 18
    invoke-virtual {v13, v15}, Lb/o/a/Q;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    move-object v0, v13

    move-object v1, v14

    move-object v2, v6

    move-object v3, v9

    move-object v4, v7

    move-object v5, v11

    move-object v6, v8

    move-object v7, v15

    .line 19
    invoke-virtual/range {v0 .. v7}, Lb/o/a/Q;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, v16

    .line 20
    invoke-virtual {v13, v0, v14}, Lb/o/a/Q;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object v1, v13

    move-object v2, v0

    move-object v3, v10

    move-object v4, v15

    move-object v5, v12

    move-object/from16 v6, p4

    .line 21
    invoke-virtual/range {v1 .. v6}, Lb/o/a/Q;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 22
    invoke-static {v9, v0}, Lb/o/a/H;->a(Ljava/util/ArrayList;I)V

    .line 23
    invoke-virtual {v13, v8, v10, v15}, Lb/o/a/Q;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 77
    sget-object v0, Lb/o/a/H;->b:Lb/o/a/Q;

    if-nez v0, :cond_1

    sget-object v0, Lb/o/a/H;->c:Lb/o/a/Q;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
