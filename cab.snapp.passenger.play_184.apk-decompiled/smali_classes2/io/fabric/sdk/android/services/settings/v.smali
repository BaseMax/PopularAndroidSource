.class public final Lio/fabric/sdk/android/services/settings/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final advertisingId:Ljava/lang/String;

.field public final androidId:Ljava/lang/String;

.field public final apiKey:Ljava/lang/String;

.field public final buildVersion:Ljava/lang/String;

.field public final deviceModel:Ljava/lang/String;

.field public final displayVersion:Ljava/lang/String;

.field public final iconHash:Ljava/lang/String;

.field public final installationId:Ljava/lang/String;

.field public final instanceId:Ljava/lang/String;

.field public final osBuildVersion:Ljava/lang/String;

.field public final osDisplayVersion:Ljava/lang/String;

.field public final source:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/v;->apiKey:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lio/fabric/sdk/android/services/settings/v;->deviceModel:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/v;->osBuildVersion:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/v;->osDisplayVersion:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lio/fabric/sdk/android/services/settings/v;->advertisingId:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lio/fabric/sdk/android/services/settings/v;->installationId:Ljava/lang/String;

    .line 47
    iput-object p7, p0, Lio/fabric/sdk/android/services/settings/v;->androidId:Ljava/lang/String;

    .line 48
    iput-object p8, p0, Lio/fabric/sdk/android/services/settings/v;->instanceId:Ljava/lang/String;

    .line 49
    iput-object p9, p0, Lio/fabric/sdk/android/services/settings/v;->displayVersion:Ljava/lang/String;

    .line 50
    iput-object p10, p0, Lio/fabric/sdk/android/services/settings/v;->buildVersion:Ljava/lang/String;

    .line 51
    iput p11, p0, Lio/fabric/sdk/android/services/settings/v;->source:I

    .line 52
    iput-object p12, p0, Lio/fabric/sdk/android/services/settings/v;->iconHash:Ljava/lang/String;

    return-void
.end method