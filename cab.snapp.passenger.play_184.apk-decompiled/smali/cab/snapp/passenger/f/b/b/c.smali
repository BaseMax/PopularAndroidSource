.class public final Lcab/snapp/passenger/f/b/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/f/b/b/c$b;,
        Lcab/snapp/passenger/f/b/b/c$c;,
        Lcab/snapp/passenger/f/b/b/c$a;,
        Lcab/snapp/passenger/f/b/b/c$e;,
        Lcab/snapp/passenger/f/b/b/c$d;
    }
.end annotation


# static fields
.field private static a:Lcab/snapp/passenger/f/b/b/c;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/gms/analytics/h;

.field private d:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

.field private e:Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcab/snapp/passenger/f/b/b/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcab/snapp/passenger/f/b/b/c;->b:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/f/b/b/c;->init(Landroid/app/Application;)V

    return-void
.end method

.method public static getInstance()Lcab/snapp/passenger/f/b/b/c;
    .locals 1

    .line 69
    sget-object v0, Lcab/snapp/passenger/f/b/b/c;->a:Lcab/snapp/passenger/f/b/b/c;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcab/snapp/passenger/f/b/b/c;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/c;-><init>()V

    sput-object v0, Lcab/snapp/passenger/f/b/b/c;->a:Lcab/snapp/passenger/f/b/b/c;

    .line 73
    :cond_0
    sget-object v0, Lcab/snapp/passenger/f/b/b/c;->a:Lcab/snapp/passenger/f/b/b/c;

    return-object v0
.end method

.method public static release()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    sput-object v0, Lcab/snapp/passenger/f/b/b/c;->a:Lcab/snapp/passenger/f/b/b/c;

    return-void
.end method


# virtual methods
.method public final getUserCellPhone()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b/c;->d:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getCellphone()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUserCredit()Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;
    .locals 1

    .line 132
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b/c;->e:Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    return-object v0
.end method

