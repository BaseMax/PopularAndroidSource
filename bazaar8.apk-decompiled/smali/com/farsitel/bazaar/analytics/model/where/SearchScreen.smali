.class public final Lcom/farsitel/bazaar/analytics/model/where/SearchScreen;
.super Lcom/farsitel/bazaar/analytics/model/where/OtherScreens;
.source "OtherScreens.kt"


# instance fields
.field public final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "query"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "search"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/farsitel/bazaar/analytics/model/where/OtherScreens;-><init>(Ljava/lang/String;Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/where/SearchScreen;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/analytics/model/where/SearchScreen;->query:Ljava/lang/String;

    const-string v1, "query"

    invoke-static {v1, v0}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lh/a/z;->a(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method