.class final Lcom/a/a/a/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/fabric/sdk/android/services/common/IdManager;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/common/IdManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/a/a/a/aj;->a:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/a/a/a/aj;->b:Lio/fabric/sdk/android/services/common/IdManager;

    .line 25
    iput-object p3, p0, Lcom/a/a/a/aj;->c:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/a/a/a/aj;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMetadata()Lcom/a/a/a/ah;
    .locals 15

    .line 34
    iget-object v0, p0, Lcom/a/a/a/aj;->b:Lio/fabric/sdk/android/services/common/IdManager;

    .line 35
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->getDeviceIdentifiers()Ljava/util/Map;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/a/a/a/aj;->b:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/IdManager;->getAppIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 37
    iget-object v1, p0, Lcom/a/a/a/aj;->b:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/IdManager;->getAppInstallIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 38
    sget-object v1, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->ANDROID_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    .line 39
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 40
    sget-object v1, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->ANDROID_ADVERTISING_ID:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    .line 41
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/a/a/a/aj;->b:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/IdManager;->isLimitAdTrackingEnabled()Ljava/lang/Boolean;

    move-result-object v8

    .line 43
    sget-object v1, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->FONT_TOKEN:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    .line 44
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/a/a/a/aj;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->resolveBuildId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 46
    iget-object v0, p0, Lcom/a/a/a/aj;->b:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->getOsVersionString()Ljava/lang/String;

    move-result-object v11

    .line 47
    iget-object v0, p0, Lcom/a/a/a/aj;->b:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->getModelName()Ljava/lang/String;

    move-result-object v12

    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    new-instance v0, Lcom/a/a/a/ah;

    iget-object v13, p0, Lcom/a/a/a/aj;->c:Ljava/lang/String;

    iget-object v14, p0, Lcom/a/a/a/aj;->d:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/a/a/a/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
