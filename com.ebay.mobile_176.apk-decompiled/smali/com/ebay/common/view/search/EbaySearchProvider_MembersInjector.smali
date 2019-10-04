.class public final Lcom/ebay/common/view/search/EbaySearchProvider_MembersInjector;
.super Ljava/lang/Object;
.source "EbaySearchProvider_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/ebay/common/view/search/EbaySearchProvider;",
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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/ebay/common/view/search/EbaySearchProvider_MembersInjector;->ebayContextProvider:Ljavax/inject/Provider;

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
            "Lcom/ebay/common/view/search/EbaySearchProvider;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/ebay/common/view/search/EbaySearchProvider_MembersInjector;

    invoke-direct {v0, p0}, Lcom/ebay/common/view/search/EbaySearchProvider_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectEbayContext(Lcom/ebay/common/view/search/EbaySearchProvider;Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/ebay/common/view/search/EbaySearchProvider;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/ebay/common/view/search/EbaySearchProvider;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/ebay/common/view/search/EbaySearchProvider_MembersInjector;->ebayContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-static {p1, v0}, Lcom/ebay/common/view/search/EbaySearchProvider_MembersInjector;->injectEbayContext(Lcom/ebay/common/view/search/EbaySearchProvider;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/ebay/common/view/search/EbaySearchProvider;

    invoke-virtual {p0, p1}, Lcom/ebay/common/view/search/EbaySearchProvider_MembersInjector;->injectMembers(Lcom/ebay/common/view/search/EbaySearchProvider;)V

    return-void
.end method
