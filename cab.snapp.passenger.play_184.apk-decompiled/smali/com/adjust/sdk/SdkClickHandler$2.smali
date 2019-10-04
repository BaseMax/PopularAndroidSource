.class final Lcom/adjust/sdk/SdkClickHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/SdkClickHandler;->sendReftagReferrers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adjust/sdk/SdkClickHandler;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/SdkClickHandler;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/adjust/sdk/SdkClickHandler$2;->a:Lcom/adjust/sdk/SdkClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    .line 142
    iget-object v0, v1, Lcom/adjust/sdk/SdkClickHandler$2;->a:Lcom/adjust/sdk/SdkClickHandler;

    invoke-static {v0}, Lcom/adjust/sdk/SdkClickHandler;->access$300(Lcom/adjust/sdk/SdkClickHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IActivityHandler;

    .line 143
    new-instance v2, Lcom/adjust/sdk/SharedPreferencesManager;

    .line 144
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adjust/sdk/SharedPreferencesManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 146
    :try_start_0
    invoke-virtual {v2}, Lcom/adjust/sdk/SharedPreferencesManager;->getRawReferrerArray()Lorg/a/a;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 149
    :goto_0
    invoke-virtual {v5}, Lorg/a/a;->length()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 150
    invoke-virtual {v5, v6}, Lorg/a/a;->getJSONArray(I)Lorg/a/a;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x2

    .line 152
    invoke-virtual {v8, v10, v9}, Lorg/a/a;->optInt(II)I

    move-result v9

    if-nez v9, :cond_0

    const/4 v7, 0x0

    .line 159
    invoke-virtual {v8, v3, v7}, Lorg/a/a;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, -0x1

    .line 160
    invoke-virtual {v8, v4, v12, v13}, Lorg/a/a;->optLong(IJ)J

    move-result-wide v12

    .line 162
    invoke-virtual {v8, v10, v4}, Lorg/a/a;->put(II)Lorg/a/a;

    .line 169
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getActivityState()Lcom/adjust/sdk/ActivityState;

    move-result-object v14

    .line 170
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getAdjustConfig()Lcom/adjust/sdk/AdjustConfig;

    move-result-object v15

    .line 171
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getDeviceInfo()Lcom/adjust/sdk/a;

    move-result-object v16

    .line 172
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getSessionParameters()Lcom/adjust/sdk/SessionParameters;

    move-result-object v17

    .line 166
    invoke-static/range {v11 .. v17}, Lcom/adjust/sdk/PackageFactory;->buildReftagSdkClickPackage(Ljava/lang/String;JLcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/a;Lcom/adjust/sdk/SessionParameters;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v7

    .line 175
    iget-object v8, v1, Lcom/adjust/sdk/SdkClickHandler$2;->a:Lcom/adjust/sdk/SdkClickHandler;

    invoke-virtual {v8, v7}, Lcom/adjust/sdk/SdkClickHandler;->sendSdkClick(Lcom/adjust/sdk/ActivityPackage;)V

    const/4 v7, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    .line 179
    invoke-virtual {v2, v5}, Lcom/adjust/sdk/SharedPreferencesManager;->saveRawReferrerArray(Lorg/a/a;)V
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 182
    iget-object v2, v1, Lcom/adjust/sdk/SdkClickHandler$2;->a:Lcom/adjust/sdk/SdkClickHandler;

    invoke-static {v2}, Lcom/adjust/sdk/SdkClickHandler;->access$100(Lcom/adjust/sdk/SdkClickHandler;)Lcom/adjust/sdk/ILogger;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/a/b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "Send saved raw referrers error (%s)"

    invoke-interface {v2, v0, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
