.class public final Lcab/snapp/passenger/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDevCloudQAEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isEndpointSwitchEnabled()Z
    .locals 1

    .line 17
    sget-object v0, Lcab/snapp/passenger/c;->SEND_ANALYTICS_DATA:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcab/snapp/passenger/c;->SEND_STAGING_ANALYTICS_DATA:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
