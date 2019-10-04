.class public final Lcom/ebay/mobile/activities/QuickSearchHandler_MembersInjector;
.super Ljava/lang/Object;
.source "QuickSearchHandler_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/ebay/mobile/activities/QuickSearchHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final searchDeepLinkIntentHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/search/SearchDeepLinkIntentHelper;",
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
            "Lcom/ebay/mobile/search/SearchDeepLinkIntentHelper;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ebay/mobile/activities/QuickSearchHandler_MembersInjector;->searchDeepLinkIntentHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/search/SearchDeepLinkIntentHelper;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/ebay/mobile/activities/QuickSearchHandler;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/ebay/mobile/activities/QuickSearchHandler_MembersInjector;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/activities/QuickSearchHandler_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectSearchDeepLinkIntentHelper(Lcom/ebay/mobile/activities/QuickSearchHandler;Lcom/ebay/mobile/search/SearchDeepLinkIntentHelper;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/ebay/mobile/activities/QuickSearchHandler;->searchDeepLinkIntentHelper:Lcom/ebay/mobile/search/SearchDeepLinkIntentHelper;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/ebay/mobile/activities/QuickSearchHandler;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ebay/mobile/activities/QuickSearchHandler_MembersInjector;->searchDeepLinkIntentHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/search/SearchDeepLinkIntentHelper;

    invoke-static {p1, v0}, Lcom/ebay/mobile/activities/QuickSearchHandler_MembersInjector;->injectSearchDeepLinkIntentHelper(Lcom/ebay/mobile/activities/QuickSearchHandler;Lcom/ebay/mobile/search/SearchDeepLinkIntentHelper;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/ebay/mobile/activities/QuickSearchHandler;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/QuickSearchHandler_MembersInjector;->injectMembers(Lcom/ebay/mobile/activities/QuickSearchHandler;)V

    return-void
.end method