.method public final getUserEmail()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b/c;->d:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasUserEmailProvided()Z
    .locals 3

    .line 89
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b/c;->d:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/f/b/b/c;->d:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hasUserPhoneProvided()Z
    .locals 3

    .line 108
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b/c;->d:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getCellphone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/f/b/b/c;->d:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getCellphone()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final init(Landroid/app/Application;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/f/b/b/c;->b:Ljava/lang/String;

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForStaging()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f12017f

    .line 166
    invoke-virtual {v2, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f12017c

    .line 167
    invoke-virtual {v2, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 169
    new-instance v14, Lcom/adjust/sdk/AdjustConfig;

    const v5, 0x7f12002a

    invoke-virtual {v2, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "production"

    invoke-direct {v14, v2, v5, v6}, Lcom/adjust/sdk/AdjustConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x19

    const-wide/32 v8, 0x5e92e707

    const-wide/32 v10, 0x7c011840

    const-wide/32 v12, 0x3fb42294

    const-wide/32 v15, 0x75faf120

    move-object v5, v14

    move-object/from16 v17, v14

    move-wide v14, v15

    .line 170
    invoke-virtual/range {v5 .. v15}, Lcom/adjust/sdk/AdjustConfig;->setAppSecret(JJJJJ)V

    .line 175
    invoke-static/range {v17 .. v17}, Lcom/adjust/sdk/Adjust;->onCreate(Lcom/adjust/sdk/AdjustConfig;)V

    .line 177
    invoke-static {}, Lcab/snapp/passenger/f/b/b;->getInstance()Lcab/snapp/passenger/f/b/b;

    move-result-object v5

    new-instance v6, Lcab/snapp/passenger/f/b/b$b;

    invoke-direct {v6}, Lcab/snapp/passenger/f/b/b$b;-><init>()V

    .line 178
    invoke-virtual {v6, v2}, Lcab/snapp/passenger/f/b/b$b;->with(Landroid/app/Application;)Lcab/snapp/passenger/f/b/b$b;

    move-result-object v6

    const/4 v7, 0x0

    .line 179
    invoke-virtual {v6, v0, v7}, Lcab/snapp/passenger/f/b/b$b;->supportWebEngage(Ljava/lang/String;Z)Lcab/snapp/passenger/f/b/b$b;

    move-result-object v0

    .line 180
    invoke-virtual {v0, v4}, Lcab/snapp/passenger/f/b/b$b;->supportAppmetrica(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b$b;

    move-result-object v0

    move-object/from16 v4, v17

    .line 181
    invoke-virtual {v0, v4}, Lcab/snapp/passenger/f/b/b$b;->supportAdjust(Lcom/adjust/sdk/AdjustConfig;)Lcab/snapp/passenger/f/b/b$b;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b$b;->supportFirebase()Lcab/snapp/passenger/f/b/b$b;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b$b;->build()Lcab/snapp/passenger/f/b/b$a;

    move-result-object v0

    .line 177
    invoke-virtual {v5, v0}, Lcab/snapp/passenger/f/b/b;->init(Lcab/snapp/passenger/f/b/b$a;)Lcab/snapp/passenger/f/b/b;

    .line 187
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->setRegistrationID(Ljava/lang/String;)V

    .line 191
    invoke-static {v0, v2}, Lcom/adjust/sdk/Adjust;->setPushToken(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 200
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f1200ed

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/analytics/d;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/d;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/h;

    move-result-object v0

    iput-object v0, v1, Lcab/snapp/passenger/f/b/b/c;->c:Lcom/google/android/gms/analytics/h;

    .line 202
    iget-object v0, v1, Lcab/snapp/passenger/f/b/b/c;->c:Lcom/google/android/gms/analytics/h;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/h;->enableAdvertisingIdCollection(Z)V

    .line 203
    iget-object v0, v1, Lcab/snapp/passenger/f/b/b/c;->c:Lcom/google/android/gms/analytics/h;

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/h;->setSampleRate(D)V

    return-void

    .line 205
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForStaging()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f120180

    .line 210
    invoke-virtual {v2, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {}, Lcab/snapp/passenger/f/b/b;->getInstance()Lcab/snapp/passenger/f/b/b;

    move-result-object v4

    new-instance v5, Lcab/snapp/passenger/f/b/b$b;

    invoke-direct {v5}, Lcab/snapp/passenger/f/b/b$b;-><init>()V

    .line 213
    invoke-virtual {v5, v2}, Lcab/snapp/passenger/f/b/b$b;->with(Landroid/app/Application;)Lcab/snapp/passenger/f/b/b$b;

    move-result-object v2

    .line 214
    invoke-virtual {v2, v0, v3}, Lcab/snapp/passenger/f/b/b$b;->supportWebEngage(Ljava/lang/String;Z)Lcab/snapp/passenger/f/b/b$b;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b$b;->build()Lcab/snapp/passenger/f/b/b$a;

    move-result-object v0

    .line 212
    invoke-virtual {v4, v0}, Lcab/snapp/passenger/f/b/b;->init(Lcab/snapp/passenger/f/b/b$a;)Lcab/snapp/passenger/f/b/b;

    .line 219
    :try_start_1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 222
    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->setRegistrationID(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    return-void

    :catch_1
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final isReportAllowedForProduction()Z
    .locals 1

    .line 787
    sget-object v0, Lcab/snapp/passenger/c;->SEND_ANALYTICS_DATA:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isReportAllowedForStaging()Z
    .locals 1

    .line 808
    sget-object v0, Lcab/snapp/passenger/c;->SEND_STAGING_ANALYTICS_DATA:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final reportChangeUser(Ljava/lang/String;)V
    .locals 1

    .line 242
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForStaging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    invoke-static {p1}, Lcab/snapp/c/b;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-static {}, Lcab/snapp/passenger/f/b/b;->getInstance()Lcab/snapp/passenger/f/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/b/b;->changeWebengageUser(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 250
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 289
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForStaging()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    :cond_1
    invoke-static {}, Lcab/snapp/passenger/f/b/b;->getInstance()Lcab/snapp/passenger/f/b/b;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/f/b/a/e;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcab/snapp/passenger/f/b/a/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b;->sendWebEngageEvent(Lcab/snapp/passenger/f/b/a/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 296
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForStaging()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    :cond_3
    invoke-static {}, Lcab/snapp/passenger/f/b/b;->getInstance()Lcab/snapp/passenger/f/b/b;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/f/b/a/e;

    invoke-direct {v1, p1, p2}, Lcab/snapp/passenger/f/b/a/e;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b;->sendWebEngageEvent(Lcab/snapp/passenger/f/b/a/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 331
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final reportLogOutUser()V
    .locals 1

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForStaging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    invoke-static {}, Lcab/snapp/passenger/f/b/b;->getInstance()Lcab/snapp/passenger/f/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b;->logoutWebengageUser()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportScreenName(Ljava/lang/String;)V
    .locals 1

    .line 764
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 769
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b/c;->c:Lcom/google/android/gms/analytics/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/h;->setScreenName(Ljava/lang/String;)V

    .line 770
    iget-object p1, p0, Lcab/snapp/passenger/f/b/b/c;->c:Lcom/google/android/gms/analytics/h;

    new-instance v0, Lcom/google/android/gms/analytics/e$d;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/e$d;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/e$d;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/h;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 774
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 775
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportUserAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 411
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForStaging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    invoke-static {}, Lcab/snapp/passenger/f/b/b;->getInstance()Lcab/snapp/passenger/f/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/f/b/b;->setWebengageUserCustomAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 418
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 419
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportUserAttributes(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "unknown"

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 353
    :try_start_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 355
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getFullname()Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getEmail()Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getCellphone()Ljava/lang/String;

    move-result-object v5

    .line 358
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 360
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ProfileMeta;->getBirthDate()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v6, :cond_1

    .line 365
    :try_start_1
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v6, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 367
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 368
    invoke-virtual {v6, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 370
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 371
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v8, 0x5

    .line 372
    :try_start_3
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_0

    :catch_2
    move-exception v6

    const/4 p1, 0x0

    :goto_0
    const/4 v7, 0x0

    .line 377
    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    invoke-static {v6}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    const/4 v6, 0x0

    goto :goto_2

    :cond_0
    move-object v4, v2

    move-object v5, v4

    :cond_1
    const/4 p1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 384
    :goto_2
    invoke-static {v4}, Lcab/snapp/c/i;->isEmailValid(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 386
    invoke-virtual {p0, v4}, Lcab/snapp/passenger/f/b/b/c;->reportChangeUser(Ljava/lang/String;)V

    .line 389
    :cond_2
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "%d/%d/%d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v10, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v10, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v10, v0

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-virtual {p0, v2, v4, v5, p1}, Lcab/snapp/passenger/f/b/b/c;->reportUserCommonAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "lang"

    .line 392
    invoke-static {}, Lcab/snapp/passenger/f/g;->getCurrentActiveLocaleString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcab/snapp/passenger/f/b/b/c;->reportUserAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :catch_3
    move-exception p1

    .line 396
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 397
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportUserCommonAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 435
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForStaging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    :cond_0
    invoke-static {}, Lcab/snapp/passenger/f/b/b;->getInstance()Lcab/snapp/passenger/f/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcab/snapp/passenger/f/b/b;->setWebengageUserCommonAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 442
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 715
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 719
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 720
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 736
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b/c;->c:Lcom/google/android/gms/analytics/h;

    new-instance v1, Lcom/google/android/gms/analytics/e$a;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/e$a;-><init>()V

    .line 742
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/e$a;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$a;

    move-result-object p1

    .line 743
    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/e$a;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$a;

    move-result-object p1

    .line 744
    invoke-virtual {p1, p3}, Lcom/google/android/gms/analytics/e$a;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$a;

    move-result-object p1

    .line 745
    invoke-virtual {p1, p4, p5}, Lcom/google/android/gms/analytics/e$a;->setValue(J)Lcom/google/android/gms/analytics/e$a;

    move-result-object p1

    .line 746
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/e$a;->build()Ljava/util/Map;

    move-result-object p1

    .line 741
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/h;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 750
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 751
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final sendEventViaAdjust(Ljava/lang/String;)V
    .locals 1

    .line 619
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 624
    invoke-virtual {p0, p1, v0, v0}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 628
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 629
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final sendEventViaAppmetrica(Ljava/lang/String;Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;)V
    .locals 3

    .line 643
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 648
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_4

    .line 652
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->getCategory()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "category"

    .line 654
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    :cond_1
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "action"

    .line 658
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    :cond_2
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "label"

    .line 662
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    :cond_3
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "value"

    .line 666
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :cond_4
    invoke-static {}, Lcab/snapp/passenger/f/b/b;->getInstance()Lcab/snapp/passenger/f/b/b;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcab/snapp/passenger/f/b/b;->sendAppmetricaEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 674
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 675
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V
    .locals 1

    .line 689
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 694
    :cond_0
    invoke-static {}, Lcab/snapp/passenger/f/b/b;->getInstance()Lcab/snapp/passenger/f/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/f/b/b;->sendAppmetricaEvent(Ljava/lang/String;Lorg/a/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 698
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 699
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final sendUserProfileToAppmetrica(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 3

    .line 452
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForStaging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "unknown"

    if-eqz p1, :cond_1

    .line 460
    :try_start_1
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 462
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getFullname()Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getCellphone()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    move-object v1, p1

    .line 466
    :goto_0
    invoke-static {}, Lcab/snapp/passenger/f/b/b;->getInstance()Lcab/snapp/passenger/f/b/b;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcab/snapp/passenger/f/b/b;->sendUserProfileToAppmetrica(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 470
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 471
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 572
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 577
    invoke-virtual {p0, p1, p2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 581
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 582
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 486
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 491
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_1

    const-string v1, "email"

    .line 494
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "ride_id"

    .line 499
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_2
    iget-object p2, p0, Lcab/snapp/passenger/f/b/b/c;->b:Ljava/lang/String;

    const-string p3, "play"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, "store"

    if-eqz p2, :cond_3

    :try_start_1
    const-string p2, "google play"

    .line 504
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string p2, "cafe bazaar"

    .line 508
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :goto_0
    invoke-static {}, Lcab/snapp/passenger/f/b/b;->getInstance()Lcab/snapp/passenger/f/b/b;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcab/snapp/passenger/f/b/b;->sendAdjustEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 515
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 516
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final sendWithAttributesViaAppmetrica(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 596
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 601
    invoke-virtual {p0, p1, p2, v0, v0}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAppmetrica(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 605
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 606
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final sendWithAttributesViaAppmetrica(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 532
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/b/c;->isReportAllowedForProduction()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 537
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_1

    const-string v1, "email"

    .line 540
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "ride_id"

    .line 545
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p4, :cond_3

    const-string p2, "phone_number"

    .line 550
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :cond_3
    invoke-static {}, Lcab/snapp/passenger/f/b/b;->getInstance()Lcab/snapp/passenger/f/b/b;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcab/snapp/passenger/f/b/b;->sendAppmetricaEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 557
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 558
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setCreditResponse(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcab/snapp/passenger/f/b/b/c;->e:Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    return-void
.end method

.method public final setUserProfile(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcab/snapp/passenger/f/b/b/c;->d:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    return-void
.end method
