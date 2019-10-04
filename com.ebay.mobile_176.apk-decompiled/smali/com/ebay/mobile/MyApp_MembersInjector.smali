.class public final Lcom/ebay/mobile/MyApp_MembersInjector;
.super Ljava/lang/Object;
.source "MyApp_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/ebay/mobile/MyApp;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationVersionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/android/version/ApplicationVersionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final ds6TreatmentsObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/themes/Ds6TreatmentsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final m_prefsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;"
        }
    .end annotation
.end field

.field private final onTrimMemoryHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/android/OnTrimMemoryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final providerInstallListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/android/OnTrimMemoryHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/themes/Ds6TreatmentsObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/android/version/ApplicationVersionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/ebay/mobile/MyApp_MembersInjector;->onTrimMemoryHandlerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/ebay/mobile/MyApp_MembersInjector;->ds6TreatmentsObserverProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/ebay/mobile/MyApp_MembersInjector;->m_prefsProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p4, p0, Lcom/ebay/mobile/MyApp_MembersInjector;->applicationVersionHandlerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p5, p0, Lcom/ebay/mobile/MyApp_MembersInjector;->providerInstallListenerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/android/OnTrimMemoryHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/themes/Ds6TreatmentsObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/android/version/ApplicationVersionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/ebay/mobile/MyApp;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v6, Lcom/ebay/mobile/MyApp_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/MyApp_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectApplicationVersionHandler(Lcom/ebay/mobile/MyApp;Lcom/ebay/nautilus/kernel/android/version/ApplicationVersionHandler;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/ebay/mobile/MyApp;->applicationVersionHandler:Lcom/ebay/nautilus/kernel/android/version/ApplicationVersionHandler;

    return-void
.end method

.method public static injectDs6TreatmentsObserver(Lcom/ebay/mobile/MyApp;Lcom/ebay/mobile/themes/Ds6TreatmentsObserver;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ebay/mobile/MyApp;->ds6TreatmentsObserver:Lcom/ebay/mobile/themes/Ds6TreatmentsObserver;

    return-void
.end method

.method public static injectM_prefs(Lcom/ebay/mobile/MyApp;Lcom/ebay/common/Preferences;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/ebay/mobile/MyApp;->m_prefs:Lcom/ebay/common/Preferences;

    return-void
.end method

.method public static injectOnTrimMemoryHandler(Lcom/ebay/mobile/MyApp;Lcom/ebay/nautilus/kernel/android/OnTrimMemoryHandler;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/ebay/mobile/MyApp;->onTrimMemoryHandler:Lcom/ebay/nautilus/kernel/android/OnTrimMemoryHandler;

    return-void
.end method

.method public static injectProviderInstallListener(Lcom/ebay/mobile/MyApp;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/MyApp;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/AndroidSecurityProviderInstallListener;",
            ">;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/ebay/mobile/MyApp;->providerInstallListener:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/ebay/mobile/MyApp;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ebay/mobile/MyApp_MembersInjector;->onTrimMemoryHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/android/OnTrimMemoryHandler;

    invoke-static {p1, v0}, Lcom/ebay/mobile/MyApp_MembersInjector;->injectOnTrimMemoryHandler(Lcom/ebay/mobile/MyApp;Lcom/ebay/nautilus/kernel/android/OnTrimMemoryHandler;)V

    .line 52
    iget-object v0, p0, Lcom/ebay/mobile/MyApp_MembersInjector;->ds6TreatmentsObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/themes/Ds6TreatmentsObserver;

    invoke-static {p1, v0}, Lcom/ebay/mobile/MyApp_MembersInjector;->injectDs6TreatmentsObserver(Lcom/ebay/mobile/MyApp;Lcom/ebay/mobile/themes/Ds6TreatmentsObserver;)V

    .line 53
    iget-object v0, p0, Lcom/ebay/mobile/MyApp_MembersInjector;->m_prefsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/Preferences;

    invoke-static {p1, v0}, Lcom/ebay/mobile/MyApp_MembersInjector;->injectM_prefs(Lcom/ebay/mobile/MyApp;Lcom/ebay/common/Preferences;)V

    .line 54
    iget-object v0, p0, Lcom/ebay/mobile/MyApp_MembersInjector;->applicationVersionHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/android/version/ApplicationVersionHandler;

    invoke-static {p1, v0}, Lcom/ebay/mobile/MyApp_MembersInjector;->injectApplicationVersionHandler(Lcom/ebay/mobile/MyApp;Lcom/ebay/nautilus/kernel/android/version/ApplicationVersionHandler;)V

    .line 55
    iget-object v0, p0, Lcom/ebay/mobile/MyApp_MembersInjector;->providerInstallListenerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/ebay/mobile/MyApp_MembersInjector;->injectProviderInstallListener(Lcom/ebay/mobile/MyApp;Ljavax/inject/Provider;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/ebay/mobile/MyApp;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/MyApp_MembersInjector;->injectMembers(Lcom/ebay/mobile/MyApp;)V

    return-void
.end method
