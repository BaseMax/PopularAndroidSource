.class public final Lcom/farsitel/bazaar/ui/base/page/PageFragment$onViewCreated$$inlined$createViewModel$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PageFragment.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/c/n;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lcom/farsitel/bazaar/core/model/Resource<",
        "+",
        "Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;",
        ">;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/n/c/c/n;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/c/n;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/base/page/PageFragment$onViewCreated$$inlined$createViewModel$lambda$1;->this$0:Lc/c/a/n/c/c/n;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/core/model/Resource;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/base/page/PageFragment$onViewCreated$$inlined$createViewModel$lambda$1;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/base/page/PageFragment$onViewCreated$$inlined$createViewModel$lambda$1;->this$0:Lc/c/a/n/c/c/n;

    invoke-static {v0, p1}, Lc/c/a/n/c/c/n;->a(Lc/c/a/n/c/c/n;Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method
