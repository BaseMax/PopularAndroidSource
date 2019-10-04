.class public final Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$appPurchasedLiveData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AppDetailViewModel.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/b/w;-><init>(Landroid/content/Context;Lc/c/a/e/d/c/a;Lc/c/a/e/d/i/j;Lc/c/a/e/d/d/b;Lc/c/a/e/d/b/ba;Lc/c/a/b/d/b;Lc/c/a/b/d/m;Lc/c/a/d/c/b;Lc/c/a/p/I;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Landroidx/lifecycle/LiveData<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/n/b/w;


# direct methods
.method public constructor <init>(Lc/c/a/n/b/w;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$appPurchasedLiveData$2;->this$0:Lc/c/a/n/b/w;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$appPurchasedLiveData$2;->this$0:Lc/c/a/n/b/w;

    invoke-static {v0}, Lc/c/a/n/b/w;->j(Lc/c/a/n/b/w;)Lc/c/a/b/d/m;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$appPurchasedLiveData$2;->this$0:Lc/c/a/n/b/w;

    invoke-virtual {v1}, Lc/c/a/n/b/w;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/b/d/m;->a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$appPurchasedLiveData$2;->invoke()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method
