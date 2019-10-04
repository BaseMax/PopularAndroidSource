.class public final Lcom/farsitel/bazaar/common/sweep/gson/wrapper/WrapperTypeAdapterFactory;
.super Ljava/lang/Object;
.source "WrapperTypeAdapterFactory.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/sweep/gson/SweepTypeAdapterFactory;


# instance fields
.field public final a:Lc/c/a/c/f/a/c/b;

.field public final b:Lc/c/a/c/f/a/a/b;


# direct methods
.method public constructor <init>(Lc/c/a/c/f/a/c/a;Lc/c/a/c/f/a/a/a;)V
    .locals 1

    const-string v0, "defaultWrapper"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hooks"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/c/a/c/f/a/c/b;

    invoke-direct {v0, p1}, Lc/c/a/c/f/a/c/b;-><init>(Lc/c/a/c/f/a/c/a;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/common/sweep/gson/wrapper/WrapperTypeAdapterFactory;->a:Lc/c/a/c/f/a/c/b;

    .line 3
    new-instance p1, Lc/c/a/c/f/a/a/b;

    invoke-direct {p1, p2}, Lc/c/a/c/f/a/a/b;-><init>(Lc/c/a/c/f/a/a/a;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/sweep/gson/wrapper/WrapperTypeAdapterFactory;->b:Lc/c/a/c/f/a/a/b;

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
    .locals 8
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

    const-class v1, Lc/c/a/c/f/a/h;

    invoke-static {v0, v1}, Lc/c/a/c/f/a;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lc/c/a/c/f/a/c/c;

    iget-object v6, p0, Lcom/farsitel/bazaar/common/sweep/gson/wrapper/WrapperTypeAdapterFactory;->a:Lc/c/a/c/f/a/c/b;

    iget-object v7, p0, Lcom/farsitel/bazaar/common/sweep/gson/wrapper/WrapperTypeAdapterFactory;->b:Lc/c/a/c/f/a/a/b;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lc/c/a/c/f/a/c/c;-><init>(Lc/e/d/j;Lc/e/d/x;Lc/e/d/x;Lc/e/d/c/a;Lc/c/a/c/f/a/c/b;Lc/c/a/c/f/a/a/b;)V

    return-object v0

    :cond_0
    return-object p3
.end method
