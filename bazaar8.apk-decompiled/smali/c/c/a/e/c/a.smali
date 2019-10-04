.class public final Lc/c/a/e/c/a;
.super Ljava/lang/Object;
.source "CallExt.kt"

# interfaces
.implements Ll/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li/a/j;

.field public final synthetic b:Ll/b;

.field public final synthetic c:Lh/f/a/b;


# direct methods
.method public constructor <init>(Li/a/j;Ll/b;Lh/f/a/b;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/e/c/a;->a:Li/a/j;

    iput-object p2, p0, Lc/c/a/e/c/a;->b:Ll/b;

    iput-object p3, p0, Lc/c/a/e/c/a;->c:Lh/f/a/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lc/c/a/e/c/a;->a:Li/a/j;

    new-instance v1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-static {p1}, Lc/c/a/e/c/b;->a(Ljava/lang/Throwable;)Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/farsitel/bazaar/data/entity/Either$Failure;-><init>(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    sget-object p1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lh/c/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ll/b;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/b<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "throwable"

    invoke-static {p2, p1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lc/c/a/e/c/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ll/b;Ll/D;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/b<",
            "TT;>;",
            "Ll/D<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ll/D;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    iget-object p1, p0, Lc/c/a/e/c/a;->a:Li/a/j;

    new-instance v0, Lcom/farsitel/bazaar/data/entity/Either$Success;

    iget-object v1, p0, Lc/c/a/e/c/a;->c:Lh/f/a/b;

    invoke-virtual {p2}, Ll/D;->a()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {v1, p2}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/farsitel/bazaar/data/entity/Either$Success;-><init>(Ljava/lang/Object;)V

    sget-object p2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v0}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/e/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, p2}, Lretrofit2/HttpException;-><init>(Ll/D;)V

    invoke-virtual {p0, p1}, Lc/c/a/e/c/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
