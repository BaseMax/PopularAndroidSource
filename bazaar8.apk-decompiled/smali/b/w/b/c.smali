.class public Lb/w/b/c;
.super Lb/w/K;
.source "FragmentNavigator.java"


# annotations
.annotation runtime Lb/w/K$b;
    value = "fragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/w/b/c$b;,
        Lb/w/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/w/K<",
        "Lb/w/b/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lb/o/a/n;

.field public final c:I

.field public d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/o/a/n;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/w/K;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    .line 3
    iput-object p1, p0, Lb/w/b/c;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lb/w/b/c;->b:Lb/o/a/n;

    .line 5
    iput p3, p0, Lb/w/b/c;->c:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lb/o/a/n;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p2}, Lb/o/a/n;->b()Lb/o/a/l;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p1, p3}, Lb/o/a/l;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public a()Lb/w/b/c$a;
    .locals 1

    .line 3
    new-instance v0, Lb/w/b/c$a;

    invoke-direct {v0, p0}, Lb/w/b/c$a;-><init>(Lb/w/K;)V

    return-object v0
.end method

.method public bridge synthetic a()Lb/w/o;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/w/b/c;->a()Lb/w/b/c$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/w/b/c$a;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)Lb/w/o;
    .locals 8

    .line 7
    iget-object v0, p0, Lb/w/b/c;->b:Lb/o/a/n;

    invoke-virtual {v0}, Lb/o/a/n;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "FragmentNavigator"

    const-string p2, "Ignoring navigate() call: FragmentManager has already saved its state"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lb/w/b/c$a;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lb/w/b/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    :cond_1
    iget-object v3, p0, Lb/w/b/c;->a:Landroid/content/Context;

    iget-object v4, p0, Lb/w/b/c;->b:Lb/o/a/n;

    invoke-virtual {p0, v3, v4, v0, p2}, Lb/w/b/c;->a(Landroid/content/Context;Lb/o/a/n;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->m(Landroid/os/Bundle;)V

    .line 14
    iget-object p2, p0, Lb/w/b/c;->b:Lb/o/a/n;

    invoke-virtual {p2}, Lb/o/a/n;->a()Lb/o/a/C;

    move-result-object p2

    const/4 v3, -0x1

    if-eqz p3, :cond_2

    .line 15
    invoke-virtual {p3}, Lb/w/w;->a()I

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_0
    if-eqz p3, :cond_3

    .line 16
    invoke-virtual {p3}, Lb/w/w;->b()I

    move-result v5

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    :goto_1
    if-eqz p3, :cond_4

    .line 17
    invoke-virtual {p3}, Lb/w/w;->c()I

    move-result v6

    goto :goto_2

    :cond_4
    const/4 v6, -0x1

    :goto_2
    if-eqz p3, :cond_5

    .line 18
    invoke-virtual {p3}, Lb/w/w;->d()I

    move-result v7

    goto :goto_3

    :cond_5
    const/4 v7, -0x1

    :goto_3
    if-ne v4, v3, :cond_6

    if-ne v5, v3, :cond_6

    if-ne v6, v3, :cond_6

    if-eq v7, v3, :cond_b

    :cond_6
    if-eq v4, v3, :cond_7

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-eq v5, v3, :cond_8

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    if-eq v6, v3, :cond_9

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    :goto_6
    if-eq v7, v3, :cond_a

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    .line 19
    :goto_7
    invoke-virtual {p2, v4, v5, v6, v7}, Lb/o/a/C;->a(IIII)Lb/o/a/C;

    .line 20
    :cond_b
    iget v3, p0, Lb/w/b/c;->c:I

    invoke-virtual {p2, v3, v0}, Lb/o/a/C;->b(ILandroidx/fragment/app/Fragment;)Lb/o/a/C;

    .line 21
    invoke-virtual {p2, v0}, Lb/o/a/C;->d(Landroidx/fragment/app/Fragment;)Lb/o/a/C;

    .line 22
    invoke-virtual {p1}, Lb/w/o;->d()I

    move-result v0

    .line 23
    iget-object v3, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz p3, :cond_c

    if-nez v3, :cond_c

    .line 24
    invoke-virtual {p3}, Lb/w/w;->g()Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p3, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    .line 25
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v0, :cond_c

    const/4 p3, 0x1

    goto :goto_8

    :cond_c
    const/4 p3, 0x0

    :goto_8
    if-eqz v3, :cond_d

    :goto_9
    const/4 v2, 0x1

    goto :goto_a

    :cond_d
    if-eqz p3, :cond_e

    .line 26
    iget-object p3, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->size()I

    move-result p3

    if-le p3, v4, :cond_f

    .line 27
    iget-object p3, p0, Lb/w/b/c;->b:Lb/o/a/n;

    iget-object v3, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    iget-object v5, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lb/w/b/c;->a(II)Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {p3, v3, v4}, Lb/o/a/n;->a(Ljava/lang/String;I)V

    .line 30
    iget-object p3, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->size()I

    move-result p3

    invoke-virtual {p0, p3, v0}, Lb/w/b/c;->a(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lb/o/a/C;->a(Ljava/lang/String;)Lb/o/a/C;

    goto :goto_a

    .line 31
    :cond_e
    iget-object p3, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->size()I

    move-result p3

    add-int/2addr p3, v4

    invoke-virtual {p0, p3, v0}, Lb/w/b/c;->a(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lb/o/a/C;->a(Ljava/lang/String;)Lb/o/a/C;

    goto :goto_9

    .line 32
    :cond_f
    :goto_a
    instance-of p3, p4, Lb/w/b/c$b;

    if-eqz p3, :cond_10

    .line 33
    check-cast p4, Lb/w/b/c$b;

    .line 34
    invoke-virtual {p4}, Lb/w/b/c$b;->a()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_10

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, v3, p4}, Lb/o/a/C;->a(Landroid/view/View;Ljava/lang/String;)Lb/o/a/C;

    goto :goto_b

    .line 36
    :cond_10
    invoke-virtual {p2, v4}, Lb/o/a/C;->a(Z)Lb/o/a/C;

    .line 37
    invoke-virtual {p2}, Lb/o/a/C;->a()I

    if-eqz v2, :cond_11

    .line 38
    iget-object p2, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_11
    return-object v1
.end method

.method public bridge synthetic a(Lb/w/o;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)Lb/w/o;
    .locals 0

    .line 2
    check-cast p1, Lb/w/b/c$a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lb/w/b/c;->a(Lb/w/b/c$a;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)Lb/w/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(II)Ljava/lang/String;
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "androidx-nav-fragment:navigator:backStackIds"

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 41
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 42
    iget-object v3, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Landroid/os/Bundle;
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 3
    iget-object v2, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    add-int/lit8 v5, v3, 0x1

    .line 4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    move v3, v5

    goto :goto_0

    :cond_0
    const-string v2, "androidx-nav-fragment:navigator:backStackIds"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lb/w/b/c;->b:Lb/o/a/n;

    invoke-virtual {v0}, Lb/o/a/n;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FragmentNavigator"

    const-string v2, "Ignoring popBackStack() call: FragmentManager has already saved its state"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lb/w/b/c;->b:Lb/o/a/n;

    iget-object v1, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget-object v2, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lb/w/b/c;->a(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lb/o/a/n;->a(Ljava/lang/String;I)V

    .line 7
    iget-object v0, p0, Lb/w/b/c;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    return v2
.end method
