.class public final synthetic Lcab/snapp/passenger/c/-$$Lambda$b$TWlHMPBNd3Ok4h8nYPxlZZvzQXE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/e/h;


# static fields
.field public static final synthetic INSTANCE:Lcab/snapp/passenger/c/-$$Lambda$b$TWlHMPBNd3Ok4h8nYPxlZZvzQXE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcab/snapp/passenger/c/-$$Lambda$b$TWlHMPBNd3Ok4h8nYPxlZZvzQXE;

    invoke-direct {v0}, Lcab/snapp/passenger/c/-$$Lambda$b$TWlHMPBNd3Ok4h8nYPxlZZvzQXE;-><init>()V

    sput-object v0, Lcab/snapp/passenger/c/-$$Lambda$b$TWlHMPBNd3Ok4h8nYPxlZZvzQXE;->INSTANCE:Lcab/snapp/passenger/c/-$$Lambda$b$TWlHMPBNd3Ok4h8nYPxlZZvzQXE;

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

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;

    invoke-static {p1}, Lcab/snapp/passenger/c/b;->lambda$TWlHMPBNd3Ok4h8nYPxlZZvzQXE(Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;)Lcab/snapp/passenger/data/models/OptionalConfig;

    move-result-object p1

    return-object p1
.end method
