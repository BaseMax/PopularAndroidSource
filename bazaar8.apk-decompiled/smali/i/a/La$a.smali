.class public final Li/a/La$a;
.super Ljava/lang/Object;
.source "ThreadContextElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/La;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Li/a/La;Lh/c/e$c;)Lh/c/e$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "E::",
            "Lh/c/e$b;",
            ">(",
            "Li/a/La<",
            "TS;>;",
            "Lh/c/e$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lh/c/e$b$a;->a(Lh/c/e$b;Lh/c/e$c;)Lh/c/e$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Li/a/La;Lh/c/e;)Lh/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/La<",
            "TS;>;",
            "Lh/c/e;",
            ")",
            "Lh/c/e;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lh/c/e$b$a;->a(Lh/c/e$b;Lh/c/e;)Lh/c/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Li/a/La;Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/La<",
            "TS;>;TR;",
            "Lh/f/a/c<",
            "-TR;-",
            "Lh/c/e$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lh/c/e$b$a;->a(Lh/c/e$b;Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Li/a/La;Lh/c/e$c;)Lh/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/La<",
            "TS;>;",
            "Lh/c/e$c<",
            "*>;)",
            "Lh/c/e;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lh/c/e$b$a;->b(Lh/c/e$b;Lh/c/e$c;)Lh/c/e;

    move-result-object p0

    return-object p0
.end method
