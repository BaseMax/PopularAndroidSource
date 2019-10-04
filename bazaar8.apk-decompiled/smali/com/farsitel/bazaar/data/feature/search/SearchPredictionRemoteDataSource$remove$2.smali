.class public final Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchPredictionRemoteDataSource.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/s/a;->b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lcom/farsitel/bazaar/data/entity/None;",
        "Lh/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$2;

    invoke-direct {v0}, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$2;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$2;->a:Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$2;

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
    check-cast p1, Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$2;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
