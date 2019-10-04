.class public final Lc/c/a/c/f/a/a/b;
.super Ljava/lang/Object;
.source "HooksDelegation.kt"


# instance fields
.field public final a:Lc/c/a/c/f/a/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/c/f/a/a/a;)V
    .locals 1

    const-string v0, "hooks"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/c/f/a/a/b;->a:Lc/c/a/c/f/a/a/a;

    return-void
.end method


# virtual methods
.method public final a(Lc/e/d/d/c;Lc/e/d/j;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/d/d/c;",
            "Lc/e/d/j;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/c/f/a/a/b;->a:Lc/c/a/c/f/a/a/a;

    invoke-interface {v0, p3}, Lc/c/a/c/f/a/a/a;->a(Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object p3

    .line 3
    invoke-virtual {p2, p3}, Lc/e/d/j;->b(Ljava/lang/Object;)Lc/e/d/p;

    move-result-object p3

    .line 4
    invoke-virtual {p1, v0}, Lc/e/d/d/c;->e(Ljava/lang/String;)Lc/e/d/d/c;

    .line 5
    invoke-virtual {p2, p3, p1}, Lc/e/d/j;->a(Lc/e/d/p;Lc/e/d/d/c;)V

    :cond_0
    return-void
.end method
