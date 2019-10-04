.class public final Lc/c/a/e/d/p/a;
.super Ljava/lang/Object;
.source "ReportAppRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/p/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/p/a/a;)V
    .locals 1

    const-string v0, "reportAppRemote"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/p/a;->a:Lc/c/a/e/d/p/a/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/p/a;->a:Lc/c/a/e/d/p/a/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/c/a/e/d/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
