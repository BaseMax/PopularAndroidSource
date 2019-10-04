.class public final Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$performSearch$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchBoxViewModel.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/w/c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $searchQuery:Ljava/lang/String;

.field public final synthetic this$0:Lc/c/a/n/w/c;


# direct methods
.method public constructor <init>(Lc/c/a/n/w/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$performSearch$1;->this$0:Lc/c/a/n/w/c;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$performSearch$1;->$searchQuery:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$performSearch$1;->invoke()V

    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$performSearch$1;->this$0:Lc/c/a/n/w/c;

    invoke-static {v0}, Lc/c/a/n/w/c;->b(Lc/c/a/n/w/c;)Lb/r/t;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {v0, v1}, Lb/r/t;->a(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$performSearch$1;->this$0:Lc/c/a/n/w/c;

    const/4 v1, 0x1

    invoke-static {v3, v1, v3}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/n/w/c;->a(Lc/c/a/n/w/c;Li/a/ra;)V

    .line 4
    iget-object v4, p0, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$performSearch$1;->this$0:Lc/c/a/n/w/c;

    invoke-static {v4}, Lc/c/a/n/w/c;->a(Lc/c/a/n/w/c;)Lh/c/e;

    move-result-object v5

    new-instance v7, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$performSearch$1$1;

    invoke-direct {v7, p0, v3}, Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$performSearch$1$1;-><init>(Lcom/farsitel/bazaar/ui/search/SearchBoxViewModel$performSearch$1;Lh/c/b;)V

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method
