.class public final Lcom/ebay/mobile/analytics/RtmTrackingService_MembersInjector;
.super Ljava/lang/Object;
.source "RtmTrackingService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/ebay/mobile/analytics/RtmTrackingService;",
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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ebay/mobile/analytics/RtmTrackingService_MembersInjector;->ebayContextProvider:Ljavax/inject/Provider;

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
            "Lcom/ebay/mobile/analytics/RtmTrackingService;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/ebay/mobile/analytics/RtmTrackingService_MembersInjector;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/analytics/RtmTrackingService_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public injectMembers(Lcom/ebay/mobile/analytics/RtmTrackingService;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ebay/mobile/analytics/RtmTrackingService_MembersInjector;->ebayContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-static {p1, v0}, Lcom/ebay/nautilus/shell/app/BaseIntentService_MembersInjector;->injectEbayContext(Lcom/ebay/nautilus/shell/app/BaseIntentService;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/ebay/mobile/analytics/RtmTrackingService;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/analytics/RtmTrackingService_MembersInjector;->injectMembers(Lcom/ebay/mobile/analytics/RtmTrackingService;)V

    return-void
.end method
