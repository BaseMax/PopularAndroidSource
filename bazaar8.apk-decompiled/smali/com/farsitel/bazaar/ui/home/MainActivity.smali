.class public final Lcom/farsitel/bazaar/ui/home/MainActivity;
.super Lc/c/a/d/f/b;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/home/MainActivity$a;
    }
.end annotation


# static fields
.field public static final w:Lcom/farsitel/bazaar/ui/home/MainActivity$a;


# instance fields
.field public A:Lc/c/a/e/d/a/a;

.field public B:Lc/c/a/n/i/h;

.field public C:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lb/w/j;",
            ">;"
        }
    .end annotation
.end field

.field public D:Lc/c/a/n/y/a;

.field public E:Lc/c/a/n/A/k;

.field public F:Lcom/google/android/material/snackbar/Snackbar;

.field public G:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public H:Lc/c/a/d/a/d;

.field public I:Lc/c/a/b/e/b;

.field public J:Ljava/util/HashMap;

.field public x:Lc/c/a/e/d/i/r;

.field public y:Lc/c/a/n/r/a/d;

.field public z:Lc/c/a/n/x/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/ui/home/MainActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/home/MainActivity$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/home/MainActivity;->w:Lcom/farsitel/bazaar/ui/home/MainActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/home/MainActivity;)Lc/c/a/b/e/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->I:Lc/c/a/b/e/b;

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/home/MainActivity;Landroid/content/Intent;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/home/MainActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/home/MainActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/home/MainActivity;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/home/MainActivity;Lc/c/a/d/a/d;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->H:Lc/c/a/d/a/d;

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/home/MainActivity;)Lc/c/a/d/a/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->H:Lc/c/a/d/a/d;

    return-object p0
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/home/MainActivity;Landroid/content/Intent;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/home/MainActivity;->d(Landroid/content/Intent;)V

    return-void
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/home/MainActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/home/MainActivity;->G()V

    return-void
.end method


# virtual methods
.method public final C()Lc/c/a/n/m/e;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/m/e;

    invoke-direct {v0, p0}, Lc/c/a/n/m/e;-><init>(Lcom/farsitel/bazaar/ui/home/MainActivity;)V

    return-object v0
.end method

.method public final D()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->G:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method

.method public final E()Lc/c/a/n/x/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->z:Lc/c/a/n/x/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "settingViewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final F()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/b;->A()Lb/r/F$b;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lb/r/G;->a(Lb/o/a/i;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/y/a;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast v0, Lc/c/a/n/y/a;

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->D:Lc/c/a/n/y/a;

    return-void
.end method

