.class public final Lc/c/a/e/d/l/d;
.super Ljava/lang/Object;
.source "InstalledAppRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/l/b;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/l/b;)V
    .locals 1

    const-string v0, "installedAppLocalDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/l/d;->a:Lc/c/a/e/d/l/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Locale;)Lcom/farsitel/bazaar/data/entity/Either;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;>;"
        }
    .end annotation

    const-string v0, "locale"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/l/d;->a:Lc/c/a/e/d/l/b;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/l/b;->a(Ljava/util/Locale;)Lcom/farsitel/bazaar/data/entity/Either;

    move-result-object p1

    return-object p1
.end method
