.class public final Lc/c/a/n/h/e;
.super Lc/c/a/n/c/d/f;
.source "ChildCategoryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/h/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/f<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Ljava/util/ArrayList<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;",
        "Lc/c/a/n/h/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final wa:Lc/c/a/n/h/e$a;


# instance fields
.field public Aa:Ljava/util/HashMap;

.field public xa:I

.field public ya:Z

.field public final za:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/h/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/h/e$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/h/e;->wa:Lc/c/a/n/h/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/f;-><init>()V

    const v0, 0x7f0d0063

    .line 2
    iput v0, p0, Lc/c/a/n/h/e;->xa:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/c/a/n/h/e;->za:Z

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lc/c/a/n/h/e;->Aa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/CategoriesScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/CategoriesScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/CategoriesScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/h/e;->Sa()Lcom/farsitel/bazaar/analytics/model/where/CategoriesScreen;

    move-result-object v0

    return-object v0
.end method

.method public Ta()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/h/e;->za:Z

    return v0
.end method

.method public bridge synthetic Ua()Lc/c/a/n/c/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/h/e;->Ua()Lc/c/a/n/h/b;

    move-result-object v0

    return-object v0
.end method

.method public Ua()Lc/c/a/n/h/b;
    .locals 1

    .line 2
    new-instance v0, Lc/c/a/n/h/b;

    invoke-direct {v0}, Lc/c/a/n/h/b;-><init>()V

    return-object v0
.end method

.method public Xa()Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/h/e;->xa:I

    return v0
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/h/e;->Za()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public Za()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "categories"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.farsitel.bazaar.common.model.RecyclerData> /* = java.util.ArrayList<com.farsitel.bazaar.common.model.RecyclerData> */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/n/h/f;

    invoke-direct {v0, p0}, Lc/c/a/n/h/f;-><init>(Lc/c/a/n/h/e;)V

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->a(Lc/c/a/n/c/d/m;)V

    .line 2
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/f;->a(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 5
    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    .line 6
    check-cast p1, Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;->getSlug()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 7
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;->getReferrer()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 9
    invoke-static/range {v1 .. v7}, Lc/c/a/d$l;->a(Lc/c/a/d$l;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    .line 10
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lc/c/a/n/h/e;->Aa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/n/h/e;->Aa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lc/c/a/n/h/e;->Aa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/n/h/e;->Aa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public hb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/h/e;->ya:Z

    return v0
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/h/e;->jb()Lc/c/a/n/h/g;

    move-result-object v0

    return-object v0
.end method

.method public jb()Lc/c/a/n/h/g;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/h/g;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/h/g;

    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/d/f;->qa()V

    invoke-virtual {p0}, Lc/c/a/n/h/e;->La()V

    return-void
.end method
