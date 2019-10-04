.class public abstract Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthBaseBody;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bodyHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-direct {p0}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthBaseBody;->initHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthBaseBody;->bodyHashMap:Ljava/util/HashMap;

    return-void
.end method

.method private initHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getSecureDeviceIdHeader()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract getBody()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract setClientId()V
.end method

.method abstract setClientSecret()V
.end method

.method abstract setGrantType()V
.end method
