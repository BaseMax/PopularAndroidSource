.class public final Lcom/ebay/mobile/activities/LinkHandlerActivity_MembersInjector;
.super Ljava/lang/Object;
.source "LinkHandlerActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/ebay/mobile/activities/LinkHandlerActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final semTrackingIntentHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/sem/SemTrackingIntentHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/sem/SemTrackingIntentHandler;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity_MembersInjector;->semTrackingIntentHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/analytics/sem/SemTrackingIntentHandler;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/ebay/mobile/activities/LinkHandlerActivity;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/ebay/mobile/activities/LinkHandlerActivity_MembersInjector;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/LinkHandlerActivity_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectSemTrackingIntentHandler(Lcom/ebay/mobile/activities/LinkHandlerActivity;Lcom/ebay/nautilus/domain/analytics/sem/SemTrackingIntentHandler;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity;->semTrackingIntentHandler:Lcom/ebay/nautilus/domain/analytics/sem/SemTrackingIntentHandler;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/ebay/mobile/activities/LinkHandlerActivity;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ebay/mobile/activities/LinkHandlerActivity_MembersInjector;->semTrackingIntentHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/analytics/sem/SemTrackingIntentHandler;

    invoke-static {p1, v0}, Lcom/ebay/mobile/activities/LinkHandlerActivity_MembersInjector;->injectSemTrackingIntentHandler(Lcom/ebay/mobile/activities/LinkHandlerActivity;Lcom/ebay/nautilus/domain/analytics/sem/SemTrackingIntentHandler;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/ebay/mobile/activities/LinkHandlerActivity;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/LinkHandlerActivity_MembersInjector;->injectMembers(Lcom/ebay/mobile/activities/LinkHandlerActivity;)V

    return-void
.end method
