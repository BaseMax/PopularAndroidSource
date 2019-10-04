.class public final Lcab/snapp/passenger/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final IUDFU(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/AppData;->getLatestSupportedVersionCode()I

    move-result p1

    const/16 v0, 0xb8

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final IUDXH(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcab/snapp/passenger/f/e;->IUDXU()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final IUDXU()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
