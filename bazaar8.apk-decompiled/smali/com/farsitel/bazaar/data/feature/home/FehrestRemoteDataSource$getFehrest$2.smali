.class public final Lcom/farsitel/bazaar/data/feature/home/FehrestRemoteDataSource$getFehrest$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FehrestRemoteDataSource.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/j/a;->a(Ljava/lang/String;ILjava/lang/String;Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lcom/farsitel/bazaar/data/dto/responsedto/FehrestResponseDto;",
        "Lcom/farsitel/bazaar/data/entity/FehrestTabPage;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $offset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/farsitel/bazaar/data/feature/home/FehrestRemoteDataSource$getFehrest$2;->$offset:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/dto/responsedto/FehrestResponseDto;)Lcom/farsitel/bazaar/data/entity/FehrestTabPage;
    .locals 3

    const-string v0, "fehrestResponse"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/dto/responsedto/FehrestResponseDto;->getPages()Ljava/util/List;

    move-result-object p1

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
    check-cast v1, Lcom/farsitel/bazaar/data/dto/responsedto/SinglePage;

    .line 6
    iget v2, p0, Lcom/farsitel/bazaar/data/feature/home/FehrestRemoteDataSource$getFehrest$2;->$offset:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/farsitel/bazaar/data/dto/responsedto/SinglePage;->toPage(Z)Lcom/farsitel/bazaar/common/model/Page;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/farsitel/bazaar/data/entity/FehrestTabPage;

    invoke-direct {p1, v0}, Lcom/farsitel/bazaar/data/entity/FehrestTabPage;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/dto/responsedto/FehrestResponseDto;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/home/FehrestRemoteDataSource$getFehrest$2;->a(Lcom/farsitel/bazaar/data/dto/responsedto/FehrestResponseDto;)Lcom/farsitel/bazaar/data/entity/FehrestTabPage;

    move-result-object p1

    return-object p1
.end method
