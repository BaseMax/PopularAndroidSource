.class public final Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;
.super Lb/o/a/z;
.source "CategoriesFragment.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongConstant"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/ui/category/CategoriesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final g:Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Z


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;Ljava/util/List;ZLb/o/a/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lb/o/a/n;",
            ")V"
        }
    .end annotation

    const-string v0, "categoryModel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabTitles"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p4, v0}, Lb/o/a/z;-><init>(Lb/o/a/n;I)V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;->g:Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;->h:Ljava/util/List;

    iput-boolean p3, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;->i:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic a(I)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public c(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;->i:Z

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lc/c/a/n/h/e;->wa:Lc/c/a/n/h/e$a;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;->g:Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;->getGameItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/h/e$a;->a(Ljava/util/ArrayList;)Lc/c/a/n/h/e;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Wrong index for category pager adapter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    sget-object p1, Lc/c/a/n/h/e;->wa:Lc/c/a/n/h/e$a;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;->g:Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;->getAppItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/h/e$a;->a(Ljava/util/ArrayList;)Lc/c/a/n/h/e;

    move-result-object p1

    :goto_0
    return-object p1
.end method
