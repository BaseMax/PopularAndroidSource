.class public final Lc/c/a/e/d/j/a;
.super Ljava/lang/Object;
.source "FehrestRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/j/e;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/j/e;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/j/a;->a:Lc/c/a/e/d/j/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;)Lcom/farsitel/bazaar/data/dto/requestdto/GetFehrestRequest;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/data/dto/requestdto/GetFehrestRequest;

    invoke-static {p3}, Lc/c/a/c/b/i;->g(Ljava/lang/String;)Lc/e/d/m;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lcom/farsitel/bazaar/data/dto/requestdto/GetFehrestRequest;-><init>(Ljava/lang/String;ILc/e/d/m;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/entity/FehrestTabPage;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/j/a;->a:Lc/c/a/e/d/j/e;

    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/e/d/j/a;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/farsitel/bazaar/data/dto/requestdto/GetFehrestRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Lc/c/a/e/d/j/e;->a(Lcom/farsitel/bazaar/data/dto/requestdto/GetFehrestRequest;)Ll/b;

    move-result-object p1

    new-instance p3, Lcom/farsitel/bazaar/data/feature/home/FehrestRemoteDataSource$getFehrest$2;

    invoke-direct {p3, p2}, Lcom/farsitel/bazaar/data/feature/home/FehrestRemoteDataSource$getFehrest$2;-><init>(I)V

    invoke-static {p1, p3, p4}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
