.class public final Lc/c/a/e/d/b/da;
.super Ljava/lang/Object;
.source "UpgradableAppsRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/b/fa;

.field public final b:Lc/c/a/e/d/q/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/b/fa;Lc/c/a/e/d/q/a;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestPropertiesRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/b/da;->a:Lc/c/a/e/d/b/fa;

    iput-object p2, p0, Lc/c/a/e/d/b/da;->b:Lc/c/a/e/d/q/a;

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/InstalledApp;",
            ">;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/entity/UpgradableApps;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/da;->b:Lc/c/a/e/d/q/a;

    invoke-virtual {v0}, Lc/c/a/e/d/q/a;->a()Lcom/farsitel/bazaar/data/entity/RequestProperties;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lc/c/a/e/f/g;->a(Ljava/util/List;ILcom/farsitel/bazaar/data/entity/RequestProperties;)Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lc/c/a/e/d/b/da;->a:Lc/c/a/e/d/b/fa;

    invoke-interface {p2, p1}, Lc/c/a/e/d/b/fa;->a(Lcom/farsitel/bazaar/data/dto/requestdto/GetUpgradableAppsRequestDto;)Ll/b;

    move-result-object p1

    sget-object p2, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppsRemoteDataSource$getUpgradableApps$2;->a:Lcom/farsitel/bazaar/data/feature/app/UpgradableAppsRemoteDataSource$getUpgradableApps$2;

    invoke-static {p1, p2, p3}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
