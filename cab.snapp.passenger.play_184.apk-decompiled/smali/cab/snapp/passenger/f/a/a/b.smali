.class public final Lcab/snapp/passenger/f/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/a/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcab/snapp/passenger/data_access_layer/a/d;

.field private c:Lio/reactivex/b/c;

.field private d:Lcab/snapp/passenger/f/a/a$a;

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcab/snapp/passenger/data_access_layer/a/d;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcab/snapp/passenger/f/a/a/b;->a:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcab/snapp/passenger/f/a/a/b;->b:Lcab/snapp/passenger/data_access_layer/a/d;

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    const v1, 0x7f1200c2

    if-eqz v0, :cond_3

    .line 60
    check-cast p1, Lcab/snapp/passenger/data_access_layer/a/e;

    .line 1128
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v2, 0x414

    if-ne v0, v2, :cond_0

    .line 1130
    iget-object p1, p0, Lcab/snapp/passenger/f/a/a/b;->a:Landroid/content/Context;

    const v0, 0x7f12014b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1132
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1134
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1138
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/f/a/a/b;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1141
    :goto_0
    invoke-static {p1}, Lcab/snapp/c/d;->convertEngToPersianNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1143
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/b;->d:Lcab/snapp/passenger/f/a/a$a;

    if-eqz v0, :cond_2

    const/16 v1, 0x44e

    .line 1145
    invoke-interface {v0, p1, v1}, Lcab/snapp/passenger/f/a/a$a;->onPaymentError(Ljava/lang/String;I)V

    .line 1147
    :cond_2
    iget-object p1, p0, Lcab/snapp/passenger/f/a/a/b;->c:Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    return-void

    .line 65
    :cond_3
    iget-object p1, p0, Lcab/snapp/passenger/f/a/a/b;->a:Landroid/content/Context;

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {p1, v0}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/b;->a:Landroid/content/Context;

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method

.method public static synthetic lambda$hq2RDlf4PSIf79Mtnd1-53naSxo(Lcab/snapp/passenger/f/a/a/b;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/a/a/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final openIPG(Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f06004b

    if-eqz p1, :cond_1

    .line 80
    iget-object v1, p0, Lcab/snapp/passenger/f/a/a/b;->d:Lcab/snapp/passenger/f/a/a$a;

    if-eqz v1, :cond_0

    .line 82
    iget-wide v2, p0, Lcab/snapp/passenger/f/a/a/b;->e:J

    invoke-interface {v1, v2, v3}, Lcab/snapp/passenger/f/a/a$a;->onPaymentSucceed(J)V

    .line 86
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcab/snapp/passenger/f/a/a/b;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 89
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 96
    iget-object v1, p0, Lcab/snapp/passenger/f/a/a/b;->a:Landroid/content/Context;

    const v2, 0x7f1200bf

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v1, v2}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/f/a/a/b;->a:Landroid/content/Context;

    .line 100
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcab/snapp/snappuikit/b;->show()V

    .line 102
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void

    .line 108
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/f/a/a/b;->a:Landroid/content/Context;

    const v1, 0x7f1200c2

    .line 110
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {p1, v1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    iget-object v1, p0, Lcab/snapp/passenger/f/a/a/b;->a:Landroid/content/Context;

    .line 112
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method

.method public final performPayCall(Ljava/lang/String;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/b;->d:Lcab/snapp/passenger/f/a/a$a;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Lcab/snapp/passenger/f/a/a$a;->onPaymentStart()V

    .line 52
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/f/a/a/b;->e:J

    .line 54
    iget-object p1, p0, Lcab/snapp/passenger/f/a/a/b;->b:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-wide v0, p0, Lcab/snapp/passenger/f/a/a/b;->e:J

    .line 55
    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/data_access_layer/a/d;->postOnlinePayment(J)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/f/a/a/-$$Lambda$N6nu8yk48lAa1evXaVqAMjmEaTM;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/f/a/a/-$$Lambda$N6nu8yk48lAa1evXaVqAMjmEaTM;-><init>(Lcab/snapp/passenger/f/a/a/b;)V

    new-instance v1, Lcab/snapp/passenger/f/a/a/-$$Lambda$b$hq2RDlf4PSIf79Mtnd1-53naSxo;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/f/a/a/-$$Lambda$b$hq2RDlf4PSIf79Mtnd1-53naSxo;-><init>(Lcab/snapp/passenger/f/a/a/b;)V

    .line 56
    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/f/a/a/b;->c:Lio/reactivex/b/c;

    return-void
.end method

.method public final processServerData(Lcab/snapp/passenger/data_access_layer/network/responses/OnlinePaymentResponse;)V
    .locals 4

    .line 153
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/OnlinePaymentResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f06004b

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/b;->d:Lcab/snapp/passenger/f/a/a$a;

    if-eqz v0, :cond_0

    .line 157
    iget-wide v2, p0, Lcab/snapp/passenger/f/a/a/b;->e:J

    invoke-interface {v0, v2, v3}, Lcab/snapp/passenger/f/a/a$a;->onPaymentSucceed(J)V

    .line 161
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/b;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 164
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/OnlinePaymentResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 171
    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/b;->a:Landroid/content/Context;

    const v2, 0x7f1200bf

    .line 173
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-static {v0, v2}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object v0

    iget-object v2, p0, Lcab/snapp/passenger/f/a/a/b;->a:Landroid/content/Context;

    .line 175
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcab/snapp/snappuikit/b;->show()V

    .line 177
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/f/a/a/b;->a:Landroid/content/Context;

    const v0, 0x7f1200c2

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {p1, v0}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/passenger/f/a/a/b;->a:Landroid/content/Context;

    .line 187
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    .line 190
    :goto_0
    iget-object p1, p0, Lcab/snapp/passenger/f/a/a/b;->c:Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public final setInteractionInterface(Lcab/snapp/passenger/f/a/a$a;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcab/snapp/passenger/f/a/a/b;->d:Lcab/snapp/passenger/f/a/a$a;

    return-void
.end method
