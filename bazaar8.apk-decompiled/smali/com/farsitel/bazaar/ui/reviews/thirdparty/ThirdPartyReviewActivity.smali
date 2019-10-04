.class public final Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;
.super Ld/a/a/b;
.source "ThirdPartyReviewActivity.kt"

# interfaces
.implements Lc/c/a/n/u/c/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity$a;
    }
.end annotation


# static fields
.field public static final u:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity$a;


# instance fields
.field public final A:Lc/c/a/n/u/c/b;

.field public final v:I

.field public w:Lc/c/a/d/c/b;

.field public x:Lc/c/a/h/b/Vb;

.field public y:Ljava/lang/String;

.field public z:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->u:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld/a/a/b;-><init>()V

    const/16 v0, 0x3f2

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->v:I

    .line 3
    new-instance v0, Lc/c/a/n/u/c/b;

    invoke-direct {v0, p0}, Lc/c/a/n/u/c/b;-><init>(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->A:Lc/c/a/n/u/c/b;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->y:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->z:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 4
    sget-object v0, Lcom/farsitel/bazaar/ui/login/LoginActivity;->w:Lcom/farsitel/bazaar/ui/login/LoginActivity$a;

    iget v1, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->v:I

    sget-object v2, Lcom/farsitel/bazaar/common/model/login/LoginType;->IN_APP_REVIEW:Lcom/farsitel/bazaar/common/model/login/LoginType;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/farsitel/bazaar/ui/login/LoginActivity$a;->a(Lb/o/a/i;ILjava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/c/a/d/g/b;->b:Lc/c/a/d/g/b;

    invoke-virtual {v0, p1}, Lc/c/a/d/g/b;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lb/b/a/m;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lc/c/a/n/u/c/d;->Ha:Lc/c/a/n/u/c/d$a;

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->z:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;

    .line 3
    invoke-virtual {v0, p1, v1}, Lc/c/a/n/u/c/d$a;->a(Ljava/lang/String;Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;)Lc/c/a/n/u/c/d;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->A:Lc/c/a/n/u/c/b;

    invoke-virtual {p1, v0}, Lc/c/a/d/f/l;->a(Lc/c/a/d/f/r;)V

    invoke-virtual {p0}, Lb/o/a/i;->r()Lb/o/a/n;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->z:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;

    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lb/o/a/i;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget p3, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->v:I

    if-ne p1, p3, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->y:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Lb/a/c;->onBackPressed()V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->z:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "packageName"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->z:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ld/a/a/b;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    const v0, 0x7f0d0021

    .line 3
    invoke-virtual {p0, v0}, Lb/b/a/m;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->y:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->y:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 6
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "packageName is null for thirdPartyReview"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->finish()V

    return-void

    :cond_1
    if-nez p1, :cond_6

    .line 8
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->w:Lc/c/a/d/c/b;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lc/c/a/d/c/b;->f()Z

    move-result p1

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->y:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->y:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    :cond_5
    const-string p1, "accountManager"

    .line 11
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->x:Lc/c/a/h/b/Vb;

    if-eqz p1, :cond_7

    .line 13
    invoke-static {p0, p1}, Lb/r/G;->a(Lb/o/a/i;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class v0, Lc/c/a/n/t/a/c;

    invoke-virtual {p1, v0}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    check-cast p1, Lc/c/a/n/t/a/c;

    .line 15
    invoke-virtual {p1}, Lc/c/a/n/t/a/c;->f()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lc/c/a/n/u/c/a;

    invoke-direct {v0, p0}, Lc/c/a/n/u/c/a;-><init>(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-void

    :cond_7
    const-string p1, "viewModelFactory"

    .line 16
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public p()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->finish()V

    return-void
.end method
