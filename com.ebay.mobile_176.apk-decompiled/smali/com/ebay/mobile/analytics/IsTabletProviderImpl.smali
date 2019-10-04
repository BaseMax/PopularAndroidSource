.class public Lcom/ebay/mobile/analytics/IsTabletProviderImpl;
.super Ljava/lang/Object;
.source "IsTabletProviderImpl.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/analytics/mts/IsTabletProvider;


# annotations
.annotation runtime Ldagger/Reusable;
.end annotation


# instance fields
.field private final tablet:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/analytics/IsTabletProviderImpl;->tablet:Z

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/ebay/mobile/analytics/IsTabletProviderImpl;->tablet:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/ebay/mobile/analytics/IsTabletProviderImpl;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