.method public final G()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/b;->A()Lb/r/F$b;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lb/r/G;->a(Lb/o/a/i;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/A/k;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast v0, Lc/c/a/n/A/k;

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->E:Lc/c/a/n/A/k;

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->E:Lc/c/a/n/A/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/A/k;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lc/c/a/n/m/h;

    invoke-direct {v1, p0}, Lc/c/a/n/m/h;-><init>(Lcom/farsitel/bazaar/ui/home/MainActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-void

    :cond_0
    const-string v0, "upgradableBadgeViewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "upIntent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->I:Lc/c/a/b/e/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/c/a/b/e/b;->u()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    const v0, 0x7f0d001d

    .line 5
    invoke-static {p0, v0}, Lb/l/g;->a(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    const v0, 0x7f0a02e0

    .line 6
    invoke-virtual {p0, v0}, Lb/b/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->G:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 7
    new-instance v0, Lc/c/a/b/e/b;

    .line 8
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->A:Lc/c/a/e/d/a/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    sget-object v3, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    invoke-virtual {v3, p0}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object v3

    invoke-virtual {v3}, Lc/c/a/e/d/u/a;->n()Ljava/util/Locale;

    move-result-object v3

    .line 9
    invoke-direct {v0, p0, v1, v3}, Lc/c/a/b/e/b;-><init>(Lcom/farsitel/bazaar/ui/home/MainActivity;Lc/c/a/e/d/a/a;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->I:Lc/c/a/b/e/b;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 11
    new-instance v1, Lc/c/a/n/m/g;

    invoke-direct {v1, p0, p1}, Lc/c/a/n/m/g;-><init>(Lcom/farsitel/bazaar/ui/home/MainActivity;Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 13
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->y:Lc/c/a/n/r/a/d;

    const-string v0, "bazaarKidsViewModel"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lc/c/a/n/r/a/d;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->y:Lc/c/a/n/r/a/d;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lc/c/a/n/r/a/d;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f10003c

    goto :goto_0

    :cond_0
    const p1, 0x7f10003b

    .line 15
    :goto_0
    invoke-virtual {p0}, Lc/c/a/d/f/b;->z()Lc/c/a/d/d/c;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->y:Lc/c/a/n/r/a/d;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc/c/a/n/r/a/d;->e()V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_2
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    return-void

    .line 18
    :cond_4
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string p1, "accountRepository"

    .line 19
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->G:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 21
    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->m()V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->F:Lcom/google/android/material/snackbar/Snackbar;

    :cond_1
    return-void
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    const-string v1, "intent_source"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->I:Lc/c/a/b/e/b;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0, p1}, Lc/c/a/b/e/b;->a(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2

    .line 7
    :cond_4
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navigationManager is null in handleIntent, intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public d(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->J:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->J:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->J:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lb/b/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->J:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final d(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->H:Lc/c/a/d/a/d;

    if-nez p1, :cond_2

    .line 3
    new-instance p1, Lc/c/a/d/a/d;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/home/MainActivity;->C()Lc/c/a/n/m/e;

    move-result-object v1

    invoke-direct {p1, v1}, Lc/c/a/d/a/d;-><init>(Lc/c/a/d/a/c;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->H:Lc/c/a/d/a/d;

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->H:Lc/c/a/d/a/d;

    if-eqz p1, :cond_9

    sget-object v1, Lcom/farsitel/bazaar/core/app/Permission;->ACCESS_COARSE_LOCATION:Lcom/farsitel/bazaar/core/app/Permission;

    invoke-virtual {p1, v1, p0}, Lc/c/a/d/a/d;->a(Lcom/farsitel/bazaar/core/app/Permission;Landroid/app/Activity;)Z

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->z:Lc/c/a/n/x/a;

    const-string v2, "settingViewModel"

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lc/c/a/n/x/a;->e()Z

    move-result v1

    .line 6
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->z:Lc/c/a/n/x/a;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lc/c/a/n/x/a;->p()Z

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->H:Lc/c/a/d/a/d;

    if-eqz v3, :cond_6

    sget-object v0, Lcom/farsitel/bazaar/core/app/Permission;->ACCESS_COARSE_LOCATION:Lcom/farsitel/bazaar/core/app/Permission;

    invoke-virtual {v3, v0, p0}, Lc/c/a/d/a/d;->b(Lcom/farsitel/bazaar/core/app/Permission;Landroid/app/Activity;)Z

    move-result v0

    .line 8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_3

    .line 9
    sget-object p1, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    invoke-virtual {p1, p0}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lc/c/a/e/d/u/a;->c(Z)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_4

    if-eqz v0, :cond_5

    .line 10
    :cond_4
    new-instance p1, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;

    invoke-direct {p1}, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;-><init>()V

    .line 11
    new-instance v0, Lc/c/a/n/m/f;

    invoke-direct {v0, p0}, Lc/c/a/n/m/f;-><init>(Lcom/farsitel/bazaar/ui/home/MainActivity;)V

    invoke-virtual {p1, v0}, Lc/c/a/d/f/l;->a(Lc/c/a/d/f/r;)V

    .line 12
    invoke-virtual {p0}, Lb/o/a/i;->r()Lb/o/a/n;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    :cond_5
    :goto_1
    return-void

    .line 13
    :cond_6
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0

    .line 14
    :cond_7
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_8
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_9
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0
.end method

.method public onBackPressed()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->G:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lb/o/a/i;->r()Lb/o/a/n;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/o/a/n;->c()Ljava/util/List;

    move-result-object v0

    const-string v1, "supportFragmentManager.fragments"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v2, "parent"

    .line 5
    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v1

    const-string v2, "parent.childFragmentManager"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lb/o/a/n;->c()Ljava/util/List;

    move-result-object v1

    const-string v2, "parent.childFragmentManager.fragments"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    const-string v3, "child"

    .line 7
    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->ma()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v3

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->I:Lc/c/a/b/e/b;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lc/c/a/b/e/b;->a()Lb/w/j;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 8
    instance-of v3, v2, Lc/c/a/d/f/o;

    if-eqz v3, :cond_2

    check-cast v2, Lc/c/a/d/f/o;

    invoke-virtual {v2}, Lc/c/a/d/f/o;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->I:Lc/c/a/b/e/b;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lc/c/a/b/e/b;->t()V

    :cond_6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ld/a/a/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/home/MainActivity;->F()V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->D:Lc/c/a/n/y/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lc/c/a/n/y/a;->h()Z

    move-result v0

    const-string v2, "supportFragmentManager"

    if-eqz v0, :cond_0

    new-instance p1, Lc/c/a/n/i/f;

    invoke-direct {p1}, Lc/c/a/n/i/f;-><init>()V

    .line 4
    invoke-virtual {p0}, Lb/o/a/i;->r()Lb/o/a/n;

    move-result-object v0

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->B:Lc/c/a/n/i/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/c/a/n/i/h;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;

    invoke-direct {v0}, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;-><init>()V

    .line 8
    new-instance v1, Lc/c/a/n/m/i;

    invoke-direct {v1, p0, p1}, Lc/c/a/n/m/i;-><init>(Lcom/farsitel/bazaar/ui/home/MainActivity;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lc/c/a/d/f/l;->a(Lc/c/a/d/f/r;)V

    .line 9
    invoke-virtual {p0}, Lb/o/a/i;->r()Lb/o/a/n;

    move-result-object p1

    invoke-static {p1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/home/MainActivity;->a(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_2
    const-string p1, "releaseNoteViewModel"

    .line 11
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "bazaarForceUpdateViewModel"

    .line 12
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb/o/a/i;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/home/MainActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lc/c/a/d/f/b;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->x:Lc/c/a/e/d/i/r;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lc/c/a/e/d/i/r;->a(Landroid/app/Activity;)V

    return-void

    :cond_0
    const-string v0, "networkManager"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Lb/o/a/i;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->H:Lc/c/a/d/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p0}, Lc/c/a/d/a/d;->a(I[Ljava/lang/String;[ILandroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->I:Lc/c/a/b/e/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/c/a/b/e/b;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lc/c/a/d/f/b;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->x:Lc/c/a/e/d/i/r;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lc/c/a/e/d/i/r;->b(Landroid/app/Activity;)V

    return-void

    :cond_0
    const-string v0, "networkManager"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onStart()V
    .locals 5

    .line 1
    invoke-super {p0}, Lb/b/a/m;->onStart()V

    .line 2
    sget-object v0, Lc/c/a/a/a;->c:Lc/c/a/a/a;

    new-instance v1, Lc/c/a/a/a/a;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/Maximize;

    invoke-direct {v2}, Lcom/farsitel/bazaar/analytics/model/what/Maximize;-><init>()V

    new-instance v3, Lcom/farsitel/bazaar/analytics/model/where/WholeApplication;

    invoke-direct {v3}, Lcom/farsitel/bazaar/analytics/model/where/WholeApplication;-><init>()V

    const-string v4, "user"

    invoke-direct {v1, v4, v2, v3}, Lc/c/a/a/a/a;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;)V

    invoke-virtual {v0, v1}, Lc/c/a/a/a;->a(Lc/c/a/a/a/a;)V

    return-void
.end method

.method public onStop()V
    .locals 5

    .line 1
    sget-object v0, Lc/c/a/a/a;->c:Lc/c/a/a/a;

    new-instance v1, Lc/c/a/a/a/a;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/Minimize;

    invoke-direct {v2}, Lcom/farsitel/bazaar/analytics/model/what/Minimize;-><init>()V

    new-instance v3, Lcom/farsitel/bazaar/analytics/model/where/WholeApplication;

    invoke-direct {v3}, Lcom/farsitel/bazaar/analytics/model/where/WholeApplication;-><init>()V

    const-string v4, "user"

    invoke-direct {v1, v4, v2, v3}, Lc/c/a/a/a/a;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;)V

    invoke-virtual {v0, v1}, Lc/c/a/a/a;->a(Lc/c/a/a/a/a;)V

    .line 2
    invoke-super {p0}, Lb/b/a/m;->onStop()V

    return-void
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/home/MainActivity;->C:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/w/j;->h()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
