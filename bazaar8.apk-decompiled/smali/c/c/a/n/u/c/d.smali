.class public final Lc/c/a/n/u/c/d;
.super Lc/c/a/n/u/b/g;
.source "ThirdPartyReviewFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/u/c/d$b;,
        Lc/c/a/n/u/c/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/u/b/g<",
        "Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final Ha:Lc/c/a/n/u/c/d$a;


# instance fields
.field public final Ia:Ljava/lang/String;

.field public Ja:Ljava/lang/Long;

.field public Ka:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;

.field public La:Lc/c/a/n/u/c/d$b;

.field public Ma:Ljava/lang/String;

.field public Na:Lc/c/a/f/e;

.field public Oa:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/u/c/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/u/c/d$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/u/c/d;->Ha:Lc/c/a/n/u/c/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/u/b/g;-><init>()V

    const-string v0, "ThirdPartyReview"

    .line 2
    iput-object v0, p0, Lc/c/a/n/u/c/d;->Ia:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/u/c/d;)Lc/c/a/n/u/c/d$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/u/c/d;->La:Lc/c/a/n/u/c/d$b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "communicator"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lc/c/a/n/u/c/d;->Oa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/c/d;->Ia:Ljava/lang/String;

    return-object v0
.end method

.method public _a()Lcom/farsitel/bazaar/analytics/model/where/ThirdPartyReviewScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/ThirdPartyReviewScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/ThirdPartyReviewScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic _a()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/u/c/d;->_a()Lcom/farsitel/bazaar/analytics/model/where/ThirdPartyReviewScreen;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 2
    invoke-static {p1, p2, p3}, Lc/c/a/f/e;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/e;

    move-result-object p1

    const-string p2, "AlertThirdpartReviewBind\u2026flater, container, false)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc/c/a/n/u/c/d;->Na:Lc/c/a/f/e;

    .line 3
    iget-object p1, p0, Lc/c/a/n/u/c/d;->Na:Lc/c/a/f/e;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lb/o/a/d;->Na()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    const p3, 0x7f0801b3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-object p1

    :cond_1
    const-string p1, "dataBinding"

    .line 5
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-super {p0, p1}, Lc/c/a/d/f/g;->a(Landroid/content/Context;)V

    .line 9
    instance-of v0, p1, Lc/c/a/n/u/c/d$b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lc/c/a/n/u/c/d$b;

    if-eqz p1, :cond_1

    .line 10
    iput-object p1, p0, Lc/c/a/n/u/c/d;->La:Lc/c/a/n/u/c/d$b;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string v0, "activity must implement thirdPartyCommunicator"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1, p2}, Lc/c/a/n/u/b/a;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Lc/c/a/n/u/c/d;->rb()V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/u/b/g;->b(Landroid/view/View;)V

    .line 2
    sget-object p1, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lc/c/a/n/u/c/d;->Ma:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0, v1}, Lc/c/a/c/h/e;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/u/c/d;->Ja:Ljava/lang/Long;

    .line 3
    iget-object p1, p0, Lc/c/a/n/u/c/d;->Ja:Ljava/lang/Long;

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lc/c/a/n/u/c/d;->La:Lc/c/a/n/u/c/d$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc/c/a/n/u/c/d$b;->p()V

    return-void

    :cond_0
    const-string p1, "communicator"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_1
    sget p1, Lc/c/a/e;->close:I

    invoke-virtual {p0, p1}, Lc/c/a/n/u/c/d;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lc/c/a/n/u/c/e;

    invoke-direct {v0, p0}, Lc/c/a/n/u/c/e;-><init>(Lc/c/a/n/u/c/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    const-string p1, "packageName"

    .line 6
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public final c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 7
    sget-object v0, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lc/c/a/c/h/e;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lb/o/a/d;->c(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    iput-object p1, p0, Lc/c/a/n/u/c/d;->Ma:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "thirdPartyPendingResult"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;

    if-nez v1, :cond_1

    move-object p1, v0

    :cond_1
    check-cast p1, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;

    iput-object p1, p0, Lc/c/a/n/u/c/d;->Ka:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;

    .line 5
    iget-object p1, p0, Lc/c/a/n/u/c/d;->Ka:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lc/c/a/n/u/b/a;->m(Z)V

    return-void

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "open fragment via newInstance companion method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "Locale.getDefault()"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2}, Lc/c/a/c/h/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f10002a

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.app_name)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lc/c/a/n/u/c/d;->Oa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/n/u/c/d;->Oa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lc/c/a/n/u/c/d;->Oa:Ljava/util/HashMap;

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

    iget-object v1, p0, Lc/c/a/n/u/c/d;->Oa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public ib()V
    .locals 4

    .line 1
    invoke-super {p0}, Lc/c/a/n/u/b/g;->ib()V

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/u/b/g;->nb()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v0, v2, v3, v1}, Lc/c/a/d/b/f;->a(Landroidx/fragment/app/Fragment;IIILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lc/c/a/n/u/c/d;->La:Lc/c/a/n/u/c/d$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/c/a/n/u/c/d$b;->p()V

    return-void

    :cond_0
    const-string v0, "communicator"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public kb()V
    .locals 4

    .line 1
    invoke-super {p0}, Lc/c/a/n/u/b/a;->kb()V

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Ra()Lc/c/a/d/f/r;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;

    invoke-virtual {p0}, Lc/c/a/n/u/b/g;->ob()Landroid/widget/RatingBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getRating()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->eb()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lc/c/a/d/f/r;->a(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lb/o/a/d;->Ma()V

    return-void
.end method

.method public lb()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/u/b/g;->pb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->hb()Lc/c/a/n/u/b/e;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/u/b/g;->ob()Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->eb()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v0, p0, Lc/c/a/n/u/c/d;->Ja:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 6
    sget-object v7, Lcom/farsitel/bazaar/data/entity/EntityType;->APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    .line 7
    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->fb()Z

    move-result v8

    const-string v2, ""

    .line 8
    invoke-virtual/range {v1 .. v8}, Lc/c/a/n/u/b/e;->a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;Z)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    throw v0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lc/c/a/n/u/b/g;->qb()V

    :goto_0
    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/u/b/g;->qa()V

    invoke-virtual {p0}, Lc/c/a/n/u/c/d;->Qa()V

    return-void
.end method

.method public final rb()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/c/d;->Na:Lc/c/a/f/e;

    const-string v1, "dataBinding"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    iget-object v3, p0, Lc/c/a/n/u/c/d;->Ma:Ljava/lang/String;

    const-string v4, "packageName"

    if-eqz v3, :cond_8

    invoke-virtual {p0, v3}, Lc/c/a/n/u/c/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc/c/a/f/e;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/u/c/d;->Na:Lc/c/a/f/e;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lc/c/a/n/u/c/d;->Ma:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {p0, v3}, Lc/c/a/n/u/c/d;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc/c/a/f/e;->a(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lc/c/a/n/u/c/d;->Na:Lc/c/a/f/e;

    if-eqz v0, :cond_5

    const v3, 0x7f100235

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc/c/a/f/e;->c(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lc/c/a/n/u/c/d;->Na:Lc/c/a/f/e;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->hb()Lc/c/a/n/u/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lc/c/a/n/u/b/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc/c/a/f/e;->b(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/c/a/n/u/c/d;->Na:Lc/c/a/f/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->g()V

    .line 6
    iget-object v0, p0, Lc/c/a/n/u/c/d;->Ka:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;

    if-eqz v0, :cond_2

    .line 7
    iget-object v3, p0, Lc/c/a/n/u/c/d;->Na:Lc/c/a/f/e;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lc/c/a/f/e;->I:Landroid/widget/RatingBar;

    const-string v4, "dataBinding.rbPostComment"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;->b()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/RatingBar;->setRating(F)V

    .line 8
    iget-object v3, p0, Lc/c/a/n/u/c/d;->Na:Lc/c/a/f/e;

    if-eqz v3, :cond_0

    iget-object v1, v3, Lc/c/a/f/e;->G:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_1
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    return-void

    .line 10
    :cond_3
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_4
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_5
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_6
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_8
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method
