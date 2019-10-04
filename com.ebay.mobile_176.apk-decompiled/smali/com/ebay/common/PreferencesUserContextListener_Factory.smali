.class public final Lcom/ebay/common/PreferencesUserContextListener_Factory;
.super Ljava/lang/Object;
.source "PreferencesUserContextListener_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/common/PreferencesUserContextListener;",
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
    iput-object p1, p0, Lcom/ebay/common/PreferencesUserContextListener_Factory;->ebayContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/ebay/common/PreferencesUserContextListener_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;)",
            "Lcom/ebay/common/PreferencesUserContextListener_Factory;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/ebay/common/PreferencesUserContextListener_Factory;

    invoke-direct {v0, p0}, Lcom/ebay/common/PreferencesUserContextListener_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newPreferencesUserContextListener(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/common/PreferencesUserContextListener;
    .locals 1

    .line 33
    new-instance v0, Lcom/ebay/common/PreferencesUserContextListener;

    invoke-direct {v0, p0}, Lcom/ebay/common/PreferencesUserContextListener;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/ebay/common/PreferencesUserContextListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;)",
            "Lcom/ebay/common/PreferencesUserContextListener;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/ebay/common/PreferencesUserContextListener;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-direct {v0, p0}, Lcom/ebay/common/PreferencesUserContextListener;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/common/PreferencesUserContextListener;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ebay/common/PreferencesUserContextListener_Factory;->ebayContextProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/ebay/common/PreferencesUserContextListener_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/ebay/common/PreferencesUserContextListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/ebay/common/PreferencesUserContextListener_Factory;->get()Lcom/ebay/common/PreferencesUserContextListener;

    move-result-object v0

    return-object v0
.end method
