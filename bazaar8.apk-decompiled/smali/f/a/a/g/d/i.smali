.class public Lf/a/a/g/d/i;
.super Lf/a/a/g/d/a;
.source "PaymentCallListener.java"


# direct methods
.method public constructor <init>(Lf/a/a/e/g;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/g/d/a;-><init>(Lf/a/a/e/g;)V

    .line 2
    iget-object p1, p0, Lf/a/a/g/d/a;->b:Lf/a/a/e/m;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lf/a/a/g/d/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lf/a/a/g/d/a;->b:Lf/a/a/e/m;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lf/a/a/g/d/a;->b()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->g()Lf/a/a/d/f;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lf/a/a/d/f;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Lf/a/a/d/f;->j(Ljava/lang/Object;)Lir/cafebazaar/inline/ux/payment/PaymentInfo;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lf/a/a/g/d/a;->b()Lf/a/a/e/g;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf/a/a/g/d/a/c;->a(Landroid/os/Parcelable;)V

    .line 7
    instance-of v1, v0, Lir/cafebazaar/inline/ux/payment/ResidPaymentInfo;

    if-eqz v1, :cond_0

    .line 8
    invoke-super {p0, p1}, Lf/a/a/g/d/a;->a(Ljava/lang/String;)V

    .line 9
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resid://proceed?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lir/cafebazaar/inline/ux/payment/ResidPaymentInfo;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/payment/ResidPaymentInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "com.farsitel.bazaar"

    .line 11
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0}, Lf/a/a/g/d/a;->b()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lb/o/a/i;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 13
    :cond_0
    instance-of v1, v0, Lir/cafebazaar/inline/ux/payment/iab/IABPaymentInfo;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    instance-of p1, v0, Lir/cafebazaar/inline/ux/IABConsumeInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 16
    invoke-super {p0, p1}, Lf/a/a/g/d/a;->a(Ljava/lang/String;)V

    .line 17
    new-instance p1, Lf/a/a/e/j;

    invoke-virtual {p0}, Lf/a/a/g/d/a;->b()Lf/a/a/e/g;

    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lf/a/a/g/d/a;->b()Lf/a/a/e/g;

    move-result-object v2

    invoke-interface {v2}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v2

    sget v3, Lf/a/a/g;->error_general:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {p0}, Lf/a/a/g/d/a;->b()Lf/a/a/e/g;

    move-result-object v3

    invoke-interface {v3}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v3

    sget v4, Lf/a/a/g;->error_try_again_later:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v2, v3, v0}, Lf/a/a/e/j;-><init>(Lf/a/a/e/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf/a/a/g/c;->f()V

    :cond_2
    :goto_0
    return-void
.end method
