.class public final Lcom/ebay/mobile/analytics/InstallTracking_InstallTrackingService_MembersInjector;
.super Ljava/lang/Object;
.source "InstallTracking_InstallTrackingService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/ebay/mobile/analytics/InstallTracking$InstallTrackingService;",
        ">;"
    }
.end annotation


# instance fields
.field private final ebayContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
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
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ebay/mobile/analytics/InstallTracking_InstallTrackingService_MembersInjector;->ebayContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/ebay/mobile/analytics/InstallTracking$InstallTrackingService;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/ebay/mobile/analytics/InstallTracking_InstallTrackingService_MembersInjector;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/analytics/InstallTracking_InstallTrackingService_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public injectMembers(Lcom/ebay/mobile/analytics/InstallTracking$InstallTrackingService;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/ebay/mobile/analytics/InstallTracking_InstallTrackingService_MembersInjector;->ebayContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-static {p1, v0}, Lcom/ebay/nautilus/shell/app/BaseJobIntentService_MembersInjector;->injectEbayContext(Lcom/ebay/nautilus/shell/app/BaseJobIntentService;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/ebay/mobile/analytics/InstallTracking$InstallTrackingService;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/analytics/InstallTracking_InstallTrackingService_MembersInjector;->injectMembers(Lcom/ebay/mobile/analytics/InstallTracking$InstallTrackingService;)V

    return-void
.end method
