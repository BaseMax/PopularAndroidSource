.class public final Lcab/snapp/passenger/f/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/a/b;


# instance fields
.field private a:Lio/reactivex/b/c;

.field private b:Landroid/content/Context;

.field private c:Lcab/snapp/passenger/data_access_layer/a/d;

.field private d:Lcab/snapp/passenger/f/a/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcab/snapp/passenger/data_access_layer/a/d;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcab/snapp/passenger/f/a/a/c;->b:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcab/snapp/passenger/f/a/a/c;->c:Lcab/snapp/passenger/data_access_layer/a/d;

    return-void
.end method

.method private a()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/c;->a:Lio/reactivex/b/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/b/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/c;->a:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    :cond_0
    return-void
.end method

.method private a(Lcab/snapp/passenger/data_access_layer/network/responses/VoucherResponse;)V
    .locals 6

    .line 113
    invoke-direct {p0}, Lcab/snapp/passenger/f/a/a/c;->a()V

    if-eqz p1, :cond_1

    .line 117
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/c;->d:Lcab/snapp/passenger/f/a/a$a;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/VoucherResponse;->getAmount()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcab/snapp/passenger/f/a/a$a;->onPaymentSucceed(J)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/c;->b:Landroid/content/Context;

    const v1, 0x7f1202a0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 125
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/VoucherResponse;->getAmount()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {p1, v4}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Lcab/snapp/passenger/f/a/a/c;->a()V

    .line 78
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    const/16 v1, 0x44e

    if-eqz v0, :cond_3

    .line 80
    check-cast p1, Lcab/snapp/passenger/data_access_layer/a/e;

    .line 81
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/c;->d:Lcab/snapp/passenger/f/a/a$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/c;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v2, 0x3eb

    if-ne v0, v2, :cond_0

    .line 85
    iget-object p1, p0, Lcab/snapp/passenger/f/a/a/c;->d:Lcab/snapp/passenger/f/a/a$a;

    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1202a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcab/snapp/passenger/f/a/a$a;->onPaymentError(Ljava/lang/String;I)V

    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v2, 0x3f9

    if-ne v0, v2, :cond_1

    .line 89
    iget-object p1, p0, Lcab/snapp/passenger/f/a/a/c;->d:Lcab/snapp/passenger/f/a/a$a;

    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1202a2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcab/snapp/passenger/f/a/a$a;->onPaymentError(Ljava/lang/String;I)V

    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/c;->d:Lcab/snapp/passenger/f/a/a$a;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcab/snapp/passenger/f/a/a$a;->onPaymentError(Ljava/lang/String;I)V

    :cond_2
    return-void

    .line 99
    :cond_3
    iget-object p1, p0, Lcab/snapp/passenger/f/a/a/c;->d:Lcab/snapp/passenger/f/a/a$a;

    if-eqz p1, :cond_4

    .line 101
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/c;->b:Landroid/content/Context;

    const v2, 0x7f1200b9

    .line 102
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-interface {p1, v0, v1}, Lcab/snapp/passenger/f/a/a$a;->onPaymentError(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public static synthetic lambda$MrlgpoLFYxrs2D4n3K0OA1yN1O4(Lcab/snapp/passenger/f/a/a/c;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/a/a/c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$_q0LQTqt8pOVp9loPR6LedbLj2w(Lcab/snapp/passenger/f/a/a/c;Lcab/snapp/passenger/data_access_layer/network/responses/VoucherResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/a/a/c;->a(Lcab/snapp/passenger/data_access_layer/network/responses/VoucherResponse;)V

    return-void
.end method


# virtual methods
.method public final openIPG(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final performPayCall(Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/c;->d:Lcab/snapp/passenger/f/a/a$a;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lcab/snapp/passenger/f/a/a$a;->onPaymentStart()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/c;->c:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 56
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->putSnappCard(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/f/a/a/-$$Lambda$c$_q0LQTqt8pOVp9loPR6LedbLj2w;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/f/a/a/-$$Lambda$c$_q0LQTqt8pOVp9loPR6LedbLj2w;-><init>(Lcab/snapp/passenger/f/a/a/c;)V

    new-instance v1, Lcab/snapp/passenger/f/a/a/-$$Lambda$c$MrlgpoLFYxrs2D4n3K0OA1yN1O4;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/f/a/a/-$$Lambda$c$MrlgpoLFYxrs2D4n3K0OA1yN1O4;-><init>(Lcab/snapp/passenger/f/a/a/c;)V

    .line 57
    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/f/a/a/c;->a:Lio/reactivex/b/c;

    return-void
.end method

.method public final setInteractionInterface(Lcab/snapp/passenger/f/a/a$a;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcab/snapp/passenger/f/a/a/c;->d:Lcab/snapp/passenger/f/a/a$a;

    return-void
.end method
