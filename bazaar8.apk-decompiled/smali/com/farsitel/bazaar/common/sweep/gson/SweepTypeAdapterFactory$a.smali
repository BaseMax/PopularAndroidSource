.class public final Lcom/farsitel/bazaar/common/sweep/gson/SweepTypeAdapterFactory$a;
.super Ljava/lang/Object;
.source "SweepTypeAdapterFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/common/sweep/gson/SweepTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/farsitel/bazaar/common/sweep/gson/SweepTypeAdapterFactory;Lc/e/d/j;Lc/e/d/c/a;)Lc/e/d/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/farsitel/bazaar/common/sweep/gson/SweepTypeAdapterFactory;",
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
    invoke-virtual {p1, p0, p2}, Lc/e/d/j;->a(Lc/e/d/y;Lc/e/d/c/a;)Lc/e/d/x;

    move-result-object v0

    .line 2
    const-class v1, Lc/e/d/p;

    invoke-virtual {p1, v1}, Lc/e/d/j;->a(Ljava/lang/Class;)Lc/e/d/x;

    move-result-object v1

    const-string v2, "delegate"

    .line 3
    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "elementAdapter"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/farsitel/bazaar/common/sweep/gson/SweepTypeAdapterFactory;->a(Lc/e/d/j;Lc/e/d/c/a;Lc/e/d/x;Lc/e/d/x;)Lc/e/d/x;

    move-result-object p0

    return-object p0
.end method
