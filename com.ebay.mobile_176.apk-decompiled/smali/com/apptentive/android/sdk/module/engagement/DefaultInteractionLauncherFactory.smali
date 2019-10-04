.class public Lcom/apptentive/android/sdk/module/engagement/DefaultInteractionLauncherFactory;
.super Ljava/lang/Object;
.source "DefaultInteractionLauncherFactory.java"

# interfaces
.implements Lcom/apptentive/android/sdk/module/engagement/InteractionLauncherFactory;


# instance fields
.field private final launcherLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;",
            "Lcom/apptentive/android/sdk/module/engagement/InteractionLauncher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/DefaultInteractionLauncherFactory;->createLauncherLookup()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/DefaultInteractionLauncherFactory;->launcherLookup:Ljava/util/Map;

    return-void
.end method

.method private createLauncherLookup()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;",
            "Lcom/apptentive/android/sdk/module/engagement/InteractionLauncher;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;->notification:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/DefaultInteractionLauncherFactory;->createNotificationInteractionLauncher()Lcom/apptentive/android/sdk/module/engagement/InteractionLauncher;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;->unknown:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/DefaultInteractionLauncherFactory;->createActivityInteractionLauncher()Lcom/apptentive/android/sdk/module/engagement/InteractionLauncher;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method createActivityInteractionLauncher()Lcom/apptentive/android/sdk/module/engagement/InteractionLauncher;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/ActivityInteractionLauncher;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/engagement/ActivityInteractionLauncher;-><init>()V

    return-object v0
.end method

.method createNotificationInteractionLauncher()Lcom/apptentive/android/sdk/module/engagement/InteractionLauncher;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 46
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/NotificationInteractionLauncher;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/engagement/NotificationInteractionLauncher;-><init>()V

    return-object v0
.end method

.method public launcherForInteraction(Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;)Lcom/apptentive/android/sdk/module/engagement/InteractionLauncher;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/DefaultInteractionLauncherFactory;->launcherLookup:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getDisplayType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/module/engagement/InteractionLauncher;

    return-object p1
.end method
