.class public final Lcom/farsitel/bazaar/ui/category/CategoriesFragment$onViewCreated$$inlined$createViewModel$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CategoriesFragment.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;",
        ">;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/category/CategoriesFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$onViewCreated$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/category/CategoriesFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/core/model/Resource;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$onViewCreated$$inlined$createViewModel$lambda$1;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$onViewCreated$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/category/CategoriesFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->a(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;ZILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$onViewCreated$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/category/CategoriesFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->a(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 5
    :goto_0
    sget-object v4, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$onViewCreated$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/category/CategoriesFragment;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->a(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v3

    .line 7
    :cond_2
    sget-object v4, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$onViewCreated$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/category/CategoriesFragment;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {v0, p1, v2}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->a(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;Lcom/farsitel/bazaar/data/entity/ErrorModel;Z)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lh/f/b/j;->a()V

    throw v3

    .line 9
    :cond_4
    sget-object p1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$onViewCreated$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/category/CategoriesFragment;

    invoke-static {p1, v1}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->a(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;Z)V

    :cond_5
    :goto_1
    return-void
.end method
