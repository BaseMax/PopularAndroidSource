.class public final Lcom/ebay/mobile/activities/MainActivity$MainActivityLinkProcessor;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/ebay/mobile/mktgtech/deeplinking/LinkProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MainActivityLinkProcessor"
.end annotation


# static fields
.field public static final NAV_TARGET:Ljava/lang/String; = "home"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processUri(Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/mobile/mktgtech/deeplinking/MissingParameterException;,
            Lcom/ebay/mobile/mktgtech/deeplinking/MalformedParameterException;
        }
    .end annotation

    .line 983
    new-instance p2, Landroid/content/Intent;

    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/ebay/mobile/activities/MainActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p2
.end method
