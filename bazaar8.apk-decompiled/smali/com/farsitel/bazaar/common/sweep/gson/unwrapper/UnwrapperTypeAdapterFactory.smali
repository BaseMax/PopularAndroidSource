.class public final Lcom/farsitel/bazaar/common/sweep/gson/unwrapper/UnwrapperTypeAdapterFactory;
.super Ljava/lang/Object;
.source "UnwrapperTypeAdapterFactory.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/sweep/gson/SweepTypeAdapterFactory;


# instance fields
.field public final a:Lc/c/a/c/f/a/b/b;

.field public final b:Lc/c/a/c/f/a/b/a;


# direct methods
.method public constructor <init>(Lc/c/a/c/f/a/b/a;)V
    .locals 1

    const-string v0, "defaultUnwrapper"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/sweep/gson/unwrapper/UnwrapperTypeAdapterFactory;->b:Lc/c/a/c/f/a/b/a;

    .line 2
    new-instance p1, Lc/c/a/c/f/a/b/b;

    iget-object v0, p0, Lcom/farsitel/bazaar/common/sweep/gson/unwrapper/UnwrapperTypeAdapterFactory;->b:Lc/c/a/c/f/a/b/a;

    invoke-direct {p1, v0}, Lc/c/a/c/f/a/b/b;-><init>(Lc/c/a/c/f/a/b/a;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/sweep/gson/unwrapper/UnwrapperTypeAdapterFactory;->a:Lc/c/a/c/f/a/b/b;

    return-void
.end method


# virtual methods
.method public a(Lc/e/d/j;Lc/e/d/c/a;)Lc/e/d/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/d/j;",
            "Lc/e/d/c/a<",
            "TT;>;)",
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "gson"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lcom/farsitel/bazaar/common/sweep/gson/SweepTypeAdapterFactory$a;->a(Lcom/farsitel/bazaar/common/sweep/gson/SweepTypeAdapterFactory;Lc/e/d/j;Lc/e/d/c/a;)Lc/e/d/x;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/e/d/j;Lc/e/d/c/a;Lc/e/d/x;Lc/e/d/x;)Lc/e/d/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/d/j;",
            "Lc/e/d/c/a<",
            "TT;>;",
            "Lc/e/d/x<",
            "TT;>;",
            "Lc/e/d/x<",
            "Lc/e/d/p;",
            ">;)",
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "gson"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elementAdapter"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lc/e/d/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "type.rawType"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/common/sweep/gson/unwrapper/UnwrapperTypeAdapterFactory;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lc/c/a/c/f/a/b/c;

    iget-object v6, p0, Lcom/farsitel/bazaar/common/sweep/gson/unwrapper/UnwrapperTypeAdapterFactory;->a:Lc/c/a/c/f/a/b/b;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lc/c/a/c/f/a/b/c;-><init>(Lc/e/d/j;Lc/e/d/x;Lc/e/d/x;Lc/e/d/c/a;Lc/c/a/c/f/a/b/b;)V

    return-object v0

    :cond_0
    return-object p3
.end method

.method public final a(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 4
    const-class v0, Lc/c/a/c/f/a/g;

    invoke-static {p1, v0}, Lc/c/a/c/f/a;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/farsitel/bazaar/common/sweep/gson/unwrapper/UnwrapperTypeAdapterFactory;->b:Lc/c/a/c/f/a/b/a;

    invoke-interface {v1}, Lc/c/a/c/f/a/b/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/farsitel/bazaar/common/sweep/gson/unwrapper/UnwrapperTypeAdapterFactory;->b:Lc/c/a/c/f/a/b/a;

    invoke-interface {v1, p1}, Lc/c/a/c/f/a/b/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    return v1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "default unwrapper is forced but nothing provided. Try to implement unwrapWith() method or annotate your class with SweepUnwrapper"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return v0
.end method
