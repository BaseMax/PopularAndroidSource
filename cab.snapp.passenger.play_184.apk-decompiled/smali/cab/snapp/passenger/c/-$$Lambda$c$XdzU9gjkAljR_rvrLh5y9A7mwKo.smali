.class public final synthetic Lcab/snapp/passenger/c/-$$Lambda$c$XdzU9gjkAljR_rvrLh5y9A7mwKo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/h;


# static fields
.field public static final synthetic INSTANCE:Lcab/snapp/passenger/c/-$$Lambda$c$XdzU9gjkAljR_rvrLh5y9A7mwKo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcab/snapp/passenger/c/-$$Lambda$c$XdzU9gjkAljR_rvrLh5y9A7mwKo;

    invoke-direct {v0}, Lcab/snapp/passenger/c/-$$Lambda$c$XdzU9gjkAljR_rvrLh5y9A7mwKo;-><init>()V

    sput-object v0, Lcab/snapp/passenger/c/-$$Lambda$c$XdzU9gjkAljR_rvrLh5y9A7mwKo;->INSTANCE:Lcab/snapp/passenger/c/-$$Lambda$c$XdzU9gjkAljR_rvrLh5y9A7mwKo;

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

    check-cast p1, Lcab/snapp/snappnetwork/model/f;

    invoke-static {p1}, Lcab/snapp/passenger/c/c;->lambda$XdzU9gjkAljR_rvrLh5y9A7mwKo(Lcab/snapp/snappnetwork/model/f;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
