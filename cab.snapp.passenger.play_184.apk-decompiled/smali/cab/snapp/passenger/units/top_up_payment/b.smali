.class public final Lcab/snapp/passenger/units/top_up_payment/b;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/a/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/top_up_payment/e;",
        "Lcab/snapp/passenger/units/top_up_payment/d;",
        ">;",
        "Lcab/snapp/passenger/f/a/a$a;"
    }
.end annotation


# static fields
.field public static final BARCODE_SCANNER_ACTIVITY_RESULT_CODE:I = 0x1ed2

.field public static final PRIVATE_CHANNEL_FOR_SCANNER:Ljava/lang/String; = "PRIVATE_CHANNEL_FOR_SCANNER"


# instance fields
.field a:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/c/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private f:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

.field private h:J

.field private i:J

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const-wide/16 v0, 0x0

    .line 77
    iput-wide v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->h:J

    const-wide/16 v0, 0x2710

    .line 78
    iput-wide v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->i:J

    const/16 v0, 0x3e9

    .line 79
    iput v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->j:I

    return-void
.end method

.method private static a(Lcab/snapp/passenger/units/top_up_payment/d;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 3453
    iget-boolean p0, p0, Lcab/snapp/passenger/units/top_up_payment/d;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "TopUpModalExtended"

    goto :goto_0

    :cond_0
    const-string p0, "TopUpModalDefault"

    :goto_0
    return-object p0
.end method

.method private a()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->c:Lcab/snapp/passenger/c/f;

    iget-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/b;->g:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/f;->fetchAndRefreshCredit(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$0DgdQ35U5jXBzwOSF_VibKk2ui0;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$0DgdQ35U5jXBzwOSF_VibKk2ui0;-><init>(Lcab/snapp/passenger/units/top_up_payment/b;)V

    .line 142
    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnSubscribe(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$aaAso_QkJ0fJRehEHUkQFoBdGVw;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$aaAso_QkJ0fJRehEHUkQFoBdGVw;-><init>(Lcab/snapp/passenger/units/top_up_payment/b;Z)V

    new-instance v2, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$-kmZ2IWTkdyRu7AnYrzEg_PEpWE;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$-kmZ2IWTkdyRu7AnYrzEg_PEpWE;-><init>(Lcab/snapp/passenger/units/top_up_payment/b;)V

    .line 149
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/top_up_payment/b;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/ApWalletRegistrationResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 370
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ApWalletRegistrationResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/top_up_payment/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getSnappCredit()J

    move-result-wide v1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getApCredit()Ljava/lang/Long;

    move-result-object p1

    iget v3, p0, Lcab/snapp/passenger/units/top_up_payment/b;->j:I

    invoke-virtual {v0, v1, v2, p1, v3}, Lcab/snapp/passenger/units/top_up_payment/d;->setCurrentCredit(JLjava/lang/Long;I)V

    :cond_0
    return-void
.end method

.method private synthetic a(Lio/reactivex/b/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/d;

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    iget v3, p0, Lcab/snapp/passenger/units/top_up_payment/b;->j:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcab/snapp/passenger/units/top_up_payment/d;->setCurrentCredit(JLjava/lang/Long;I)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 610
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 614
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 615
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 616
    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 618
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 624
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/d;

    const v0, 0x7f1200bf

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/top_up_payment/d;->a(I)V

    :cond_2
    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 374
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 4323
    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4327
    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/d;

    const v0, 0x7f12002c

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/top_up_payment/d;->a(I)V

    :cond_2
    return-void
.end method

.method private synthetic a(ZLcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getSnappCredit()J

    move-result-wide v1

    .line 153
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getApCredit()Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Lcab/snapp/passenger/units/top_up_payment/b;->j:I

    .line 152
    invoke-virtual {v0, v1, v2, v3, v4}, Lcab/snapp/passenger/units/top_up_payment/d;->setCurrentCredit(JLjava/lang/Long;I)V

    .line 154
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getApWalletRegistrationStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/top_up_payment/d;->setAppWalletRegistered(I)V

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getDefaultWallet()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getApWalletRegistrationStatus()I

    move-result p1

    if-nez p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/top_up_payment/d;->switchToTabBasedOnDefaultWallet(I)V

    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getDefaultWallet()I

    move-result p2

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/top_up_payment/d;->switchToTabBasedOnDefaultWallet(I)V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 4

    .line 279
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcab/snapp/passenger/units/top_up_payment/b;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/top_up_payment/d;->updateUiAccordingToConsideringChargeAmount(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Lio/reactivex/b/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/d;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/top_up_payment/d;->setAppWalletRegistered(I)V

    .line 146
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/d;

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    iget v3, p0, Lcab/snapp/passenger/units/top_up_payment/b;->j:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcab/snapp/passenger/units/top_up_payment/d;->setCurrentCredit(JLjava/lang/Long;I)V

    :cond_0
    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/top_up_payment/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic b(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/d;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/top_up_payment/d;->setAppWalletRegistered(I)V

    .line 169
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/d;

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    iget v3, p0, Lcab/snapp/passenger/units/top_up_payment/b;->j:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcab/snapp/passenger/units/top_up_payment/d;->setCurrentCredit(JLjava/lang/Long;I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$-kmZ2IWTkdyRu7AnYrzEg_PEpWE(Lcab/snapp/passenger/units/top_up_payment/b;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/top_up_payment/b;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$0DgdQ35U5jXBzwOSF_VibKk2ui0(Lcab/snapp/passenger/units/top_up_payment/b;Lio/reactivex/b/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/top_up_payment/b;->b(Lio/reactivex/b/c;)V

    return-void
.end method

.method public static synthetic lambda$SwQegYs2D0vKgLhn5Gl2IcGdT0M(Lcab/snapp/passenger/units/top_up_payment/b;Lio/reactivex/b/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/top_up_payment/b;->a(Lio/reactivex/b/c;)V

    return-void
.end method

.method public static synthetic lambda$XjL-Pg4h5noVXiN4RhfFVPCeFIU(Lcab/snapp/passenger/units/top_up_payment/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/top_up_payment/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$aaAso_QkJ0fJRehEHUkQFoBdGVw(Lcab/snapp/passenger/units/top_up_payment/b;ZLcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/top_up_payment/b;->a(ZLcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V

    return-void
.end method

.method public static synthetic lambda$fTTqq8X1OPwxJ4GHb6qyE5Yl-TQ(Lcab/snapp/passenger/units/top_up_payment/b;Lcab/snapp/passenger/data_access_layer/network/responses/ApWalletRegistrationResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/top_up_payment/b;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ApWalletRegistrationResponse;)V

    return-void
.end method

.method public static synthetic lambda$q5s4bxI0cb7foLnPWdBDE22d7Yo(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$uYu8i2gvV7q8Z5huBu4pfuBgonM(Lcab/snapp/passenger/units/top_up_payment/b;Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/top_up_payment/b;->a(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V

    return-void
.end method

.method public static synthetic lambda$v5zCdmadeh3YVSecgGOZPQi33uk(Lcab/snapp/passenger/units/top_up_payment/b;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/top_up_payment/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final apWalletActivationRequested()V
    .locals 3

    .line 369
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->a:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/b;->c:Lcab/snapp/passenger/c/f;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/f;->getProfile()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getCellphone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/d;->sendApWalletRegistration(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$fTTqq8X1OPwxJ4GHb6qyE5Yl-TQ;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$fTTqq8X1OPwxJ4GHb6qyE5Yl-TQ;-><init>(Lcab/snapp/passenger/units/top_up_payment/b;)V

    new-instance v2, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$v5zCdmadeh3YVSecgGOZPQi33uk;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$v5zCdmadeh3YVSecgGOZPQi33uk;-><init>(Lcab/snapp/passenger/units/top_up_payment/b;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/top_up_payment/b;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public final chargeAmountEnteredByUser(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 559
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3573
    :cond_0
    invoke-static {p1}, Lcab/snapp/c/d;->convertPersianToEnglishNumbers(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 3574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 3575
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3577
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3578
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3580
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3583
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 565
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 567
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->h:J

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-wide/16 v0, 0x0

    .line 561
    iput-wide v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->h:J

    return-void
.end method

.method public final chargeAmountSelected(I)V
    .locals 3

    int-to-long v0, p1

    .line 293
    iput-wide v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->h:J

    .line 294
    invoke-direct {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->b()V

    const v0, 0x186a0

    if-eq p1, v0, :cond_2

    const v0, 0x30d40

    if-eq p1, v0, :cond_1

    const v0, 0x7a120

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "Add50KT"

    goto :goto_0

    :cond_1
    const-string p1, "Add20KT"

    goto :goto_0

    :cond_2
    const-string p1, "Add10KT"

    .line 1498
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/b;->a(Lcab/snapp/passenger/units/top_up_payment/d;)Ljava/lang/String;

    move-result-object v0

    .line 1500
    new-instance v1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v2, "TabShetabCards"

    invoke-virtual {v1, v2, p1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    .line 1501
    invoke-virtual {p1, v0}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 1503
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    const-string v1, "JekHome"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public final chargeUserForConsideringAmount()V
    .locals 7

    .line 305
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcab/snapp/passenger/units/top_up_payment/b;->j:I

    iget-object v2, p0, Lcab/snapp/passenger/units/top_up_payment/b;->a:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v3, p0, Lcab/snapp/passenger/units/top_up_payment/b;->b:Lcab/snapp/passenger/f/b/b/c;

    .line 309
    invoke-static {v0, v1, p0, v2, v3}, Lcab/snapp/passenger/f/a/a;->buildSnappPayment(Landroid/app/Activity;ILcab/snapp/passenger/f/a/a$a;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/passenger/f/b/b/c;)Lcab/snapp/passenger/f/a/b;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 321
    :cond_1
    iget v1, p0, Lcab/snapp/passenger/units/top_up_payment/b;->j:I

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 347
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/top_up_payment/d;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/top_up_payment/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 354
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/top_up_payment/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcab/snapp/passenger/f/a/b;->performPayCall(Ljava/lang/String;)V

    goto :goto_3

    .line 349
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    const v1, 0x7f120124

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/top_up_payment/d;->a(I)V

    goto :goto_3

    :cond_5
    :goto_1
    const/4 v1, 0x0

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/top_up_payment/d;->b()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_6

    .line 328
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/top_up_payment/d;->b()Ljava/lang/Number;

    move-result-object v1

    goto :goto_2

    .line 332
    :cond_6
    iget-wide v1, p0, Lcab/snapp/passenger/units/top_up_payment/b;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 335
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_7

    .line 337
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    const v1, 0x7f120193

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/top_up_payment/d;->a(I)V

    goto :goto_3

    .line 341
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcab/snapp/passenger/f/a/b;->performPayCall(Ljava/lang/String;)V

    .line 2460
    :goto_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/b;->a(Lcab/snapp/passenger/units/top_up_payment/d;)Ljava/lang/String;

    move-result-object v0

    .line 2462
    iget v1, p0, Lcab/snapp/passenger/units/top_up_payment/b;->j:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_8

    const-string v1, "Submit"

    const-string v2, "TabSnappCard"

    goto :goto_4

    :cond_8
    const-string v1, "Purchase"

    const-string v2, "TabShetabCards"

    .line 2469
    :goto_4
    new-instance v3, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v3}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    invoke-virtual {v3, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v1

    .line 2470
    invoke-virtual {v1, v0}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2472
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "JekHome"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public final decreaseChargeByFixedAmount()V
    .locals 5

    .line 261
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/d;->b()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/d;->b()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 263
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/d;->b()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->h:J

    .line 265
    :cond_0
    iget-wide v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->h:J

    iget-wide v2, p0, Lcab/snapp/passenger/units/top_up_payment/b;->i:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    sub-long/2addr v0, v2

    .line 267
    iput-wide v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->h:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 271
    iput-wide v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->h:J

    .line 273
    :goto_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->b()V

    .line 1450
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "TabShetabCards"

    const-string v2, "Minus"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "TopUpModalDefault"

    .line 1451
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1453
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "JekHome"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 588
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->f:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->f:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final increaseChargeByFixedAmount()V
    .locals 5

    .line 246
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/d;->b()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/d;->b()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 248
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/d;->b()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->h:J

    .line 250
    :cond_0
    iget-wide v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->h:J

    iget-wide v2, p0, Lcab/snapp/passenger/units/top_up_payment/b;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->h:J

    .line 251
    invoke-direct {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->b()V

    .line 1440
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/b;->a(Lcab/snapp/passenger/units/top_up_payment/d;)Ljava/lang/String;

    move-result-object v0

    .line 1442
    new-instance v1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v2, "TabShetabCards"

    const-string v3, "Plus"

    invoke-virtual {v1, v2, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v1

    .line 1443
    invoke-virtual {v1, v0}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1445
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "JekHome"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public final onApWalletDescriptionMoreInfoClicked(Ljava/lang/String;)V
    .locals 0

    .line 603
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/top_up_payment/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onApWalletRetryRequested()V
    .locals 0

    .line 631
    invoke-direct {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->a()V

    return-void
.end method

.method public final onPaymentError(Ljava/lang/String;I)V
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x44d

    if-ne p2, v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/top_up_payment/d;->showNoInternet()V

    return-void

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/top_up_payment/d;

    iget v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->j:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p1, v0}, Lcab/snapp/passenger/units/top_up_payment/d;->onPaymentError(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onPaymentStart()V
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/d;->showLoading()V

    return-void
.end method

.method public final onPaymentSucceed(J)V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/top_up_payment/d;->hideLoading()V

    .line 192
    iget p1, p0, Lcab/snapp/passenger/units/top_up_payment/b;->j:I

    const/16 p2, 0x3eb

    if-ne p1, p2, :cond_1

    .line 194
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/d;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/top_up_payment/d;->a(Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/b;->c:Lcab/snapp/passenger/c/f;

    sget-object p2, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->JEK_TOPUP:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    .line 196
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/c/f;->fetchAndRefreshCredit(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)Lio/reactivex/z;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$SwQegYs2D0vKgLhn5Gl2IcGdT0M;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$SwQegYs2D0vKgLhn5Gl2IcGdT0M;-><init>(Lcab/snapp/passenger/units/top_up_payment/b;)V

    .line 197
    invoke-virtual {p1, p2}, Lio/reactivex/z;->doOnSubscribe(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$uYu8i2gvV7q8Z5huBu4pfuBgonM;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$uYu8i2gvV7q8Z5huBu4pfuBgonM;-><init>(Lcab/snapp/passenger/units/top_up_payment/b;)V

    sget-object v0, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$q5s4bxI0cb7foLnPWdBDE22d7Yo;->INSTANCE:Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$q5s4bxI0cb7foLnPWdBDE22d7Yo;

    .line 203
    invoke-virtual {p1, p2, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 195
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/top_up_payment/b;->addDisposable(Lio/reactivex/b/c;)V

    .line 213
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/b;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->updatePaymentStatus()V

    return-void

    .line 217
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/b;->f:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    return-void
.end method

.method public final onUnitCreated()V
    .locals 5

    .line 90
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 91
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/top_up_payment/b;)V

    .line 94
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    .line 97
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "PRIVATE_CHANNEL_FOR_SCANNER"

    aput-object v4, v2, v3

    .line 98
    invoke-virtual {v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$XjL-Pg4h5noVXiN4RhfFVPCeFIU;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$b$XjL-Pg4h5noVXiN4RhfFVPCeFIU;-><init>(Lcab/snapp/passenger/units/top_up_payment/b;)V

    .line 95
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    .line 107
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->d:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/top_up_payment/d;

    .line 112
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getPaymentTexts()Lcab/snapp/passenger/data/models/PaymentTexts;

    move-result-object v2

    .line 113
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->isApWalletEnabled()Z

    move-result v3

    .line 114
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->isOnlinePayEnabled()Z

    move-result v4

    .line 115
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getSnappUssd()Lcab/snapp/passenger/data/models/SnappUssd;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/SnappUssd;->isEnabled()Z

    move-result v0

    .line 111
    invoke-virtual {v1, v2, v3, v4, v0}, Lcab/snapp/passenger/units/top_up_payment/d;->onInitialize(Lcab/snapp/passenger/data/models/PaymentTexts;ZZZ)V

    :cond_0
    return-void
.end method

.method public final onUnitResume()V
    .locals 5

    .line 122
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 123
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->c:Lcab/snapp/passenger/c/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/f;->getCredit()Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    iget-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/b;->c:Lcab/snapp/passenger/c/f;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/f;->getCredit()Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getApWalletRegistrationStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/top_up_payment/d;->setAppWalletRegistered(I)V

    .line 126
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    iget-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/b;->c:Lcab/snapp/passenger/c/f;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/f;->getCredit()Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getSnappCredit()J

    move-result-wide v1

    iget-object v3, p0, Lcab/snapp/passenger/units/top_up_payment/b;->c:Lcab/snapp/passenger/c/f;

    .line 127
    invoke-virtual {v3}, Lcab/snapp/passenger/c/f;->getCredit()Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getApCredit()Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Lcab/snapp/passenger/units/top_up_payment/b;->j:I

    .line 126
    invoke-virtual {v0, v1, v2, v3, v4}, Lcab/snapp/passenger/units/top_up_payment/d;->setCurrentCredit(JLjava/lang/Long;I)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->g:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    if-nez v0, :cond_1

    .line 132
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->JEK_TOPUP:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    iput-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->g:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    .line 135
    :cond_1
    invoke-direct {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->a()V

    .line 1433
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "TopUpModalDefault"

    const-string v2, "Show"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1435
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "JekHome"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public final reportTabShetabCardsExtendToAppMetrica(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 528
    iget p1, p0, Lcab/snapp/passenger/units/top_up_payment/b;->j:I

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/top_up_payment/b;->a(Lcab/snapp/passenger/units/top_up_payment/d;)Ljava/lang/String;

    move-result-object p1

    .line 533
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "TabShetabCards"

    const-string v2, "Extend"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 534
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 536
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    const-string v1, "JekHome"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_0
    return-void
.end method

.method public final reportTabSnappCardInput()V
    .locals 4

    .line 509
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/b;->a(Lcab/snapp/passenger/units/top_up_payment/d;)Ljava/lang/String;

    move-result-object v0

    .line 511
    new-instance v1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v2, "Input"

    const-string v3, "TabSnappCard"

    invoke-virtual {v1, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v1

    .line 512
    invoke-virtual {v1, v0}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 514
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "JekHome"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public final reportTabUSSSDToAppMetrica()V
    .locals 3

    .line 519
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/b;->a(Lcab/snapp/passenger/units/top_up_payment/d;)Ljava/lang/String;

    move-result-object v0

    .line 521
    new-instance v1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v2, "TabUSSD"

    invoke-virtual {v1, v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 523
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "JekHome"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public final reportTopUpModalShowCloseToAppMetrica(Z)V
    .locals 2

    .line 542
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/b;->a(Lcab/snapp/passenger/units/top_up_payment/d;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "Show"

    goto :goto_0

    :cond_0
    const-string p1, "Close"

    .line 545
    :goto_0
    new-instance v1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    invoke-virtual {v1, v0, p1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    .line 546
    invoke-virtual {p1, v0}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 548
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    const-string v1, "JekHome"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public final resetChargeAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 553
    iput-wide v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->h:J

    return-void
.end method

.method public final setActiveMethod(I)V
    .locals 0

    .line 395
    iput p1, p0, Lcab/snapp/passenger/units/top_up_payment/b;->j:I

    return-void
.end method

.method public final setController(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 593
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/b;->f:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public final setPlace(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/b;->g:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    return-void
.end method

.method public final startScan()V
    .locals 4

    .line 404
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcab/snapp/passenger/activities/ScannerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x1ed2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
