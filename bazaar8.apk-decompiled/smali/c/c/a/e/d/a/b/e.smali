.class public final Lc/c/a/e/d/a/b/e;
.super Ljava/lang/Object;
.source "TokenRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/a/b/d;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/a/b/d;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/a/b/e;->a:Lc/c/a/e/d/a/b/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "refreshToken"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/e/d/a/b/a/b;

    invoke-direct {v0, p1}, Lc/c/a/e/d/a/b/a/b;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lc/c/a/e/d/a/b/e;->a:Lc/c/a/e/d/a/b/d;

    invoke-interface {p1, v0}, Lc/c/a/e/d/a/b/d;->a(Lc/c/a/e/d/a/b/a/b;)Ll/b;

    move-result-object p1

    invoke-interface {p1}, Ll/b;->execute()Ll/D;

    move-result-object p1

    invoke-virtual {p1}, Ll/D;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/a/b/b/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/c/a/e/d/a/b/b/a;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method
