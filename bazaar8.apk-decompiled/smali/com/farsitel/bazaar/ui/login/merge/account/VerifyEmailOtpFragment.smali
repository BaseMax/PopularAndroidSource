.class public final Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;
.super Lc/c/a/d/f/i;
.source "VerifyEmailOtpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment$a;
    }
.end annotation


# static fields
.field public static final synthetic ga:[Lh/i/i;

.field public static final ha:Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment$a;


# instance fields
.field public ia:Lc/c/a/n/p/a/a/p;

.field public ja:Ljava/lang/String;

.field public final ka:Lh/g/c;

.field public la:Landroid/os/CountDownTimer;

.field public ma:Lc/c/a/n/p/a/a/n;

.field public na:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "waitingTime"

    const-string v4, "getWaitingTime()J"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lh/i/g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ga:[Lh/i/i;

    new-instance v0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ha:Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment$a;

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

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ka:Lh/g/c;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->Sa()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->Ua()V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->b(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->Va()V

    return-void
.end method

.method public static final synthetic d(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->Ya()V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->na:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final Sa()V
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

    const v2, 0x7f1001a2

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

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_1

    .line 8
    invoke-static {v1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final Ta()J
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ka:Lh/g/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ga:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lh/g/c;->a(Ljava/lang/Object;Lh/i/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Ua()V
    .locals 4

    .line 1
    sget v0, Lc/c/a/e;->verificationCodeEditText:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v1, "verificationCodeEditText"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ia:Lc/c/a/n/p/a/a/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ja:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3, v0}, Lc/c/a/n/p/a/a/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "emailAddress"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public final Va()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ia:Lc/c/a/n/p/a/a/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ja:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Lc/c/a/n/p/a/a/p;->a(Ljava/lang/String;)Li/a/ra;

    return-void

    :cond_0
    const-string v0, "emailAddress"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final Wa()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    return-void
.end method

.method public final Xa()V
    .locals 4

    .line 1
    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    .line 2
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 3
    sget-object v1, Lc/c/a/n/p/a/a/o;->a:Lc/c/a/n/p/a/a/o$a;

    .line 4
    sget-object v2, Lcom/farsitel/bazaar/common/model/login/LoginType;->MERGE_ACCOUNT:Lcom/farsitel/bazaar/common/model/login/LoginType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, ""

    .line 5
    invoke-virtual {v1, v3, v2}, Lc/c/a/n/p/a/a/o$a;->a(Ljava/lang/String;I)Lb/w/p;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final Ya()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/e;->verificationCodeInput:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "verificationCodeInput"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-void
.end method

.method public final Za()V
    .locals 7

    .line 1
    new-instance v6, Lc/c/a/n/p/a/a/m;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->Ta()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long v2, v2, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc/c/a/n/p/a/a/m;-><init>(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;JJ)V

    iput-object v6, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->la:Landroid/os/CountDownTimer;

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->la:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d006f

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)V
    .locals 2

    const-wide/16 v0, 0x5

    .line 21
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->b(J)V

    .line 22
    sget p1, Lc/c/a/e;->resendCodeButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, "resendCodeButton"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->Za()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5
    sget-object p1, Lc/c/a/n/p/a/a/n;->a:Lc/c/a/n/p/a/a/n$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const-string v1, "arguments!!"

    invoke-static {p2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lc/c/a/n/p/a/a/n$a;->a(Landroid/os/Bundle;)Lc/c/a/n/p/a/a/n;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ma:Lc/c/a/n/p/a/a/n;

    .line 6
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ma:Lc/c/a/n/p/a/a/n;

    const-string p2, "fragmentArgs"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lc/c/a/n/p/a/a/n;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ja:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ma:Lc/c/a/n/p/a/a/n;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc/c/a/n/p/a/a/n;->b()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->a(J)V

    .line 8
    sget p1, Lc/c/a/e;->verificationMessageTextView:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, "verificationMessageTextView"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f10022e

    const/4 v1, 0x1

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ja:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    aput-object v2, v1, v0

    .line 11
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    sget p1, Lc/c/a/e;->resendCodeButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Lc/c/a/n/p/a/a/i;

    invoke-direct {p2, p0}, Lc/c/a/n/p/a/a/i;-><init>(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    sget p1, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/LoadingButton;

    new-instance p2, Lc/c/a/n/p/a/a/j;

    invoke-direct {p2, p0}, Lc/c/a/n/p/a/a/j;-><init>(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;)V

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/widget/LoadingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    sget p1, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/LoadingButton;

    const-string p2, "proceedBtn"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/widget/LoadingButton;->setEnabled(Z)V

    .line 15
    sget p1, Lc/c/a/e;->verificationCodeEditText:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    new-instance p2, Lc/c/a/n/p/a/a/k;

    invoke-direct {p2, p0}, Lc/c/a/n/p/a/a/k;-><init>(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 16
    sget p1, Lc/c/a/e;->verificationCodeEditText:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    new-instance p2, Lc/c/a/n/p/a/a/l;

    invoke-direct {p2, p0}, Lc/c/a/n/p/a/a/l;-><init>(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_0
    const-string p1, "emailAddress"

    .line 17
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    invoke-static {p2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_2
    invoke-static {p2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_3
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0
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

    .line 24
    sget v0, Lc/c/a/e;->resendCodeButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "resendCodeButton"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 25
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 26
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

    invoke-virtual {p0, v0, v1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->a(J)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1

    .line 27
    :cond_1
    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v0, 0x5

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->a(J)V

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_2
    sget-object p1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lc/c/a/e;->resendCodeButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->b(Landroid/view/View;)V

    goto :goto_0

    .line 31
    :cond_3
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "illegal state in handleResendEmailState"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final b(J)V
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ka:Lh/g/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ga:[Lh/i/i;

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

    const-class v0, Lc/c/a/n/p/a/a/p;

    invoke-virtual {p1, v0}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    check-cast p1, Lc/c/a/n/p/a/a/p;

    .line 7
    invoke-virtual {p1}, Lc/c/a/n/p/a/a/p;->f()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment$onActivityCreated$1$1;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment$onActivityCreated$1$1;-><init>(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;)V

    invoke-static {p0, v0, v1}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 8
    invoke-virtual {p1}, Lc/c/a/n/p/a/a/p;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment$onActivityCreated$1$2;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment$onActivityCreated$1$2;-><init>(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;)V

    invoke-static {p0, v0, v1}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 9
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->ia:Lc/c/a/n/p/a/a/p;

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->Xa()V

    goto :goto_0

    .line 12
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

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object p1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->Wa()V

    goto :goto_0

    .line 14
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

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lc/c/a/e;->verificationCodeInput:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 3
    :cond_0
    sget v0, Lc/c/a/e;->verificationCodeInput:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->na:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->na:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->na:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->na:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public qa()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->la:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2
    :cond_0
    invoke-super {p0}, Lc/c/a/d/f/i;->qa()V

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->La()V

    return-void
.end method
