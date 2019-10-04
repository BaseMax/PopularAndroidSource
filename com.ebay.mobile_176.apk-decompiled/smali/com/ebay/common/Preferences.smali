.class public Lcom/ebay/common/Preferences;
.super Lcom/ebay/nautilus/domain/util/GlobalPreferencesImpl;
.source "Preferences.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final HAS_SHOWN_DS6_WELCOME_SCREEN:Ljava/lang/String; = "hasShownDS6WelcomeScreen"

.field public static final HAS_SHOWN_SOCIAL_ACCOUNT_SPLASH_SCREEN:Ljava/lang/String; = "hasShownSocialAccountSplashScreen"

.field public static final PREF_DEVELOPER_OPTIONS_ENABLED:Ljava/lang/String; = "developerOptions"

.field public static final PREF_DEVELOPER_OPTION_SEARCH_URL:Ljava/lang/String; = "developerOptionSearchUrl"

.field public static final PREF_GUEST_WATCH:Ljava/lang/String; = "guestWatch"

.field public static final PREF_GUEST_WATCH_XTAG:Ljava/lang/String; = "guestWatchXTag"

.field private static final PREF_LAST_SELECTED_SORT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREF_MODULE_HEADER_V2:Ljava/lang/String; = "moduleHeaderV2"

.field public static final PREF_MODULE_HEADER_V2_XTAG:Ljava/lang/String; = "moduleHeaderV2XTag"

.field public static final SYNC_COUNTRY_CHANGED:Ljava/lang/String; = "syncCountryChanged"


