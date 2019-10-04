.class public final Lcom/ebay/mobile/AppSignOutHelper_Factory;
.super Ljava/lang/Object;
.source "AppSignOutHelper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/AppSignOutHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final appProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final authProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/app/Authentication;",
            ">;"
        }
    .end annotation
.end field

.field private final ebayContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;"
        }
    .end annotation
.end field

.field private final loggedOutNotificationTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/notifications/EbayNotificationManager$CreateLoggedOutNotificationTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/content/MainThreadHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final prefsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;"
        }
    .end annotation
.end field

.field private final taskManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/util/TaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private final userContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/content/dm/UserContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/content/dm/UserContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/app/Authentication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/util/TaskManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/notifications/EbayNotificationManager$CreateLoggedOutNotificationTask;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/content/MainThreadHandler;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->appProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p2, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->ebayContextProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->userContextProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->authProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->prefsProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p6, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->taskManagerProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p7, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->loggedOutNotificationTaskProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p8, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->mainThreadHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/AppSignOutHelper_Factory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/content/dm/UserContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/app/Authentication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/util/TaskManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/notifications/EbayNotificationManager$CreateLoggedOutNotificationTask;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/content/MainThreadHandler;",
            ">;)",
            "Lcom/ebay/mobile/AppSignOutHelper_Factory;"
        }
    .end annotation

    .line 97
    new-instance v9, Lcom/ebay/mobile/AppSignOutHelper_Factory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/ebay/mobile/AppSignOutHelper_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static newAppSignOutHelper(Landroid/app/Application;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/dm/UserContext;Lcom/ebay/nautilus/domain/app/Authentication;Lcom/ebay/common/Preferences;Lcom/ebay/mobile/util/TaskManager;Lcom/ebay/mobile/notifications/EbayNotificationManager$CreateLoggedOutNotificationTask;Lcom/ebay/nautilus/domain/content/MainThreadHandler;)Lcom/ebay/mobile/AppSignOutHelper;
    .locals 10

    .line 117
    new-instance v9, Lcom/ebay/mobile/AppSignOutHelper;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/ebay/mobile/AppSignOutHelper;-><init>(Landroid/app/Application;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/dm/UserContext;Lcom/ebay/nautilus/domain/app/Authentication;Lcom/ebay/common/Preferences;Lcom/ebay/mobile/util/TaskManager;Lcom/ebay/mobile/notifications/EbayNotificationManager$CreateLoggedOutNotificationTask;Lcom/ebay/nautilus/domain/content/MainThreadHandler;)V

    return-object v9
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/AppSignOutHelper;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/content/dm/UserContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/app/Authentication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/util/TaskManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/notifications/EbayNotificationManager$CreateLoggedOutNotificationTask;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/content/MainThreadHandler;",
            ">;)",
            "Lcom/ebay/mobile/AppSignOutHelper;"
        }
    .end annotation

    .line 76
    new-instance v9, Lcom/ebay/mobile/AppSignOutHelper;

    .line 77
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Application;

    .line 78
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 79
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ebay/nautilus/domain/content/dm/UserContext;

    .line 80
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/ebay/nautilus/domain/app/Authentication;

    .line 81
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/ebay/common/Preferences;

    .line 82
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/ebay/mobile/util/TaskManager;

    .line 83
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/ebay/mobile/notifications/EbayNotificationManager$CreateLoggedOutNotificationTask;

    .line 84
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/ebay/nautilus/domain/content/MainThreadHandler;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/ebay/mobile/AppSignOutHelper;-><init>(Landroid/app/Application;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/dm/UserContext;Lcom/ebay/nautilus/domain/app/Authentication;Lcom/ebay/common/Preferences;Lcom/ebay/mobile/util/TaskManager;Lcom/ebay/mobile/notifications/EbayNotificationManager$CreateLoggedOutNotificationTask;Lcom/ebay/nautilus/domain/content/MainThreadHandler;)V

    return-object v9
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/AppSignOutHelper;
    .locals 8

    .line 55
    iget-object v0, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->appProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->ebayContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->userContextProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->authProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->prefsProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->taskManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->loggedOutNotificationTaskProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/ebay/mobile/AppSignOutHelper_Factory;->mainThreadHandlerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v7}, Lcom/ebay/mobile/AppSignOutHelper_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/AppSignOutHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/ebay/mobile/AppSignOutHelper_Factory;->get()Lcom/ebay/mobile/AppSignOutHelper;

    move-result-object v0

    return-object v0
.end method
