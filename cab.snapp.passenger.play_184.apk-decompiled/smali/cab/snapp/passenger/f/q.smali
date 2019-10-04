.class public final Lcab/snapp/passenger/f/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcab/snapp/passenger/data_access_layer/a/d;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/data_access_layer/a/d;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcab/snapp/passenger/f/q;->a:Lcab/snapp/passenger/data_access_layer/a/d;

    return-void
.end method

.method private static synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic a(Lcab/snapp/snappnetwork/model/f;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic b(Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic lambda$ZNercSAXgFT7GdF3fG8yhMHj0aA(Lcab/snapp/snappnetwork/model/f;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/f/q;->a(Lcab/snapp/snappnetwork/model/f;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$nKL_Ysq42QG2qt4XggkR1Narz9E(Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/f/q;->a(Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$wSu2ZVHk_flhDhfPfKCM_jwAdSU(Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/f/q;->b(Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final requestConfirm(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcab/snapp/passenger/f/q;->a:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->verifyPhoneNumber(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    sget-object v0, Lcab/snapp/passenger/f/-$$Lambda$q$ZNercSAXgFT7GdF3fG8yhMHj0aA;->INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$q$ZNercSAXgFT7GdF3fG8yhMHj0aA;

    invoke-virtual {p1, v0}, Lio/reactivex/z;->map(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final requestConfirmationCodeByPhoneCall(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcab/snapp/passenger/f/q;->a:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->requestConfirmationCodeByPhoneCall(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    sget-object v0, Lcab/snapp/passenger/f/-$$Lambda$q$wSu2ZVHk_flhDhfPfKCM_jwAdSU;->INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$q$wSu2ZVHk_flhDhfPfKCM_jwAdSU;

    invoke-virtual {p1, v0}, Lio/reactivex/z;->map(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final requestConfirmationCodeBySms(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcab/snapp/passenger/f/q;->a:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->requestConfirmationCodeBySms(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    sget-object v0, Lcab/snapp/passenger/f/-$$Lambda$q$nKL_Ysq42QG2qt4XggkR1Narz9E;->INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$q$nKL_Ysq42QG2qt4XggkR1Narz9E;

    invoke-virtual {p1, v0}, Lio/reactivex/z;->map(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method
