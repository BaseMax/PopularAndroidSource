.class public final Lcom/farsitel/bazaar/payment/iab/InAppBillingService;
.super Ld/a/f;
.source "InAppBillingService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/payment/iab/InAppBillingService$a;
    }
.end annotation


# static fields
.field public static final a:Z = false

.field public static final b:Lcom/farsitel/bazaar/payment/iab/InAppBillingService$a;


# instance fields
.field public c:Lc/c/a/e/d/a/a;

.field public d:Lc/c/a/e/d/m/d;

.field public e:Lc/c/a/b/f/a/c;

.field public f:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/payment/iab/InAppBillingService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/payment/iab/InAppBillingService$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/payment/iab/InAppBillingService;->b:Lcom/farsitel/bazaar/payment/iab/InAppBillingService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/a/f;-><init>()V

    return-void
.end method

.method public static final synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/farsitel/bazaar/payment/iab/InAppBillingService;->a:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 7

    const-string v0, "intent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bazaar-BillingService, InAppBillingService :: onBind :: intent= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingService;->f:Landroid/os/IBinder;

    if-nez p1, :cond_3

    .line 3
    new-instance p1, Lc/c/a/k/a/a;

    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingService;->c:Lc/c/a/e/d/a/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 6
    iget-object v3, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingService;->d:Lc/c/a/e/d/m/d;

    if-eqz v3, :cond_1

    .line 7
    iget-object v4, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingService;->e:Lc/c/a/b/f/a/c;

    if-eqz v4, :cond_0

    .line 8
    invoke-direct {p1, v0, v1, v3, v4}, Lc/c/a/k/a/a;-><init>(Landroid/content/Context;Lc/c/a/e/d/a/a;Lc/c/a/e/d/m/d;Lc/c/a/b/f/a/c;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingService;->f:Landroid/os/IBinder;

    goto :goto_0

    :cond_0
    const-string p1, "pardakhtNotificationManager"

    .line 9
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p1, "paymentRepository"

    .line 10
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string p1, "accountRepository"

    .line 11
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/farsitel/bazaar/payment/iab/InAppBillingService;->f:Landroid/os/IBinder;

    return-object p1
.end method
