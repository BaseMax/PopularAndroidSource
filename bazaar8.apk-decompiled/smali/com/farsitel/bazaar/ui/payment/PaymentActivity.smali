.class public final Lcom/farsitel/bazaar/ui/payment/PaymentActivity;
.super Lc/c/a/d/f/b;
.source "PaymentActivity.kt"

# interfaces
.implements Lc/c/a/n/s/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;
    }
.end annotation


# static fields
.field public static final w:Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->w:Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/ui/payment/PaymentActivity;ILandroid/content/Intent;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->a(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    sget-object v0, Lc/c/a/d/f/a/a/a;->sa:Lc/c/a/d/f/a/a/a$a;

    const v1, 0x7f100211

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "getString(R.string.update_dialog_description)"

    invoke-static {v2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f10020c

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f10004c

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5
    invoke-static/range {v0 .. v6}, Lc/c/a/d/f/a/a/a$a;->a(Lc/c/a/d/f/a/a/a$a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lc/c/a/d/f/a/a/a;

    move-result-object v0

    .line 6
    new-instance v1, Lc/c/a/n/s/b;

    invoke-direct {v1, v0, p0}, Lc/c/a/n/s/b;-><init>(Lc/c/a/d/f/a/a/a;Lcom/farsitel/bazaar/ui/payment/PaymentActivity;)V

    invoke-virtual {v0, v1}, Lc/c/a/d/f/l;->a(Lc/c/a/d/f/r;)V

    .line 7
    invoke-virtual {p0}, Lb/o/a/i;->r()Lb/o/a/n;

    move-result-object v1

    const-string v2, "supportFragmentManager"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    return-void
.end method

.method public final a(ILandroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->finish()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->a(ILandroid/content/Intent;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "INAPP_PURCHASE_DATA"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "INAPP_DATA_SIGNATURE"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    const-string p1, "RESPONSE_CODE"

    .line 5
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    const v1, 0x10a0001

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public o()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p0, v1, v0, v2, v0}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->a(Lcom/farsitel/bazaar/ui/payment/PaymentActivity;ILandroid/content/Intent;ILjava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 2
    invoke-super {p0, p1}, Ld/a/a/b;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001e

    .line 3
    invoke-virtual {p0, p1}, Lb/b/a/m;->setContentView(I)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "RESPONSE_CODE"

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
