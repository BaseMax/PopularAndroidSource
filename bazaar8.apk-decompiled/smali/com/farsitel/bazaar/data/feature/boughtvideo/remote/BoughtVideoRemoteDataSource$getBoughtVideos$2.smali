.class public final Lcom/farsitel/bazaar/data/feature/boughtvideo/remote/BoughtVideoRemoteDataSource$getBoughtVideos$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BoughtVideoRemoteDataSource.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/f/a/b;->a(ILjava/lang/String;Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lc/c/a/e/d/f/a/a;",
        "Ljava/util/List<",
        "+",
        "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/farsitel/bazaar/data/feature/boughtvideo/remote/BoughtVideoRemoteDataSource$getBoughtVideos$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/data/feature/boughtvideo/remote/BoughtVideoRemoteDataSource$getBoughtVideos$2;

    invoke-direct {v0}, Lcom/farsitel/bazaar/data/feature/boughtvideo/remote/BoughtVideoRemoteDataSource$getBoughtVideos$2;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/data/feature/boughtvideo/remote/BoughtVideoRemoteDataSource$getBoughtVideos$2;->a:Lcom/farsitel/bazaar/data/feature/boughtvideo/remote/BoughtVideoRemoteDataSource$getBoughtVideos$2;

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
    check-cast p1, Lc/c/a/e/d/f/a/a;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/boughtvideo/remote/BoughtVideoRemoteDataSource$getBoughtVideos$2;->a(Lc/c/a/e/d/f/a/a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/c/a/e/d/f/a/a;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/e/d/f/a/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lc/c/a/e/d/f/a/a;->a()Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;

    .line 6
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/dto/responsedto/PageRowDto;->toPageTypeItem()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lh/a/q;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
