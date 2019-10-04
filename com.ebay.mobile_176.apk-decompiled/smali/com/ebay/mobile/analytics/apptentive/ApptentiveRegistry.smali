.class public Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;
.super Landroid/database/DataSetObserver;
.source "ApptentiveRegistry.java"

# interfaces
.implements Lcom/ebay/nautilus/kernel/dagger/ComponentLifecycleListener;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private application:Landroid/app/Application;

.field private apptentiveConfig:Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;

.field private apptentiveEncryption:Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;

.field private dcsObservable:Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;

.field private preferences:Lcom/ebay/common/Preferences;

.field private status:Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveStatus;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;Landroid/app/Application;Lcom/ebay/common/Preferences;Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveStatus;Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 50
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->dcsObservable:Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;

    .line 52
    iput-object p2, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->application:Landroid/app/Application;

    .line 53
    iput-object p5, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->status:Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveStatus;

    .line 54
    iput-object p3, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->preferences:Lcom/ebay/common/Preferences;

    .line 55
    iput-object p4, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->apptentiveConfig:Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;

    .line 56
    iput-object p6, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->apptentiveEncryption:Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;

    return-void
.end method


# virtual methods
.method public componentCreated()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->dcsObservable:Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfigurationObservable;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 73
    iget-object v0, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->application:Landroid/app/Application;

    const-string v1, "normal"

    const-string v2, "ANDROID-EBAY-LIVE-CONFIGURATION"

    const-string v3, "80e619bd006cd5144f39242131001cd7"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->register(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method doRegister(Landroid/app/Application;Lcom/apptentive/android/sdk/ApptentiveConfiguration;)V
    .locals 0

    .line 118
    invoke-static {p1, p2}, Lcom/apptentive/android/sdk/Apptentive;->register(Landroid/app/Application;Lcom/apptentive/android/sdk/ApptentiveConfiguration;)V

    return-void
.end method

.method doSetRatingProvider(Lcom/apptentive/android/sdk/module/rating/IRatingProvider;)V
    .locals 0

    .line 128
    invoke-static {p1}, Lcom/apptentive/android/sdk/Apptentive;->setRatingProvider(Lcom/apptentive/android/sdk/module/rating/IRatingProvider;)V

    return-void
.end method

.method public onChanged()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->preferences:Lcom/ebay/common/Preferences;

    iget-object v1, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->apptentiveConfig:Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveConfig;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ebay/common/Preferences;->updateApptentiveSwitch(Z)V

    return-void
.end method

.method public register(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    iget-object v0, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->preferences:Lcom/ebay/common/Preferences;

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getApptentiveSwitch()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 94
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->status:Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveStatus;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/apptentive/ApptentiveStatus;->markRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    new-instance v0, Lcom/apptentive/android/sdk/ApptentiveConfiguration;

    invoke-direct {v0, p3, p4}, Lcom/apptentive/android/sdk/ApptentiveConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p3, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->apptentiveEncryption:Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;

    invoke-virtual {v0, p3}, Lcom/apptentive/android/sdk/ApptentiveConfiguration;->setEncryption(Lcom/apptentive/android/sdk/Encryption;)V

    .line 99
    iget-object p3, p0, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->apptentiveEncryption:Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;

    invoke-virtual {p3}, Lcom/ebay/mobile/analytics/apptentive/ApptentiveEncryption;->initialize()V

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->doRegister(Landroid/app/Application;Lcom/apptentive/android/sdk/ApptentiveConfiguration;)V

    const-string/jumbo p1, "z14"

    .line 102
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 103
    new-instance p1, Lcom/apptentive/android/sdk/module/rating/impl/AmazonAppstoreRatingProvider;

    invoke-direct {p1}, Lcom/apptentive/android/sdk/module/rating/impl/AmazonAppstoreRatingProvider;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->doSetRatingProvider(Lcom/apptentive/android/sdk/module/rating/IRatingProvider;)V

    goto :goto_0

    .line 105
    :cond_2
    new-instance p1, Lcom/apptentive/android/sdk/module/rating/impl/GooglePlayRatingProvider;

    invoke-direct {p1}, Lcom/apptentive/android/sdk/module/rating/impl/GooglePlayRatingProvider;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/analytics/apptentive/ApptentiveRegistry;->doSetRatingProvider(Lcom/apptentive/android/sdk/module/rating/IRatingProvider;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method
