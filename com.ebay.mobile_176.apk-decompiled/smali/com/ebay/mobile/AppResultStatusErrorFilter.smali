.class public Lcom/ebay/mobile/AppResultStatusErrorFilter;
.super Ljava/lang/Object;
.source "AppResultStatusErrorFilter.java"

# interfaces
.implements Lcom/ebay/nautilus/kernel/net/ResultStatusErrorFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteServiceErrors(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V
    .locals 0

    .line 16
    invoke-static {p1, p2}, Lcom/ebay/common/view/EbayErrorHandler;->rewriteServiceErrors(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-void
.end method
