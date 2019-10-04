.class public final Lc/c/a/e/d/a/c;
.super Ljava/lang/Object;
.source "TokenRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/a/a/c;

.field public final b:Lc/c/a/e/d/a/b/e;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/a/a/c;Lc/c/a/e/d/a/b/e;)V
    .locals 1

    const-string v0, "localDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/a/c;->a:Lc/c/a/e/d/a/a/c;

    iput-object p2, p0, Lc/c/a/e/d/a/c;->b:Lc/c/a/e/d/a/b/e;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/c;->a:Lc/c/a/e/d/a/a/c;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/c;->a:Lc/c/a/e/d/a/a/c;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/a/a/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/a/c;->a:Lc/c/a/e/d/a/a/c;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/c;->a:Lc/c/a/e/d/a/a/c;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/a/a/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/c;->a:Lc/c/a/e/d/a/a/c;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a/c;->a()V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/a/c;->b:Lc/c/a/e/d/a/b/e;

    iget-object v1, p0, Lc/c/a/e/d/a/c;->a:Lc/c/a/e/d/a/a/c;

    invoke-virtual {v1}, Lc/c/a/e/d/a/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/e/d/a/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lc/c/a/e/d/a/c;->a(Ljava/lang/String;)V

    return-object v0
.end method
