.class public final Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;
.super Lc/c/a/d/f/i;
.source "LoginWithEmailFragment.kt"


# static fields
.field public static final synthetic ga:[Lh/i/i;


# instance fields
.field public ha:Lc/c/a/n/p/a/a/e;

.field public ia:Ljava/lang/String;

.field public final ja:Lh/g/c;

.field public ka:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "waitingTime"

    const-string v4, "getWaitingTime()J"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lh/i/g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->ga:[Lh/i/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/i;-><init>()V

    .line 2
    sget-object v0, Lh/g/a;->a:Lh/g/a;

    invoke-virtual {v0}, Lh/g/a;->a()Lh/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->ja:Lh/g/c;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->ia:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "email"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->ia:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;)Lc/c/a/n/p/a/a/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->ha:Lc/c/a/n/p/a/a/e;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->Ua()V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->ka:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final Sa()V
    .locals 3

    .line 1
    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const-string v1, "proceedBtn"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lc/c/a/e;->emailEditText:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v2, "emailEditText"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/c/a/c/b/i;->d(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setEnabled(Z)V

    .line 2
    sget v0, Lc/c/a/e;->emailEditText:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lc/c/a/n/p/a/a/a;

    invoke-direct {v1, p0}, Lc/c/a/n/p/a/a/a;-><init>(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 3
    sget v0, Lc/c/a/e;->emailEditText:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lc/c/a/n/p/a/a/b;

    invoke-direct {v1, p0}, Lc/c/a/n/p/a/a/b;-><init>(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final Ta()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->Ua()V

    .line 2
    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    return-void
.end method

.method public final Ua()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/e;->emailInputLayout:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "emailInputLayout"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0057

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)V
    .locals 3

    .line 18
    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->Ua()V

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->b(J)V

    .line 21
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 22
    sget-object v1, Lc/c/a/n/p/a/a/d;->a:Lc/c/a/n/p/a/a/d$b;

    .line 23
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->ia:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {v1, v2, p1, p2}, Lc/c/a/n/p/a/a/d$b;->a(Ljava/lang/String;J)Lb/w/p;

    move-result-object p1

    .line 25
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void

    :cond_0
    const-string p1, "email"

    .line 26
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->Sa()V

    .line 7
    sget p1, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/LoadingButton;

    new-instance p2, Lc/c/a/n/p/a/a/c;

    invoke-direct {p2, p0}, Lc/c/a/n/p/a/a/c;-><init>(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;)V

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/widget/LoadingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->a(J)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1

    .line 10
    :cond_1
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v0

    instance-of v0, v0, Lcom/farsitel/bazaar/data/entity/InvalidEmailException;

    if-eqz v0, :cond_2

    const p1, 0x7f100236

    .line 12
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "if (resource.failure is \u2026re)\n                    }"

    .line 14
    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_3
    sget-object p1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->Ta()V

    goto :goto_1

    .line 17
    :cond_4
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Illegal State in handleResourceState"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final b(J)V
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->ja:Lh/g/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->ga:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lh/g/c;->a(Ljava/lang/Object;Lh/i/i;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class v0, Lc/c/a/n/p/a/a/e;

    invoke-virtual {p1, v0}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    check-cast p1, Lc/c/a/n/p/a/a/e;

    .line 6
    invoke-virtual {p1}, Lc/c/a/n/p/a/a/e;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment$onActivityCreated$1$1;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment$onActivityCreated$1$1;-><init>(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;)V

    invoke-static {p0, v0, v1}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 7
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->ha:Lc/c/a/n/p/a/a/e;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 2
    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    .line 3
    sget v0, Lc/c/a/e;->emailInputLayout:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "emailInputLayout"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 4
    sget v0, Lc/c/a/e;->emailInputLayout:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->ka:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->ka:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->ka:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->ka:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/d/f/i;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->La()V

    return-void
.end method
