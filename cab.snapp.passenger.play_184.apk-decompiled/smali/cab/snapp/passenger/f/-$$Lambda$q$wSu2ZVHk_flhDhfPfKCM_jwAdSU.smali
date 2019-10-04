.class public final synthetic Lcab/snapp/passenger/f/-$$Lambda$q$wSu2ZVHk_flhDhfPfKCM_jwAdSU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/h;


# static fields
.field public static final synthetic INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$q$wSu2ZVHk_flhDhfPfKCM_jwAdSU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcab/snapp/passenger/f/-$$Lambda$q$wSu2ZVHk_flhDhfPfKCM_jwAdSU;

    invoke-direct {v0}, Lcab/snapp/passenger/f/-$$Lambda$q$wSu2ZVHk_flhDhfPfKCM_jwAdSU;-><init>()V

    sput-object v0, Lcab/snapp/passenger/f/-$$Lambda$q$wSu2ZVHk_flhDhfPfKCM_jwAdSU;->INSTANCE:Lcab/snapp/passenger/f/-$$Lambda$q$wSu2ZVHk_flhDhfPfKCM_jwAdSU;

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

    invoke-static {p1}, Lcab/snapp/passenger/f/q;->lambda$wSu2ZVHk_flhDhfPfKCM_jwAdSU(Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
