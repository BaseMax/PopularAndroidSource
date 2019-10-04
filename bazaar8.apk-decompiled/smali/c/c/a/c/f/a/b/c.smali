.class public final Lc/c/a/c/f/a/b/c;
.super Lc/c/a/c/f/a/f;
.source "UnwrapperTypeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/c/f/a/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lc/c/a/c/f/a/b/b;


# direct methods
.method public constructor <init>(Lc/e/d/j;Lc/e/d/x;Lc/e/d/x;Lc/e/d/c/a;Lc/c/a/c/f/a/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/j;",
            "Lc/e/d/x<",
            "TT;>;",
            "Lc/e/d/x<",
            "Lc/e/d/p;",
            ">;",
            "Lc/e/d/c/a<",
            "TT;>;",
            "Lc/c/a/c/f/a/b/b;",
            ")V"
        }
    .end annotation

    const-string v0, "gson"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elementAdapter"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unwrapperNamesBuilder"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lc/c/a/c/f/a/f;-><init>(Lc/e/d/j;Lc/e/d/x;Lc/e/d/x;Lc/e/d/c/a;)V

    iput-object p5, p0, Lc/c/a/c/f/a/b/c;->e:Lc/c/a/c/f/a/b/b;

    return-void
.end method


# virtual methods
.method public a(Lc/e/d/d/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/b;",
            ")TT;"
        }
    .end annotation

    const-string v0, "in"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/c/f/a/b/c;->b(Lc/e/d/d/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/c/a/c/f/a/f;->b()Lc/e/d/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/d/x;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/c/a/c/f/a/f;->c()Lc/e/d/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/d/x;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "elementAdapter.read(`in`)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lc/e/d/p;

    invoke-virtual {p0, p1}, Lc/c/a/c/f/a/b/c;->b(Lc/e/d/p;)Lc/e/d/p;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lc/c/a/c/f/a/f;->b()Lc/e/d/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/d/x;->a(Lc/e/d/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/e/d/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "*"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 22
    invoke-static {p2, v0, v3, v2, v1}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    const-string v5, "it"

    const-string v6, "Collection contains no element matching the predicate."

    const-string v7, "null cannot be cast to non-null type java.lang.String"

    const-string v8, "jsonObject.keySet()"

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lc/e/d/r;->k()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1, v8}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 26
    invoke-static {v4, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p2, v3, v2, v1}, Lh/k/m;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string p1, "jsonObject.keySet().firs\u2026endsWith(endsWithValue) }"

    .line 27
    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_3
    invoke-static {p2, v0, v3, v2, v1}, Lh/k/m;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    if-eqz p2, :cond_6

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lc/e/d/r;->k()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1, v8}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 33
    invoke-static {v4, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p2, v3, v2, v1}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string p1, "jsonObject.keySet().firs\u2026tsWith(startsWithValue) }"

    .line 34
    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    move-object v4, p2

    :goto_0
    return-object v4
.end method

.method public final a(Lc/e/d/p;Ljava/lang/String;)Z
    .locals 9

    .line 5
    invoke-virtual {p1}, Lc/e/d/p;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lc/e/d/p;->c()Lc/e/d/r;

    move-result-object p1

    const-string v0, "*"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 7
    invoke-static {p2, v0, v1, v3, v2}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    const-string v5, "it"

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    const-string v7, "jsonObject.keySet()"

    const/4 v8, 0x1

    if-eqz v4, :cond_4

    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lc/e/d/r;->k()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1, v7}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12
    invoke-static {v0, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2, v1, v3, v2}, Lh/k/m;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 13
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    invoke-static {p2, v0, v1, v3, v2}, Lh/k/m;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    if-eqz p2, :cond_7

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lc/e/d/r;->k()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1, v7}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    invoke-static {v0, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2, v1, v3, v2}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 20
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_8
    invoke-virtual {p1, p2}, Lc/e/d/r;->c(Ljava/lang/String;)Z

    move-result v1

    :cond_9
    :goto_1
    return v1
.end method

.method public final b(Lc/e/d/p;)Lc/e/d/p;
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c/a/c/f/a/b/c;->e:Lc/c/a/c/f/a/b/b;

    invoke-virtual {p0}, Lc/c/a/c/f/a/f;->e()Lc/e/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/d/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "type.rawType"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/f/a/b/b;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v1, v2}, Lc/c/a/c/f/a/b/c;->a(Lc/e/d/p;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lc/e/d/p;->c()Lc/e/d/r;

    move-result-object v1

    const-string v3, "jsonObject"

    .line 5
    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lc/c/a/c/f/a/b/c;->a(Lc/e/d/r;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/e/d/r;->a(Ljava/lang/String;)Lc/e/d/p;

    move-result-object v1

    const-string v2, "jsonObject.get(getMember(jsonObject, it))"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    return-object v1
.end method

.method public final b(Lc/e/d/d/b;)Z
    .locals 2

    .line 6
    invoke-virtual {p1}, Lc/e/d/d/b;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "$"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
