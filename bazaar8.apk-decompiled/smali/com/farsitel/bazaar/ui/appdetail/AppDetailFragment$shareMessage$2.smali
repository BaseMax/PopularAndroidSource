.class public final Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$shareMessage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AppDetailFragment.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$shareMessage$2;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$shareMessage$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$shareMessage$2;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->h(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/w;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-result-object v0

    .line 3
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$shareMessage$2;->this$0:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    const/4 v6, 0x0

    aput-object v5, v4, v6

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    aput-object v2, v4, v1

    const v0, 0x7f1001ca

    invoke-virtual {v3, v0, v4}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
