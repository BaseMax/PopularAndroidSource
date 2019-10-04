.class public Lcom/ebay/common/PreferencesUserContextListener;
.super Ljava/lang/Object;
.source "PreferencesUserContextListener.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/dm/UserContextListener;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;


# direct methods
.method constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ebay/common/PreferencesUserContextListener;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    return-void
.end method


# virtual methods
.method public onCurrentCountryChanged(Lcom/ebay/nautilus/domain/EbayCountry;)V
    .locals 1

    .line 48
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lcom/ebay/common/Preferences;->setCurrentCountry(Lcom/ebay/nautilus/domain/EbayCountry;)V

    return-void
.end method

.method public onCurrentUserChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 30
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p3

    .line 31
    invoke-virtual {p3, p1, p2}, Lcom/ebay/common/Preferences;->signIn(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/app/Authentication;

    return-void
.end method

.method public onSellerSegmentChanged(Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Lcom/ebay/common/Preferences;->setSellerSegment(Ljava/lang/String;)V

    return-void
.end method

.method public onUserSignedInStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p2

    .line 38
    invoke-static {p1, p3}, Lcom/ebay/nautilus/domain/app/Authentication;->createIfNotEmpty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    iget-object p1, p0, Lcom/ebay/common/PreferencesUserContextListener;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-virtual {p2, p1}, Lcom/ebay/common/Preferences;->signOut(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2, p1, p3}, Lcom/ebay/common/Preferences;->signIn(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/app/Authentication;

    :goto_0
    return-void
.end method
