.class public final synthetic Lcab/snapp/passenger/f/-$$Lambda$q$nKL_Ysq42QG2qt4XggkR1Narz9E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/h;


# static fields
.field public static final synthetic INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$q$nKL_Ysq42QG2qt4XggkR1Narz9E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcab/snapp/passenger/f/-$$Lambda$q$nKL_Ysq42QG2qt4XggkR1Narz9E;

    invoke-direct {v0}, Lcab/snapp/passenger/f/-$$Lambda$q$nKL_Ysq42QG2qt4XggkR1Narz9E;-><init>()V

    sput-object v0, Lcab/snapp/passenger/f/-$$Lambda$q$nKL_Ysq42QG2qt4XggkR1Narz9E;->INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$q$nKL_Ysq42QG2qt4XggkR1Narz9E;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;

    invoke-static {p1}, Lcab/snapp/passenger/f/q;->lambda$nKL_Ysq42QG2qt4XggkR1Narz9E(Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
