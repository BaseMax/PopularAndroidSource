.class public final Lcab/snapp/passenger/units/main/a/e$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/main/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/main/a/e;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Lcab/snapp/passenger/units/main/a/f;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/main/a/e;Landroid/view/View;)V
    .locals 3

    .line 316
    iput-object p1, p0, Lcab/snapp/passenger/units/main/a/e$b;->a:Lcab/snapp/passenger/units/main/a/e;

    .line 317
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a01b1

    .line 318
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcab/snapp/passenger/units/main/a/e$b;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 319
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/a/e;->b(Lcab/snapp/passenger/units/main/a/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/main/a/e$b;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 320
    new-instance v0, Lcab/snapp/passenger/units/main/a/f;

    invoke-static {p1}, Lcab/snapp/passenger/units/main/a/e;->c(Lcab/snapp/passenger/units/main/a/e;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcab/snapp/passenger/units/main/a/e;->d(Lcab/snapp/passenger/units/main/a/e;)Lcab/snapp/passenger/units/main/a/e$e;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcab/snapp/passenger/units/main/a/f;-><init>(Ljava/util/List;Lcab/snapp/passenger/units/main/a/e$e;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/main/a/e$b;->c:Lcab/snapp/passenger/units/main/a/f;

    .line 321
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$b;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 322
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_1

    .line 323
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result p1

    const/16 p2, 0x32

    if-eq p1, p2, :cond_1

    .line 324
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result p1

    const/16 p2, 0x28

    if-eq p1, p2, :cond_1

    .line 325
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result p1

    const/16 p2, 0x1e

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$b;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutDirection(I)V

    goto :goto_1

    .line 327
    :cond_1
    :goto_0
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$b;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutDirection(I)V

    .line 334
    :goto_1
    iget-object p1, p0, Lcab/snapp/passenger/units/main/a/e$b;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcab/snapp/passenger/units/main/a/e$b;->c:Lcab/snapp/passenger/units/main/a/f;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public final bindView()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcab/snapp/passenger/units/main/a/e$b;->c:Lcab/snapp/passenger/units/main/a/f;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/a/f;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
