.class public final Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;
.super Lc/c/a/n/c/a/b;
.source "VerifyOtpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$a;
    }
.end annotation


# static fields
.field public static final synthetic ia:[Lh/i/i;

.field public static final ja:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$a;


# instance fields
.field public ka:Lc/c/a/n/p/A;

.field public la:Ljava/lang/String;

.field public final ma:Lh/g/c;

.field public na:Landroid/os/CountDownTimer;

.field public oa:Lc/c/a/n/p/a;

.field public pa:Lc/c/a/d/d/f;

.field public qa:Lc/c/a/n/p/y;

.field public final ra:Lh/c;

.field public sa:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "waitingTime"

    const-string v4, "getWaitingTime()J"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lh/i/g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "loginType"

    const-string v4, "getLoginType()Lcom/farsitel/bazaar/common/model/login/LoginType;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ia:[Lh/i/i;

    new-instance v0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ja:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/b;-><init>()V

    .line 2
    sget-object v0, Lh/g/a;->a:Lh/g/a;

    invoke-virtual {v0}, Lh/g/a;->a()Lh/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ma:Lh/g/c;

    .line 3
    new-instance v0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$loginType$2;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$loginType$2;-><init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ra:Lh/c;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->Ua()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->k(Z)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)Lc/c/a/n/p/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->oa:Lc/c/a/n/p/a;

    return-object p0
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->b(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)Lc/c/a/n/p/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->qa:Lc/c/a/n/p/y;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "fragmentArgs"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic d(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->Xa()V

    return-void
.end method

.method public static final synthetic e(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->_a()V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->sa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/VerifySmsCodeScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/VerifySmsCodeScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/VerifySmsCodeScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/VerifySmsCodeScreen;

    move-result-object v0

    return-object v0
.end method

.method public final Ua()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ea()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f06005a

    invoke-static {v2, v5}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 5
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    .line 6
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 7
    sget v1, Lc/c/a/e;->resendCodeButton:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    invoke-static {v1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final Va()Lcom/farsitel/bazaar/common/model/login/LoginType;
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ra:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ia:[Lh/i/i;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/common/model/login/LoginType;

    return-object v0
.end method

.method public final Wa()J
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ma:Lh/g/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ia:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lh/g/c;->a(Ljava/lang/Object;Lh/i/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Xa()V
    .locals 6

    .line 1
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/ResendOtpClick;

    invoke-direct {v1}, Lcom/farsitel/bazaar/analytics/model/what/ResendOtpClick;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ka:Lc/c/a/n/p/A;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->la:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lc/c/a/n/p/A;->a(Ljava/lang/String;)Li/a/ra;

    return-void

    :cond_0
    const-string v0, "phoneNumber"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final Ya()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    return-void
.end method

.method public final Za()V
    .locals 8

    .line 1
    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    .line 2
    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/SucceedEvent;

    invoke-direct {v3}, Lcom/farsitel/bazaar/analytics/model/what/SucceedEvent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->Va()Lcom/farsitel/bazaar/common/model/login/LoginType;

    move-result-object v0

    sget-object v1, Lc/c/a/n/p/p;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->oa:Lc/c/a/n/p/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lc/c/a/n/p/a;->m()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ab()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final _a()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/e;->verificationCodeInput:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d006f

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)V
    .locals 2

    const-wide/16 v0, 0x5

    .line 26
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->b(J)V

    .line 27
    sget p1, Lc/c/a/e;->resendCodeButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, "resendCodeButton"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->bb()V

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
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->oa:Lc/c/a/n/p/a;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "this activity must implement FinishLoginCallBack"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object p1

    const-string p2, "requireActivity()"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/c;->c()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    const-string p1, "requireActivity().onBackPressedDispatcher"

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v1

    new-instance v3, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$onViewCreated$1;

    invoke-direct {v3, p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$onViewCreated$1;-><init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lb/a/f;->a(Landroidx/activity/OnBackPressedDispatcher;Lb/r/k;ZLh/f/a/b;ILjava/lang/Object;)Lb/a/d;

    .line 11
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->qa:Lc/c/a/n/p/y;

    const/4 p2, 0x0

    const-string v0, "fragmentArgs"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lc/c/a/n/p/y;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->la:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->qa:Lc/c/a/n/p/y;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc/c/a/n/p/y;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->a(J)V

    .line 13
    sget p1, Lc/c/a/e;->verificationMessageTextView:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "verificationMessageTextView"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f10022f

    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->la:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object p2

    const-string v3, "requireContext()"

    invoke-static {p2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p2}, Lc/c/a/c/b/i;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 16
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    sget p1, Lc/c/a/e;->resendCodeButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Lc/c/a/n/p/r;

    invoke-direct {p2, p0}, Lc/c/a/n/p/r;-><init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    sget p1, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/LoadingButton;

    new-instance p2, Lc/c/a/n/p/s;

    invoke-direct {p2, p0}, Lc/c/a/n/p/s;-><init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/widget/LoadingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    sget p1, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/LoadingButton;

    const-string p2, "proceedBtn"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/farsitel/bazaar/widget/LoadingButton;->setEnabled(Z)V

    .line 20
    sget p1, Lc/c/a/e;->verificationCodeEditText:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    new-instance p2, Lc/c/a/n/p/t;

    invoke-direct {p2, p0}, Lc/c/a/n/p/t;-><init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 21
    sget p1, Lc/c/a/e;->verificationCodeEditText:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    new-instance p2, Lc/c/a/n/p/u;

    invoke-direct {p2, p0}, Lc/c/a/n/p/u;-><init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 22
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->cb()V

    return-void

    :cond_0
    const-string p1, "phoneNumber"

    .line 23
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    .line 24
    :cond_1
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_2
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 29
    sget v0, Lc/c/a/e;->resendCodeButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "resendCodeButton"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 30
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 31
    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->a(J)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1

    .line 32
    :cond_1
    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v0, 0x5

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->a(J)V

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_2
    sget-object p1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lc/c/a/e;->resendCodeButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->b(Landroid/view/View;)V

    goto :goto_0

    .line 36
    :cond_3
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "illegal state in handleResendSmsState"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final ab()V
    .locals 4

    .line 1
    new-instance v0, Lc/c/a/n/p/a/a/h;

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ka:Lc/c/a/n/p/A;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/n/p/A;->e()J

    move-result-wide v1

    .line 3
    new-instance v3, Lc/c/a/n/p/v;

    invoke-direct {v3, p0}, Lc/c/a/n/p/v;-><init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V

    .line 4
    invoke-direct {v0, v1, v2, v3}, Lc/c/a/n/p/a/a/h;-><init>(JLc/c/a/d/f/r;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v1

    const-string v2, "childFragmentManager"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    return-void

    :cond_0
    const-string v0, "viewModel"

    .line 6
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b(J)V
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ma:Lh/g/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ia:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lh/g/c;->a(Ljava/lang/Object;Lh/i/i;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class v0, Lc/c/a/n/p/A;

    invoke-virtual {p1, v0}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    check-cast p1, Lc/c/a/n/p/A;

    .line 7
    invoke-virtual {p1}, Lc/c/a/n/p/A;->g()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$onActivityCreated$1$1;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$onActivityCreated$1$1;-><init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V

    invoke-static {p0, v0, v1}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 8
    invoke-virtual {p1}, Lc/c/a/n/p/A;->f()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$onActivityCreated$1$2;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$onActivityCreated$1$2;-><init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V

    invoke-static {p0, v0, v1}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 9
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ka:Lc/c/a/n/p/A;

    .line 10
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->pa:Lc/c/a/d/d/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/c/a/d/d/f;->a()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v0

    new-instance v1, Lc/c/a/n/p/q;

    invoke-direct {v1, p0}, Lc/c/a/n/p/q;-><init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-void

    :cond_0
    const-string p1, "otpCodeManager"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->Za()V

    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    sget-object p1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->Ya()V

    goto :goto_0

    .line 15
    :cond_2
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "illegal state in handleVerifyCodeState"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final bb()V
    .locals 12

    .line 1
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/StartCountDownTimerEvent;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->Wa()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/farsitel/bazaar/analytics/model/what/StartCountDownTimerEvent;-><init>(J)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    new-instance v0, Lc/c/a/n/p/w;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->Wa()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    mul-long v8, v1, v3

    const-wide/16 v10, 0x3e8

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lc/c/a/n/p/w;-><init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;JJ)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->na:Landroid/os/CountDownTimer;

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->na:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 3
    sget-object p1, Lc/c/a/n/p/y;->a:Lc/c/a/n/p/y$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/p/y$a;->a(Landroid/os/Bundle;)Lc/c/a/n/p/y;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->qa:Lc/c/a/n/p/y;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 4
    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final cb()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lc/e/a/b/b/a/a/a;->a(Landroid/app/Activity;)Lc/e/a/b/b/a/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lc/e/a/b/b/a/a/c;->d()Lc/e/a/b/j/g;

    move-result-object v0

    .line 4
    sget-object v1, Lc/c/a/n/p/x;->a:Lc/c/a/n/p/x;

    invoke-virtual {v0, v1}, Lc/e/a/b/j/g;->a(Lc/e/a/b/j/d;)Lc/e/a/b/j/g;

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 2
    sget v0, Lc/c/a/e;->verificationCodeEditText:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->k(Z)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->sa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->sa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->sa:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->sa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 6

    .line 2
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/ErrorHappenedEvent;

    invoke-direct {v1, p1}, Lcom/farsitel/bazaar/analytics/model/what/ErrorHappenedEvent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    sget v0, Lc/c/a/e;->verificationCodeInput:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 4
    :cond_0
    sget v0, Lc/c/a/e;->verificationCodeInput:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final k(Z)V
    .locals 6

    .line 1
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/VerifyOtpClick;

    invoke-direct {v1, p1}, Lcom/farsitel/bazaar/analytics/model/what/VerifyOtpClick;-><init>(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    sget p1, Lc/c/a/e;->verificationCodeEditText:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v0, "verificationCodeEditText"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ka:Lc/c/a/n/p/A;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->la:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->Va()Lcom/farsitel/bazaar/common/model/login/LoginType;

    move-result-object v1

    invoke-virtual {v0, v2, p1, v1}, Lc/c/a/n/p/A;->a(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;)V

    return-void

    :cond_1
    const-string p1, "phoneNumber"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "viewModel"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public qa()V
    .locals 1

    .line 1
    invoke-super {p0}, Lc/c/a/n/c/a/b;->qa()V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->na:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->La()V

    return-void
.end method

.method public ra()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->ra()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->oa:Lc/c/a/n/p/a;

    return-void
.end method
