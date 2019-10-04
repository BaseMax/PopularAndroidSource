.class public final Lcom/farsitel/bazaar/ui/login/RegisterFragment;
.super Lc/c/a/n/c/a/b;
.source "RegisterFragment.kt"


# static fields
.field public static final synthetic ia:[Lh/i/i;


# instance fields
.field public ja:Lc/c/a/n/p/k;

.field public final ka:Lh/c;

.field public la:Lc/c/a/n/p/m;

.field public final ma:Lh/g/c;

.field public na:Lc/c/a/n/p/a;

.field public oa:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/login/RegisterFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "loginType"

    const-string v4, "getLoginType()Lcom/farsitel/bazaar/common/model/login/LoginType;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/login/RegisterFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "waitingTime"

    const-string v4, "getWaitingTime()J"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lh/i/g;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->ia:[Lh/i/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/b;-><init>()V

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/ui/login/RegisterFragment$loginType$2;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment$loginType$2;-><init>(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->ka:Lh/c;

    .line 3
    sget-object v0, Lh/g/a;->a:Lh/g/a;

    invoke-virtual {v0}, Lh/g/a;->a()Lh/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->ma:Lh/g/c;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)Lc/c/a/n/p/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->ja:Lc/c/a/n/p/k;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "args"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/login/RegisterFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/login/RegisterFragment;Ljava/util/List;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->a(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)Lc/c/a/n/p/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->na:Lc/c/a/n/p/a;

    return-object p0
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->Za()V

    return-void
.end method

.method public static final synthetic d(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->bb()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->oa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/RegisterScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/RegisterScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/RegisterScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/RegisterScreen;

    move-result-object v0

    return-object v0
.end method

.method public final Ua()V
    .locals 3

    .line 1
    sget v0, Lc/c/a/e;->phoneEditText:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    new-instance v1, Lc/c/a/n/p/c;

    invoke-direct {v1, p0}, Lc/c/a/n/p/c;-><init>(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2
    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const-string v1, "proceedBtn"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lc/c/a/e;->phoneEditText:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    const-string v2, "phoneEditText"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/c/a/c/b/i;->e(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setEnabled(Z)V

    .line 3
    sget v0, Lc/c/a/e;->phoneEditText:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    new-instance v1, Lc/c/a/n/p/d;

    invoke-direct {v1, p0}, Lc/c/a/n/p/d;-><init>(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final Va()Lcom/farsitel/bazaar/common/model/login/LoginType;
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->ka:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->ia:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/common/model/login/LoginType;

    return-object v0
.end method

.method public final Wa()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lc/c/a/e;->phoneEditText:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Xa()V
    .locals 9

    .line 1
    new-instance v0, Lc/c/a/n/p/e;

    invoke-direct {v0, p0}, Lc/c/a/n/p/e;-><init>(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V

    .line 2
    new-instance v1, Lc/c/a/n/p/f;

    invoke-direct {v1, p0}, Lc/c/a/n/p/f;-><init>(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100188

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1001f3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 7
    new-instance v6, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v6, v7, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    new-instance v2, Lkotlin/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    sget v3, Lc/c/a/e;->privacyAndTerms:I

    invoke-virtual {p0, v3}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "privacyAndTerms"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget v5, Lc/c/a/e;->privacyAndTerms:I

    invoke-virtual {p0, v5}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v5, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 11
    new-array v7, v5, [Lkotlin/Pair;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v6, v7, v2

    invoke-static {v7}, Lh/a/l;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 12
    new-array v5, v5, [Landroid/text/style/ClickableSpan;

    aput-object v1, v5, v8

    aput-object v0, v5, v2

    invoke-static {v5}, Lh/a/l;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-static {v3, v4, v6, v0}, Lc/c/a/i/e;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final Ya()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->Za()V

    .line 2
    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    return-void
.end method

.method public final Za()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/e;->phoneInputLayout:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "phoneInputLayout"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-void
.end method

.method public final _a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->la:Lc/c/a/n/p/m;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lc/c/a/n/p/m;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 3
    :cond_0
    sget-object v0, Lc/c/a/d/f/a/a/a;->sa:Lc/c/a/d/f/a/a/a$a;

    const v1, 0x7f08016a

    const v2, 0x7f100026

    .line 4
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.already_logged_in)"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f10005d

    .line 5
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Lc/c/a/d/f/a/a/a$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/c/a/d/f/a/a/a;

    move-result-object v0

    .line 7
    new-instance v1, Lc/c/a/n/p/g;

    invoke-direct {v1, p0}, Lc/c/a/n/p/g;-><init>(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Lc/c/a/d/f/l;->a(Lc/c/a/d/f/r;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v1

    const-string v2, "childFragmentManager"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/c;->c()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v2

    const-string v0, "requireActivity().onBackPressedDispatcher"

    invoke-static {v2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/farsitel/bazaar/ui/login/RegisterFragment$initUi$2;

    invoke-direct {v5, p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment$initUi$2;-><init>(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lb/a/f;->a(Landroidx/activity/OnBackPressedDispatcher;Lb/r/k;ZLh/f/a/b;ILjava/lang/Object;)Lb/a/d;

    .line 10
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->ab()V

    .line 11
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->Ua()V

    .line 12
    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    new-instance v1, Lc/c/a/n/p/i;

    invoke-direct {v1, p0}, Lc/c/a/n/p/i;-><init>(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->Va()Lcom/farsitel/bazaar/common/model/login/LoginType;

    move-result-object v0

    sget-object v1, Lc/c/a/n/p/b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "messageTextView"

    if-eq v0, v1, :cond_2

    .line 14
    sget v0, Lc/c/a/e;->topImageView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 15
    sget v0, Lc/c/a/e;->messageTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 16
    sget v0, Lc/c/a/e;->loginWithEmailButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 18
    new-instance v1, Lc/c/a/n/p/h;

    invoke-direct {v1, p0}, Lc/c/a/n/p/h;-><init>(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 19
    :cond_2
    sget v0, Lc/c/a/e;->topImageView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f080128

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 20
    sget v0, Lc/c/a/e;->titleTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "titleTextView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 21
    sget v0, Lc/c/a/e;->messageTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 22
    sget v0, Lc/c/a/e;->loginWithEmailButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "loginWithEmailButton"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_3
    const-string v0, "viewModel"

    .line 23
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0064

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)V
    .locals 4

    .line 36
    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->Za()V

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->b(J)V

    .line 39
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 40
    sget-object v1, Lc/c/a/n/p/l;->a:Lc/c/a/n/p/l$b;

    .line 41
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->Wa()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->Va()Lcom/farsitel/bazaar/common/model/login/LoginType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    .line 43
    invoke-virtual {v1, v2, p1, p2, v3}, Lc/c/a/n/p/l$b;->a(Ljava/lang/String;JI)Lb/w/p;

    move-result-object p1

    .line 44
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1}, Lc/c/a/d/f/i;->a(Landroid/content/Context;)V

    .line 6
    instance-of v0, p1, Lc/c/a/n/p/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lc/c/a/n/p/a;

    if-eqz p1, :cond_1

    .line 7
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->na:Lc/c/a/n/p/a;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "this activity must implement FinishLoginCallBack"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object p1

    .line 10
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class p2, Lc/c/a/n/p/m;

    invoke-virtual {p1, p2}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string p2, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    check-cast p1, Lc/c/a/n/p/m;

    .line 12
    invoke-virtual {p1}, Lc/c/a/n/p/m;->e()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lcom/farsitel/bazaar/ui/login/RegisterFragment$onViewCreated$1$1;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment$onViewCreated$1$1;-><init>(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V

    invoke-static {p0, p2, v0}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 13
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->la:Lc/c/a/n/p/m;

    .line 14
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->la:Lc/c/a/n/p/m;

    const/4 p2, 0x0

    const-string v0, "viewModel"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc/c/a/n/p/m;->f()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v1

    new-instance v2, Lc/c/a/n/p/j;

    invoke-direct {v2, p0}, Lc/c/a/n/p/j;-><init>(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V

    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 15
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->la:Lc/c/a/n/p/m;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/c/a/n/p/m;->h()V

    .line 16
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->_a()V

    return-void

    .line 17
    :cond_0
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_1
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2
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

    .line 26
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 27
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

    invoke-virtual {p0, v0, v1}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->a(J)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1

    .line 28
    :cond_1
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v0

    instance-of v0, v0, Lcom/farsitel/bazaar/data/entity/InvalidPhoneNumberException;

    if-eqz v0, :cond_2

    const p1, 0x7f100237

    .line 30
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 31
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

    .line 32
    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_3
    sget-object p1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->Ya()V

    goto :goto_1

    .line 35
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

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    sget v0, Lc/c/a/e;->phoneEditText:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const v2, 0x109000a

    const/4 v3, 0x0

    .line 21
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-direct {v3, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x1

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final ab()V
    .locals 15

    .line 1
    sget-object v0, Lc/c/a/e/d/m/a/c;->c:Lc/c/a/e/d/m/a/c$a;

    invoke-virtual {v0}, Lc/c/a/e/d/m/a/c$a;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->ja:Lc/c/a/n/p/k;

    const/4 v2, 0x0

    const-string v3, "args"

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lc/c/a/n/p/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "titleTextView"

    const-string v4, "dealerInfoGroup"

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lc/c/a/e;->dealerInfoGroup:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    invoke-static {v0, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 3
    sget v0, Lc/c/a/e;->titleTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->Va()Lcom/farsitel/bazaar/common/model/login/LoginType;

    move-result-object v0

    sget-object v5, Lcom/farsitel/bazaar/common/model/login/LoginType;->MERGE_ACCOUNT:Lcom/farsitel/bazaar/common/model/login/LoginType;

    if-ne v0, v5, :cond_1

    .line 5
    sget v0, Lc/c/a/e;->dealerInfoGroup:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    invoke-static {v0, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 6
    sget v0, Lc/c/a/e;->titleTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    return-void

    .line 7
    :cond_1
    sget-object v0, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v5

    const-string v6, "requireContext()"

    invoke-static {v5, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->n()Ljava/util/Locale;

    move-result-object v0

    .line 8
    sget-object v5, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->ja:Lc/c/a/n/p/k;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lc/c/a/n/p/k;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lc/c/a/c/h/e;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 9
    sget-object v5, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->ja:Lc/c/a/n/p/k;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lc/c/a/n/p/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v7, v2, v0}, Lc/c/a/c/h/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_4

    if-eqz v0, :cond_4

    .line 10
    sget v2, Lc/c/a/e;->appIconImageView:I

    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x7

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lb/i/c/a/b;->a(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 11
    sget v2, Lc/c/a/e;->appNameTextView:I

    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v3, "appNameTextView"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    sget v2, Lc/c/a/e;->appSubTitleTextView:I

    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v3, "appSubTitleTextView"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->Va()Lcom/farsitel/bazaar/common/model/login/LoginType;

    move-result-object v3

    sget-object v5, Lc/c/a/n/p/b;->b:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v6, :cond_3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_2

    const-string v0, ""

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f10010c

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f10010b

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    sget v0, Lc/c/a/e;->dealerInfoGroup:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    invoke-static {v0, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 17
    sget v0, Lc/c/a/e;->titleTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    goto :goto_1

    .line 18
    :cond_4
    sget v0, Lc/c/a/e;->dealerInfoGroup:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    invoke-static {v0, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 19
    sget v0, Lc/c/a/e;->titleTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    :goto_1
    return-void

    .line 20
    :cond_5
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 21
    :cond_6
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 22
    :cond_7
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public final b(J)V
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->ma:Lh/g/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->ia:[Lh/i/i;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lh/g/c;->a(Ljava/lang/Object;Lh/i/i;Ljava/lang/Object;)V

    return-void
.end method

.method public final bb()Z
    .locals 7

    .line 1
    sget v0, Lc/c/a/e;->phoneEditText:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    const-string v1, "phoneEditText"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/ProceedRegisterClick;

    invoke-static {v0}, Lc/c/a/c/b/i;->e(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/farsitel/bazaar/analytics/model/what/ProceedRegisterClick;-><init>(Ljava/lang/String;Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    invoke-static {v0}, Lc/c/a/c/b/i;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->la:Lc/c/a/n/p/m;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lc/c/a/n/p/m;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 3
    sget-object p1, Lc/c/a/n/p/k;->a:Lc/c/a/n/p/k$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/p/k$a;->a(Landroid/os/Bundle;)Lc/c/a/n/p/k;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->ja:Lc/c/a/n/p/k;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 6

    .line 4
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/ErrorHappenedEvent;

    invoke-direct {v1, p1}, Lcom/farsitel/bazaar/analytics/model/what/ErrorHappenedEvent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    .line 6
    sget v0, Lc/c/a/e;->phoneInputLayout:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "phoneInputLayout"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 7
    sget v0, Lc/c/a/e;->phoneInputLayout:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final cb()V
    .locals 3

    .line 1
    sget v0, Lc/c/a/e;->privacyAndTerms:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f100186

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.privacy_and_terms_login)"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lc/c/a/c/b/i;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->Xa()V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->oa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->oa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->oa:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->oa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/a/b;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->La()V

    return-void
.end method

.method public ta()V
    .locals 0

    .line 1
    invoke-super {p0}, Lc/c/a/n/c/a/b;->ta()V

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->cb()V

    return-void
.end method
