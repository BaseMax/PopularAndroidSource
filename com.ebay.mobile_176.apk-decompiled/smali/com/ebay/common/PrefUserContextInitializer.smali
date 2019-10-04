.class public Lcom/ebay/common/PrefUserContextInitializer;
.super Ljava/lang/Object;
.source "PrefUserContextInitializer.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/dm/UserContextInitializer;


# instance fields
.field private final context:Landroid/content/Context;

.field private final preferences:Lcom/ebay/common/Preferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ebay/common/Preferences;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ebay/common/PrefUserContextInitializer;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/ebay/common/PrefUserContextInitializer;->preferences:Lcom/ebay/common/Preferences;

    return-void
.end method


# virtual methods
.method public onDefaultCountry()Lcom/ebay/nautilus/domain/EbayCountry;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/ebay/common/PrefUserContextInitializer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ebay/common/view/util/EbayCountryManager;->detectCountry(Landroid/content/Context;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeCountry()Lcom/ebay/nautilus/domain/EbayCountry;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/ebay/common/PrefUserContextInitializer;->preferences:Lcom/ebay/common/Preferences;

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentCountryImpl()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeSellerSegment()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ebay/common/PrefUserContextInitializer;->preferences:Lcom/ebay/common/Preferences;

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getSellerSegmentImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeUser(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/app/Authentication;",
            ">;)I"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/ebay/common/PrefUserContextInitializer;->preferences:Lcom/ebay/common/Preferences;

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthenticationImpl()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public onInitializeUserSignedIn()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/ebay/common/PrefUserContextInitializer;->preferences:Lcom/ebay/common/Preferences;

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->isSignedInImpl()Z

    move-result v0

    return v0
.end method
