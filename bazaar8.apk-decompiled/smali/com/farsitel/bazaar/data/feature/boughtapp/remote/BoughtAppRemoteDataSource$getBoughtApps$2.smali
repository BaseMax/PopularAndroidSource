.class public final Lcom/farsitel/bazaar/data/feature/boughtapp/remote/BoughtAppRemoteDataSource$getBoughtApps$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BoughtAppRemoteDataSource.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/e/a/b;->a(Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lc/c/a/e/d/e/a/e;",
        "Ljava/util/List<",
        "+",
        "Lcom/farsitel/bazaar/common/model/page/ListItem$App;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/farsitel/bazaar/data/feature/boughtapp/remote/BoughtAppRemoteDataSource$getBoughtApps$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/data/feature/boughtapp/remote/BoughtAppRemoteDataSource$getBoughtApps$2;

    invoke-direct {v0}, Lcom/farsitel/bazaar/data/feature/boughtapp/remote/BoughtAppRemoteDataSource$getBoughtApps$2;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/data/feature/boughtapp/remote/BoughtAppRemoteDataSource$getBoughtApps$2;->a:Lcom/farsitel/bazaar/data/feature/boughtapp/remote/BoughtAppRemoteDataSource$getBoughtApps$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/e/d/e/a/e;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/boughtapp/remote/BoughtAppRemoteDataSource$getBoughtApps$2;->a(Lc/c/a/e/d/e/a/e;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/c/a/e/d/e/a/e;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/e/d/e/a/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem$App;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lc/c/a/e/d/e/a/e;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lc/c/a/e/d/e/a/a;

    .line 6
    invoke-virtual {v1}, Lc/c/a/e/d/e/a/a;->a()Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method
