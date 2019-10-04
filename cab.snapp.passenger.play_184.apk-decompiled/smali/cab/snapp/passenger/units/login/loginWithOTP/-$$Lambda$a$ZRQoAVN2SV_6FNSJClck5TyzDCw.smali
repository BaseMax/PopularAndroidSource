.class public final synthetic Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$a$ZRQoAVN2SV_6FNSJClck5TyzDCw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/g;


# static fields
.field public static final synthetic INSTANCE:Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$a$ZRQoAVN2SV_6FNSJClck5TyzDCw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$a$ZRQoAVN2SV_6FNSJClck5TyzDCw;

    invoke-direct {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$a$ZRQoAVN2SV_6FNSJClck5TyzDCw;-><init>()V

    sput-object v0, Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$a$ZRQoAVN2SV_6FNSJClck5TyzDCw;->INSTANCE:Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$a$ZRQoAVN2SV_6FNSJClck5TyzDCw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/LoginByPhoneNumberResponse;

    invoke-static {p1}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->lambda$ZRQoAVN2SV_6FNSJClck5TyzDCw(Lcab/snapp/passenger/data_access_layer/network/responses/LoginByPhoneNumberResponse;)V

    return-void
.end method