# instance fields
.field private loginManager:Lcom/facebook/login/LoginManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "followingInterestSelectedSort"

    const-string v1, "followingUserSelectedSort"

    const-string v2, "followingCollectionSelectedSort"

    .line 135
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/Preferences;->PREF_LAST_SELECTED_SORT_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ebay/nautilus/domain/util/PreferencesHelper;Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p4    # Landroid/content/SharedPreferences;
        .annotation runtime Lcom/ebay/nautilus/domain/dagger/NautilusDomainQualifier;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 313
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/util/GlobalPreferencesImpl;-><init>(Landroid/content/Context;Lcom/ebay/nautilus/domain/util/PreferencesHelper;Lcom/ebay/nautilus/kernel/crypto/CryptUtilsFactory;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private addPrefString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v0}, Lcom/ebay/mobile/common/EbayUtil;->unflattenString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 422
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    .line 424
    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 425
    invoke-static {v0}, Lcom/ebay/mobile/common/EbayUtil;->flattenString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 426
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 427
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private addUnqualifiedPrefString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 414
    invoke-virtual {p0, p1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ebay/common/Preferences;->addPrefString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getLoginManager()Lcom/facebook/login/LoginManager;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/ebay/common/Preferences;->loginManager:Lcom/facebook/login/LoginManager;

    if-nez v0, :cond_0

    .line 374
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/Preferences;->loginManager:Lcom/facebook/login/LoginManager;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/Preferences;->loginManager:Lcom/facebook/login/LoginManager;

    return-object v0
.end method

.method private static getNeverShowUserPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 318
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 330
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "No preference associated with this permission"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "neverShowReadContact"

    return-object p0

    :pswitch_1
    const-string p0, "neverShowStorageButton"

    return-object p0

    :pswitch_2
    const-string p0, "neverShowCameraButton"

    return-object p0

    :pswitch_3
    const-string p0, "neverShowLocationButton"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x70918bc1 -> :sswitch_4
        -0x3c1ac56 -> :sswitch_3
        0x1b9efa65 -> :sswitch_2
        0x516a29a7 -> :sswitch_1
        0x75dd2d9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPayPalAccountStatus()Ljava/lang/String;
    .locals 3

    .line 933
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "payPalAccountStatus"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrefStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 407
    invoke-static {p1}, Lcom/ebay/mobile/common/EbayUtil;->unflattenString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 408
    invoke-static {p1}, Lcom/ebay/mobile/common/EbayUtil;->listToArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRefineLockKey(Lcom/ebay/nautilus/domain/EbayCountry;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/EbayCountry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_refine_lock_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUnqualifiedPrefStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 397
    invoke-virtual {p0, p1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/common/Preferences;->getPrefStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized notifyAuthenticationChanged(Lcom/ebay/nautilus/domain/app/Authentication;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 588
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    :goto_0
    const-string/jumbo v0, "syncAuthChanged"

    .line 591
    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ContentSyncManager;->notifyUpdate(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 587
    monitor-exit p0

    throw p1
.end method

.method private saveFingerprintUserAndEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1457
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fingerprintIdUser"

    .line 1458
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1459
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1460
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fingerprintIdUserId"

    .line 1461
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 1462
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1463
    iget-object p3, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v0, "lastFingerprintSigninEntered"

    .line 1464
    invoke-virtual {p0, v0}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1465
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1466
    iget-object p1, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "lastFingerprintSigninEmail"

    .line 1467
    invoke-virtual {p0, p3}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1468
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public addPrefStringsUserNameHistory(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "PrefUserNameHistory"

    .line 455
    invoke-direct {p0, v0, p1}, Lcom/ebay/common/Preferences;->addUnqualifiedPrefString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cleanupCguidPreferences()V
    .locals 2

    .line 1271
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "coreCguidGuid"

    .line 1272
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "coreCguidExpires"

    .line 1273
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "coreCguidGuidUnlinked"

    .line 1274
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "coreCguidExpiresUnlinked"

    .line 1275
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1276
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final clearCurrentCountry()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "currentEbayCountry"

    .line 524
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 525
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 527
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getNoSync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->setCountry(Lcom/ebay/nautilus/domain/EbayCountry;)V

    return-void
.end method

.method public clearDs6ThemePreference()Z
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ds6Theme"

    .line 612
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 613
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public clearDs6XTag()V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ds6XTag"

    .line 624
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 625
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearFingerprintUser()V
    .locals 4

    .line 1473
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastFingerprintSigninEntered"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    .line 1474
    invoke-direct {p0, v1, v2, v3}, Lcom/ebay/common/Preferences;->saveFingerprintUserAndEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1477
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/ebay/common/Preferences;->setFingerprintEnabled(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 1478
    invoke-virtual {p0, v1, v0}, Lcom/ebay/common/Preferences;->setFingerprintIsOptIn(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearIsDeveloperOptionSearchUrlEnabled()V
    .locals 2

    .line 2195
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "developerOptionSearchUrl"

    .line 2196
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearIsDs6ThemeEnabled()V
    .locals 2

    .line 2042
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ds6Theme"

    .line 2043
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2044
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearIsDynoSearchAnswersEnabled()V
    .locals 2

    .line 2138
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableDynoInSearchAnswers"

    .line 2139
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearIsDynoSearchAnswersForced()V
    .locals 2

    .line 2157
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "showEnableDynoInSearchAnswers"

    .line 2158
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearIsSearchMagForced()V
    .locals 2

    .line 2176
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "searchMag"

    .line 2177
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearLastKeywordSearch()V
    .locals 2

    .line 2257
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "searchLastKeywords"

    .line 2258
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearLastSignInEnteredPuuid()V
    .locals 2

    .line 817
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastSigninEnteredPuuid"

    .line 818
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 819
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearMyEbayPreferences()V
    .locals 2

    .line 1681
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_REFRESH_WATCHING"

    .line 1683
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_refresh_bids"

    .line 1685
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_refresh_offers"

    .line 1686
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_refresh_didnt_win"

    .line 1687
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_refresh_purchases"

    .line 1688
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1689
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearPayPalCheckoutSettings()V
    .locals 2

    .line 841
    sget-object v0, Lcom/ebay/nautilus/domain/analytics/mts/MimsUtil;->PROVIDER_ID_PAYPAL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ebay/nautilus/domain/analytics/mts/MimsUtil;->removeIdentity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final clearPostalCode()V
    .locals 2

    .line 797
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "shipToPostalCode"

    .line 798
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "searchPostalCode"

    .line 799
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 800
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearPrefGuestWatchXtag()V
    .locals 2

    .line 2389
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guestWatchXTag"

    .line 2390
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2391
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearPrefModuleHeaderV2Xtag()V
    .locals 2

    .line 2341
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "moduleHeaderV2XTag"

    .line 2342
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2343
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearPreloadSearchViewModels()V
    .locals 2

    .line 2214
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preloadSearchViewModels"

    .line 2215
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2216
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final clearSellerSegment()V
    .locals 1

    const/4 v0, 0x0

    .line 658
    invoke-virtual {p0, v0}, Lcom/ebay/common/Preferences;->setSellerSegment(Ljava/lang/String;)V

    return-void
.end method

.method public expandSearchFilters(Z)Z
    .locals 2

    .line 2221
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PrefSearchExpandFilters"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public fingerprintHasARegisteredUser()Z
    .locals 4

    const-string v0, ""

    .line 1429
    iget-object v1, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "fingerprintIdUser"

    invoke-virtual {p0, v2}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getApptentiveSwitch()Z
    .locals 3

    .line 1653
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "apptentiveSwitch"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBuyableItemCount(I)I
    .locals 2

    .line 1844
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "buyableItemCount"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getCountryAutoDetected()Z
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "autodetectCountry"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 483
    invoke-static {}, Lcom/ebay/nautilus/kernel/dagger/KernelComponentHolder;->getOrCreateInstance()Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    .line 484
    invoke-interface {v0}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentCountryIfSet()Lcom/ebay/nautilus/domain/EbayCountry;
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentEbayCountry"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->deserialize(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    return-object v0
.end method

.method final getCurrentCountryImpl()Lcom/ebay/nautilus/domain/EbayCountry;
    .locals 1

    .line 493
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getCurrentCountryIfSet()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/ebay/common/Preferences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ebay/common/view/util/EbayCountryManager;->detectCountry(Landroid/content/Context;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getCurrentSite()Lcom/ebay/nautilus/domain/EbaySite;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 471
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    return-object v0
.end method

.method public getDisplayUploadNotificationAlert()Z
    .locals 3

    .line 688
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "displayUploadNotificationInfo"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDs6XTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ds6XTag"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFacebookSignInEnabled()Z
    .locals 3

    .line 2086
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "facebookSignIn"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFacebookSignInEnrolledUser()Ljava/lang/String;
    .locals 3

    .line 2103
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "facebookSignInUser"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprintEnabled(Ljava/lang/String;)Z
    .locals 2

    .line 1424
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fingerprintId"

    invoke-virtual {p0, v1, p1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getFollowSearchTooltipDismissed(J)J
    .locals 2

    .line 1832
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PrefSinceFollowSearchToolTip"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getGooglePayEnvironmentProd()Z
    .locals 3

    .line 2420
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "getGooglePayEnvironmentProd"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getGoogleSignInEnabled()Z
    .locals 3

    .line 1542
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "googleSignIn"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getGoogleSignInEnrolledEmail()Ljava/lang/String;
    .locals 3

    .line 1568
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "googleSignInEmail"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleSignInEnrolledName()Ljava/lang/String;
    .locals 3

    .line 1573
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "googleSignInName"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleSignInEnrolledUser()Ljava/lang/String;
    .locals 3

    .line 1563
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "googleSignInUser"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageSearchCount()I
    .locals 3

    .line 963
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "imageSearchCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getImageSearchFeedbackCount()I
    .locals 3

    .line 983
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "imageSearchFeedbackCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastBuyerFeedback(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2288
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastFeedbackLeftAsBuyer"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastFollowLanding()I
    .locals 3

    .line 1003
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "followingLastTabIdx"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastFullCouponCollapse()J
    .locals 4

    .line 1125
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastFullCouponCollapseDate"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastIntentsTab()I
    .locals 3

    .line 1395
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "homeLastIntentsTab"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastKeywordSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2245
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "searchLastKeywords"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastMdnsSyncDate()J
    .locals 4

    .line 1154
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastMdnsSyncDate"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastNotificationOptOutTime(Ljava/lang/String;)J
    .locals 3

    .line 2468
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notificationOptOutTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSavedSearchProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1943
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastSavedSearchProvider"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastScheduledCart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2264
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastSuccessfulScheduledCartId"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastSearchTab(I)I
    .locals 2

    .line 1868
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_tab"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLastSeenCouponsAsFlexDcsState()Z
    .locals 3

    .line 1117
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastCouponsAsFlexState"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastSeenDealsDcsState()Z
    .locals 3

    .line 1095
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastDealsState"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastSeenFlexDcsState()Z
    .locals 3

    .line 1073
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastFlexState"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastSeenFlexNotificationVersion()I
    .locals 3

    .line 1008
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastSeenFlexNotificationVersion"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastSeenFlexPayloadVersion()Ljava/lang/String;
    .locals 3

    .line 1049
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastFlexPayloadVersion"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSellerFeedback(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2276
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastFeedbackLeftAsSeller"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastSignInDate()J
    .locals 4

    .line 1919
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastSignInDate"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSignInEntered(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1880
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastSigninEntered"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastSignInEnteredPuuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 805
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastSigninEnteredPuuid"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastSignInFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1904
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastFingerprintSigninEntered"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastSignInFingerprintEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1892
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastFingerprintSigninEmail"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLicenseUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "file:///android_asset/license.html"

    return-object v0
.end method

.method public getMyEbayLastBidsRefresh(J)J
    .locals 2

    .line 1800
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_refresh_bids"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMyEbayLastDidntWinRefresh(J)J
    .locals 2

    .line 1815
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_refresh_didnt_win"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMyEbayLastOffersRefresh(J)J
    .locals 2

    .line 1805
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_refresh_offers"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMyEbayLastPurchasesRefresh(J)J
    .locals 2

    .line 1810
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_refresh_purchases"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMyEbayLastWatchingRefresh(J)J
    .locals 2

    .line 1820
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "LAST_REFRESH_WATCHING"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getNotificationsBuyingTone()Ljava/lang/String;
    .locals 3

    .line 906
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "notification_buying_tone"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.resource://com.ebay.mobile/2131820546"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationsGeneralTone()Ljava/lang/String;
    .locals 3

    .line 878
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "notifications_general_tone"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.resource://com.ebay.mobile/2131820546"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationsSavedSearchTone()Ljava/lang/String;
    .locals 3

    .line 920
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "notifications_saved_search_tone"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.resource://com.ebay.mobile/2131820548"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationsSellingTone()Ljava/lang/String;
    .locals 3

    .line 892
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "notifications_item_sold_tone"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.resource://com.ebay.mobile/2131820547"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPostalCode()Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;
    .locals 4

    .line 701
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "searchPostalCode"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "shipToPostalCode"

    invoke-virtual {p0, v3}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 706
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "shipToPostalCode"

    .line 709
    invoke-virtual {p0, v3}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 710
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 714
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v2, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    invoke-direct {v2, v0}, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;-><init>(Ljava/lang/String;)V

    :cond_2
    return-object v2
.end method

.method public getPrefGuestWatchEnabled()Ljava/lang/Boolean;
    .locals 3

    .line 2351
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "guestWatch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPrefGuestWatchXtag()Ljava/lang/String;
    .locals 3

    .line 2370
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "guestWatchXTag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefModuleHeaderV2()Ljava/lang/Boolean;
    .locals 3

    .line 2303
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "moduleHeaderV2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPrefModuleHeaderV2Xtag()Ljava/lang/String;
    .locals 3

    .line 2322
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "moduleHeaderV2XTag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefSearchView(I)I
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PrefSearchResultView"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getPrefStringFollowSortSpecificationId(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1190
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/ebay/common/Preferences;->PREF_LAST_SELECTED_SORT_LIST:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrefStringFollowedSearchesSortSpecificationId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1211
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "followedSearchesSelectedSort"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrefStringsUserNameHistory()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "PrefUserNameHistory"

    .line 446
    invoke-direct {p0, v0}, Lcom/ebay/common/Preferences;->getUnqualifiedPrefStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrelistBottomSheetDisplayCount(I)I
    .locals 2

    .line 1856
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "prelistEducationalBottomSheetDisplayCount"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getRateAppBinAction(Z)Z
    .locals 2

    .line 1602
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "rateAppBinAction"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getRateAppInstallDate(J)J
    .locals 2

    .line 1626
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "rateAppInstallDate"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getRateAppLaunchCount(I)I
    .locals 2

    .line 1638
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "rateAppLaunchCount"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getRateAppListAction(Z)Z
    .locals 2

    .line 1614
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "rateAppListAction"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getRateAppUserSaidNo(Z)Z
    .locals 2

    .line 1578
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "rateAppUserSaidNo"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getRateAppUserSaidYes(Z)Z
    .locals 2

    .line 1590
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "rateAppUserSaidYes"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getRefineLock(Lcom/ebay/nautilus/domain/EbayCountry;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/EbayCountry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2008
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1, p2}, Lcom/ebay/common/Preferences;->getRefineLockKey(Lcom/ebay/nautilus/domain/EbayCountry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSeenNotificationTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1175
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "seenNotificationTypes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSellerSegment()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 644
    invoke-static {}, Lcom/ebay/nautilus/kernel/dagger/KernelComponentHolder;->getOrCreateInstance()Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    .line 645
    invoke-interface {v0}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getSellerSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getSellerSegmentImpl()Ljava/lang/String;
    .locals 3

    .line 653
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sellerSegment"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getShipToPostalCode()Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;
    .locals 4

    .line 725
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "shipToPostalCode"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "searchPostalCode"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v1, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "shipToPostalCode"

    .line 733
    invoke-virtual {p0, v3}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 734
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 738
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v2, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    invoke-direct {v2, v0}, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;-><init>(Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method public getShowImproveLocationDialog()Z
    .locals 3

    .line 943
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "showImproveLocationDialog"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUserBusinessType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2233
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sellerBusinessType"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserHasSeenOnboarding()Z
    .locals 3

    .line 1251
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "showOnboardingBump"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUserIsPpa()Z
    .locals 3

    .line 829
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "user_is_ppa"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getWatchSort(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1231
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "watchingSortId"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasPayPalAccount()Z
    .locals 2

    .line 938
    invoke-direct {p0}, Lcom/ebay/common/Preferences;->getPayPalAccountStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasShownDs6WelcomeScreen(Z)Z
    .locals 2

    .line 1958
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "hasShownDS6WelcomeScreen"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public hasShownSocialAccountSplashScreen(Z)Z
    .locals 2

    .line 1970
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "hasShownSocialAccountSplashScreen"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public hasZipCode()Z
    .locals 1

    .line 719
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getPostalCode()Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->postalCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentUserTheRegisteredFingerprintUser(Ljava/lang/String;)Z
    .locals 3

    .line 1484
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fingerprintIdUser"

    .line 1485
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1486
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isCurrentUserTheRegisteredFingerprintUserId(Ljava/lang/String;)Z
    .locals 3

    .line 1491
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fingerprintIdUserId"

    .line 1492
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1493
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDeveloperOptionSearchUrlEnabled(Z)Z
    .locals 2

    .line 2183
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "developerOptionSearchUrl"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isDs6ThemeEnabled(Z)Z
    .locals 2

    .line 2030
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ds6Theme"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isDynoSearchAnswersEnabled(Z)Z
    .locals 2

    .line 2126
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableDynoInSearchAnswers"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isDynoSearchAnswersForced(Z)Z
    .locals 2

    .line 2145
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "showEnableDynoInSearchAnswers"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isFingerprintOptIn(Ljava/lang/String;)Z
    .locals 2

    .line 1530
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fingerprintIdIsOptIn"

    invoke-virtual {p0, v1, p1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isLastSavedSearchEmailChecked(Z)Z
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "saveSearchEmailToggle"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isLastSavedSearchPushChecked(Z)Z
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "saveSearchPushToggle"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isNotificationLedFlashEnabled()Z
    .locals 3

    .line 852
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "notifications_flash_led"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNotificationSettingOptedOut(Ljava/lang/String;Z)Z
    .locals 3

    .line 2450
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notificationOptOut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isNotificationSoundEnabled()Z
    .locals 3

    .line 846
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "notifications_play_sound"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNotificationVibrationEnabled()Z
    .locals 3

    .line 858
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "notifications_vibrate"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRealGuestUser()Z
    .locals 1

    .line 2402
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getPrefStringsUserNameHistory()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSearchMagForced(Z)Z
    .locals 2

    .line 2164
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "searchMag"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isSmartLockEnabled()Z
    .locals 3

    .line 2049
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "smartlock"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public lastSeenFlexNotificationVersionExists()Z
    .locals 2

    .line 1026
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastSeenFlexNotificationVersion"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public migrate27to28()V
    .locals 2

    .line 1697
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appUpgraded"

    .line 1699
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_paypal_account"

    .line 1701
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1702
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public migrate74()V
    .locals 2

    .line 1710
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rateAppSkipCount"

    .line 1711
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rateAppBannerStart"

    .line 1712
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1713
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public migrateEulaBanner()V
    .locals 2

    .line 1718
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "eulaBannerDismissedPre"

    .line 1719
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "eulaBannerDismissedPost"

    .line 1720
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1721
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public migrateListingFormPreferences(Lcom/ebay/nautilus/domain/content/dm/listingdraft/ListingDraftPreferences;)V
    .locals 7
    .param p1    # Lcom/ebay/nautilus/domain/content/dm/listingdraft/ListingDraftPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1731
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/listingdraft/ListingDraftPreferences;->alreadyExists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1734
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1739
    :cond_1
    iget-object v1, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1740
    invoke-static {}, Lcom/ebay/nautilus/domain/content/dm/listingdraft/ListingDraftPreferences;->getMigrationKeys()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1742
    invoke-virtual {p0, v3}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1743
    iget-object v5, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1745
    iget-object v5, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, ""

    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1746
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1747
    invoke-virtual {p1, v0, v3, v5}, Lcom/ebay/nautilus/domain/content/dm/listingdraft/ListingDraftPreferences;->setUserPref(Lcom/ebay/nautilus/domain/app/Authentication;Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    :cond_3
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1751
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public migrateRateAppPreferences()V
    .locals 4

    .line 1760
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rateAppBinAction"

    .line 1761
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rateAppLaunchCount"

    .line 1762
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rateAppListAction"

    .line 1763
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rateAppUserSaidNo"

    .line 1764
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rateAppUserSaidYes"

    .line 1765
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rateAppInstallDate"

    .line 1766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1767
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public migrateRefinementLocks(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 9
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "_"

    .line 1315
    invoke-virtual {p0, v0}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "([A-Z]{2})_refine_lock_(.+)$"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1319
    new-instance v1, Ljava/util/HashMap;

    .line 1320
    invoke-static {}, Lcom/ebay/mobile/search/RefinementLocks$RefinementLockType;->values()[Lcom/ebay/mobile/search/RefinementLocks$RefinementLockType;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1325
    invoke-static {}, Lcom/ebay/mobile/search/RefinementLocks$RefinementLockType;->values()[Lcom/ebay/mobile/search/RefinementLocks$RefinementLockType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 1326
    invoke-virtual {v5}, Lcom/ebay/mobile/search/RefinementLocks$RefinementLockType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1329
    :cond_0
    iget-object v2, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1331
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1332
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1334
    invoke-static {v5}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 1337
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1338
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    .line 1343
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    :cond_3
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    .line 1346
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    .line 1347
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 1348
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ebay/mobile/search/RefinementLocks$RefinementLockType;

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    .line 1354
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1355
    :cond_5
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-nez v8, :cond_6

    .line 1357
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    :cond_6
    invoke-interface {v8, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    if-nez v3, :cond_8

    return-void

    .line 1365
    :cond_8
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1366
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1367
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 1368
    :cond_9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v4, :cond_a

    return-void

    .line 1374
    :cond_a
    new-instance v0, Lcom/ebay/mobile/search/RefinementLocks;

    invoke-direct {v0, p1}, Lcom/ebay/mobile/search/RefinementLocks;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 1375
    invoke-virtual {v0, v4}, Lcom/ebay/mobile/search/RefinementLocks;->migrateRefinementLocks(Ljava/util/Map;)V

    return-void
.end method

.method public neverShowUserPreference(Ljava/lang/String;Z)Z
    .locals 1

    .line 2018
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/ebay/common/Preferences;->getNeverShowUserPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public preloadSearchViewModels(Z)Z
    .locals 2

    .line 2202
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preloadSearchViewModels"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public removeLocationLockPreferences()V
    .locals 4

    .line 1284
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1292
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "_refine_lock_SEARCHOTHERCOUNTRIES"

    .line 1294
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "_refine_lock_SEARCHLOCALCOUNTRY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "_refine_lock_MAXDISTANCE"

    .line 1295
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "_refine_lock_ZIPCODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    if-nez v1, :cond_2

    .line 1298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1300
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    .line 1305
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1306
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1307
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1308
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    return-void
.end method

.method public setBuyableItemCount(I)V
    .locals 2

    .line 1849
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "buyableItemCount"

    .line 1850
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1851
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCountryAutoDetected(Z)V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autodetectCountry"

    .line 516
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 517
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final setCurrentCountry(Lcom/ebay/nautilus/domain/EbayCountry;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    if-eqz p1, :cond_3

    .line 533
    iget-object v0, p1, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    if-nez v0, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getCurrentCountryIfSet()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    .line 540
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/EbayCountry;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "currentEbayCountry"

    .line 543
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 544
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 547
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getNoSync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 549
    invoke-interface {v0, p1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->setCountry(Lcom/ebay/nautilus/domain/EbayCountry;)V

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/Preferences;->context:Landroid/content/Context;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-static {v0, v1}, Lcom/ebay/common/content/EbayBroadcast;->sendSiteChangedBroadcast(Landroid/content/Context;Lcom/ebay/nautilus/domain/EbaySite;)V

    .line 554
    iget-object v0, p0, Lcom/ebay/common/Preferences;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/ebay/common/content/EbayBroadcast;->sendCountryChangedBroadcast(Landroid/content/Context;Lcom/ebay/nautilus/domain/EbayCountry;)V

    const-string/jumbo v0, "syncCountryChanged"

    .line 558
    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ContentSyncManager;->notifyUpdate(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 535
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->clearCurrentCountry()V

    return-void
.end method

.method public setCurrentUserAsFingerprintUser(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1442
    invoke-virtual {p0, p1, p2, p3, p2}, Lcom/ebay/common/Preferences;->setCurrentUserAsFingerprintUser(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentUserAsFingerprintUser(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p3, ""

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p4, ""

    .line 1451
    :goto_2
    invoke-direct {p0, p2, p3, p4}, Lcom/ebay/common/Preferences;->saveFingerprintUserAndEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDisplayUploadNotificationAlert()V
    .locals 3

    .line 693
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "displayUploadNotificationInfo"

    .line 694
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 695
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDs6ThemePreference(Z)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ds6Theme"

    .line 601
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 602
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDs6XTag(Ljava/lang/String;)V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ds6XTag"

    .line 631
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 632
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setExpandSearchFilters(Z)V
    .locals 2

    .line 2226
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PrefSearchExpandFilters"

    .line 2227
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2228
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFacebookSignInEnabled(Z)V
    .locals 2

    .line 2079
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "facebookSignIn"

    .line 2080
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2081
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFacebookSignInEnrolledUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2094
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "facebookSignInUser"

    .line 2095
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "facebookSignInEmail"

    .line 2096
    invoke-virtual {p0, v0}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "facebookSignInName"

    .line 2097
    invoke-virtual {p0, p2}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2098
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFingerprintEnabled(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 2

    .line 1417
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fingerprintId"

    .line 1418
    invoke-virtual {p0, v1, p2}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1419
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFingerprintIsOptIn(ZLjava/lang/String;)V
    .locals 2

    .line 1518
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fingerprintIdIsOptIn"

    .line 1519
    invoke-virtual {p0, v1, p2}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1520
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFingerprintRegisteredUserId(Ljava/lang/String;)V
    .locals 2

    .line 1505
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fingerprintIdUserId"

    .line 1506
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1507
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFollowSearchTooltipDismissed(J)V
    .locals 2

    .line 1837
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PrefSinceFollowSearchToolTip"

    .line 1838
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1839
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setGoogleSignInEnabled(Z)V
    .locals 2

    .line 1535
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "googleSignIn"

    .line 1536
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1537
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setGoogleSignInEnrolledUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1550
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "googleSignInUser"

    .line 1551
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1552
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1553
    iget-object p1, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "googleSignInEmail"

    .line 1554
    invoke-virtual {p0, v0}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1555
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1556
    iget-object p1, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "googleSignInName"

    .line 1557
    invoke-virtual {p0, p2}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1558
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHasShownDs6WelcomeScreen(Z)V
    .locals 2

    .line 1963
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasShownDS6WelcomeScreen"

    .line 1964
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1965
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHasShownSocialAccountSplashScreen(Z)V
    .locals 2

    .line 1975
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasShownSocialAccountSplashScreen"

    .line 1976
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1977
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setImageSearchCount(I)V
    .locals 3

    .line 953
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 954
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "imageSearchCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 955
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setImageSearchFeedbackCount(I)V
    .locals 3

    .line 973
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 974
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "imageSearchFeedbackCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 975
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsDeveloperOptionSearchUrlEnabled(Z)V
    .locals 2

    .line 2188
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "developerOptionSearchUrl"

    .line 2189
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2190
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsDs6ThemeEnabled(Z)V
    .locals 2

    .line 2035
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ds6Theme"

    .line 2036
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2037
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsDynoSearchAnswersEnabled(Z)V
    .locals 2

    .line 2131
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableDynoInSearchAnswers"

    .line 2132
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2133
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsDynoSearchAnswersForced(Z)V
    .locals 2

    .line 2150
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "showEnableDynoInSearchAnswers"

    .line 2151
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2152
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsLastSavedSearchEmailChecked(Z)V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "saveSearchEmailToggle"

    .line 570
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 571
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsLastSavedSearchPushChecked(Z)V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "saveSearchPushToggle"

    .line 582
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 583
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsSearchMagForced(Z)V
    .locals 2

    .line 2169
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "searchMag"

    .line 2170
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2171
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsSmartLockEnabled(Z)V
    .locals 2

    .line 2054
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "smartlock"

    .line 2055
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2056
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastBuyerFeedback(Ljava/lang/String;)V
    .locals 2

    .line 2293
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastFeedbackLeftAsBuyer"

    .line 2294
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2295
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastFollowLanding(I)V
    .locals 2

    .line 993
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "followingLastTabIdx"

    .line 994
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 995
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastFullCouponCollapse(J)V
    .locals 3

    const-string v0, "lastFullCouponCollapseDate"

    .line 1136
    invoke-virtual {p0, v0}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 1139
    iget-object p1, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1140
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1141
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 1144
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1145
    invoke-interface {v1, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1146
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastIntentsTab(I)V
    .locals 2

    .line 1385
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "homeLastIntentsTab"

    .line 1386
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1387
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastKeywordSearch(Ljava/lang/String;)V
    .locals 2

    .line 2250
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "searchLastKeywords"

    .line 2251
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2252
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastMdnsSyncDate(J)V
    .locals 2

    .line 1164
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastMdnsSyncDate"

    .line 1165
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1166
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastNotificationOptOutTime(Ljava/lang/String;J)V
    .locals 3

    .line 2478
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notificationOptOutTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2479
    invoke-virtual {p0, p1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2480
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastSavedSearchProvider(Ljava/lang/String;)V
    .locals 2

    .line 1948
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastSavedSearchProvider"

    .line 1949
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1950
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastScheduledCart(Ljava/lang/String;)V
    .locals 2

    .line 2269
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastSuccessfulScheduledCartId"

    .line 2270
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2271
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastSearchTab(I)V
    .locals 2

    .line 1873
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_tab"

    .line 1874
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1875
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastSeenCouponsAsFlexDcsState(Z)V
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastCouponsAsFlexState"

    .line 1106
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1107
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastSeenDealsDcsState(Z)V
    .locals 2

    .line 1083
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastDealsState"

    .line 1084
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1085
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastSeenFlexDcsState(Z)V
    .locals 2

    .line 1059
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastFlexState"

    .line 1060
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1061
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastSeenFlexNotificationVersion(I)V
    .locals 2

    .line 1013
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastSeenFlexNotificationVersion"

    .line 1014
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1015
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastSeenFlexPayloadVersion(Ljava/lang/String;)V
    .locals 2

    .line 1036
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastFlexPayloadVersion"

    .line 1037
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1038
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastSellerFeedback(Ljava/lang/String;)V
    .locals 2

    .line 2281
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastFeedbackLeftAsSeller"

    .line 2282
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2283
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastSignInDate(J)V
    .locals 2

    .line 1929
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastSignInDate"

    .line 1930
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1931
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastSignInEntered(Ljava/lang/String;)V
    .locals 2

    .line 1885
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastSigninEntered"

    .line 1886
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1887
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastSignInEnteredPuuid(Ljava/lang/String;)V
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastSigninEnteredPuuid"

    .line 811
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 812
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastSignInFingerprint(Ljava/lang/String;)V
    .locals 2

    .line 1909
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastFingerprintSigninEntered"

    .line 1910
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1911
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastSignInFingerprintEmail(Ljava/lang/String;)V
    .locals 2

    .line 1897
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastFingerprintSigninEmail"

    .line 1898
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1899
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMyEbayLastBidsRefresh(J)V
    .locals 2

    .line 1772
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_refresh_bids"

    .line 1773
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1774
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMyEbayLastDidntWinRefresh(J)V
    .locals 2

    .line 1793
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_refresh_didnt_win"

    .line 1794
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1795
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMyEbayLastOffersRefresh(J)V
    .locals 2

    .line 1779
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_refresh_offers"

    .line 1780
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1781
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMyEbayLastPurchasesRefresh(J)V
    .locals 2

    .line 1786
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_refresh_purchases"

    .line 1787
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1788
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMyEbayLastWatchingRefresh(J)V
    .locals 2

    .line 1825
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_REFRESH_WATCHING"

    .line 1826
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1827
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNeverShowUserPreference(Ljava/lang/String;Z)V
    .locals 1

    .line 2023
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2024
    invoke-static {p1}, Lcom/ebay/common/Preferences;->getNeverShowUserPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2025
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNotificationOptedOut(Ljava/lang/String;)V
    .locals 3

    .line 2458
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notificationOptOut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2459
    invoke-virtual {p0, p1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2460
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNotificationsBuyingTone(Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 898
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 899
    :goto_0
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notification_buying_tone"

    .line 900
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 901
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNotificationsGeneralTone(Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 870
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 871
    :goto_0
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notifications_general_tone"

    .line 872
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 873
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNotificationsSavedSearchTone(Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 912
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 913
    :goto_0
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notifications_saved_search_tone"

    .line 914
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 915
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNotificationsSellingTone(Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 884
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 885
    :goto_0
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notifications_item_sold_tone"

    .line 886
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 887
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNotificationsVibrationEnabled(Ljava/lang/Boolean;)V
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notifications_vibrate"

    .line 864
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 865
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPayPalAccountStatus(Ljava/lang/String;)V
    .locals 2

    .line 926
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "payPalAccountStatus"

    .line 927
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 928
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setPostalCode(Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;)V
    .locals 1

    const/4 v0, 0x0

    .line 779
    invoke-virtual {p0, p1, v0}, Lcom/ebay/common/Preferences;->setPostalCode(Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;Ljava/lang/String;)V

    return-void
.end method

.method public final setPostalCode(Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 751
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->countryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->countryCode:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 753
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->toString()Ljava/lang/String;

    move-result-object p1

    .line 755
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "searchPostalCode"

    .line 756
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 757
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez p2, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getCurrentUser()Ljava/lang/String;

    move-result-object p2

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "searchPostalCode"

    .line 762
    invoke-virtual {p0, v1, p2}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 763
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 765
    iget-object p2, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string/jumbo v0, "shipToPostalCode"

    .line 766
    invoke-virtual {p0, v0}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 767
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 771
    :cond_1
    iget-object p1, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo p2, "searchPostalCode"

    .line 772
    invoke-virtual {p0, p2}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 773
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public setPrefGooglePayEnvironmentProd(Z)V
    .locals 2

    .line 2410
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "getGooglePayEnvironmentProd"

    .line 2411
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2412
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPrefGuestWatchEnabled(Z)V
    .locals 2

    .line 2360
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guestWatch"

    .line 2361
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2362
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPrefGuestWatchXtag(Ljava/lang/String;)V
    .locals 2

    .line 2379
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guestWatchXTag"

    .line 2380
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2381
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPrefModuleHeaderV2(Z)V
    .locals 2

    .line 2312
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "moduleHeaderV2"

    .line 2313
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2314
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPrefModuleHeaderV2Xtag(Ljava/lang/String;)V
    .locals 2

    .line 2331
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "moduleHeaderV2XTag"

    .line 2332
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2333
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPrefSearchView(I)V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PrefSearchResultView"

    .line 461
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 462
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPrefStringFollowSortSpecificationId(ILjava/lang/String;)V
    .locals 2

    .line 1200
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ebay/common/Preferences;->PREF_LAST_SELECTED_SORT_LIST:Ljava/util/List;

    .line 1201
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1202
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPrefStringFollowedSearchesSortSpecificationId(Ljava/lang/String;)V
    .locals 2

    .line 1221
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "followedSearchesSelectedSort"

    .line 1222
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1223
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPrelistBottomSheetDisplayCount(I)V
    .locals 2

    .line 1861
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prelistEducationalBottomSheetDisplayCount"

    .line 1862
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1863
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPreloadSearchViewModels(Z)V
    .locals 2

    .line 2207
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preloadSearchViewModels"

    .line 2208
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2209
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRateAppBinAction(Z)V
    .locals 2

    .line 1607
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rateAppBinAction"

    .line 1608
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1609
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRateAppInstallDate(J)V
    .locals 2

    .line 1631
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rateAppInstallDate"

    .line 1632
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1633
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRateAppLaunchCount(I)V
    .locals 2

    .line 1643
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rateAppLaunchCount"

    .line 1644
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1645
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRateAppListAction(Z)V
    .locals 2

    .line 1619
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rateAppListAction"

    .line 1620
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1621
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRateAppUserSaidNo(Z)V
    .locals 2

    .line 1583
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rateAppUserSaidNo"

    .line 1584
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1585
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRateAppUserSaidYes(Z)V
    .locals 2

    .line 1595
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rateAppUserSaidYes"

    .line 1596
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1597
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRefineLock(Lcom/ebay/nautilus/domain/EbayCountry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/EbayCountry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1996
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1997
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/Preferences;->getRefineLockKey(Lcom/ebay/nautilus/domain/EbayCountry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1998
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSeenNotificationTypes(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1180
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "seenNotificationTypes"

    .line 1181
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final setSellerSegment(Ljava/lang/String;)V
    .locals 2

    .line 663
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getSellerSegmentImpl()Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "UNKNOWN"

    .line 667
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sellerSegment"

    .line 676
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 677
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 669
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v0, "sellerSegment"

    .line 670
    invoke-virtual {p0, v0}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 671
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void
.end method

.method public final setShipToPostalCode(Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 784
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->countryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->countryCode:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 786
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "shipToPostalCode"

    .line 787
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 788
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setShouldSuppressGooglePay(Z)V
    .locals 2

    .line 2428
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "suppressGooglePay"

    .line 2429
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2430
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setShowTooltipToHighlightRebranding(Z)V
    .locals 2

    .line 1405
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PrefShowToolTipToHighlightRebranding"

    .line 1406
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1407
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setUserBusinessType(Ljava/lang/String;)V
    .locals 2

    .line 2238
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sellerBusinessType"

    .line 2239
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2240
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setUserHasSeenOnboarding()V
    .locals 3

    .line 1259
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "showOnboardingBump"

    .line 1260
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1261
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setUserIsPpa(Z)V
    .locals 2

    .line 834
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_is_ppa"

    .line 835
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 836
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWasFacebookLastSignIn(Z)V
    .locals 2

    .line 2111
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "facebookSignInWasLastSignIn"

    .line 2112
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2113
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWasGoogleLastSignIn(Z)V
    .locals 2

    .line 2064
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "googleSignInWasLastSignIn"

    .line 2065
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2066
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWatchSort(Ljava/lang/String;)V
    .locals 2

    .line 1241
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "watchingSortId"

    .line 1242
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1243
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public shouldSuppressGooglePay()Z
    .locals 3

    .line 2438
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "suppressGooglePay"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showTooltipToHighlightRebranding(Z)Z
    .locals 2

    .line 1400
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PrefShowToolTipToHighlightRebranding"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected final signIn(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/app/Authentication;
    .locals 0

    .line 336
    invoke-static {p1, p2}, Lcom/ebay/nautilus/domain/app/Authentication;->createIfNotEmpty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object p1

    .line 337
    invoke-virtual {p0, p1}, Lcom/ebay/common/Preferences;->setAuthentication(Lcom/ebay/nautilus/domain/app/Authentication;)V

    .line 338
    invoke-direct {p0, p1}, Lcom/ebay/common/Preferences;->notifyAuthenticationChanged(Lcom/ebay/nautilus/domain/app/Authentication;)V

    return-object p1
.end method

.method public final signOut(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 5

    .line 349
    :try_start_0
    invoke-direct {p0}, Lcom/ebay/common/Preferences;->getLoginManager()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 353
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getNonFatalReporter()Lcom/ebay/nonfatalreporter/NonFatalReporter;

    move-result-object v1

    sget-object v2, Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;->IDENTITY:Lcom/ebay/nonfatalreporter/NonFatalReporterDomains;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Facebook logout error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/ebay/nonfatalreporter/NonFatalReporter;->log(Lcom/ebay/nonfatalreporter/NonFatalReportingDomain;Ljava/lang/String;)V

    .line 358
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->clearPayPalCheckoutSettings()V

    .line 360
    invoke-static {p1}, Lcom/ebay/nautilus/domain/analytics/cguid/EbayCguidGetter;->onSignOut(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    const/4 p1, 0x0

    .line 361
    invoke-virtual {p0, p1}, Lcom/ebay/common/Preferences;->setAuthentication(Lcom/ebay/nautilus/domain/app/Authentication;)V

    .line 362
    invoke-direct {p0, p1}, Lcom/ebay/common/Preferences;->notifyAuthenticationChanged(Lcom/ebay/nautilus/domain/app/Authentication;)V

    return-void
.end method

.method public updateApptentiveSwitch(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apptentiveSwitch"

    .line 1665
    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1666
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1670
    :cond_0
    iget-object p1, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "apptentiveSwitch"

    .line 1671
    invoke-virtual {p0, v0}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1672
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public wasFacebookLastSignIn()Z
    .locals 3

    .line 2121
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "facebookSignInWasLastSignIn"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public wasGoogleLastSignIn()Z
    .locals 3

    .line 2074
    iget-object v0, p0, Lcom/ebay/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "googleSignInWasLastSignIn"

    invoke-virtual {p0, v1}, Lcom/ebay/common/Preferences;->getGlobalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
