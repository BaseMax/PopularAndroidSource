.class public final Lcom/farsitel/bazaar/ui/base/page/container/BasePageContainerFragment$retryLoadData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BasePageContainerFragment.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/c/c/c;->Pa()Lh/f/a/a;
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
.field public final synthetic this$0:Lc/c/a/n/c/c/c/c;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/c/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/base/page/container/BasePageContainerFragment$retryLoadData$1;->this$0:Lc/c/a/n/c/c/c/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/base/page/container/BasePageContainerFragment$retryLoadData$1;->invoke()V

    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/base/page/container/BasePageContainerFragment$retryLoadData$1;->this$0:Lc/c/a/n/c/c/c/c;

    invoke-virtual {v0}, Lc/c/a/n/c/c/c/c;->Xa()Lc/c/a/n/c/c/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/base/page/container/BasePageContainerFragment$retryLoadData$1;->this$0:Lc/c/a/n/c/c/c/c;

    invoke-virtual {v1}, Lc/c/a/n/c/c/c/c;->Wa()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/n/c/c/c/d;->b(Ljava/lang/Object;)V

    return-void
.end method
