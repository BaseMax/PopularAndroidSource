.class public interface abstract Lcom/ebay/db/EbayDatabaseInMemoryComponent$Builder;
.super Ljava/lang/Object;
.source "EbayDatabaseInMemoryComponent.java"


# annotations
.annotation build Ldagger/Component$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/db/EbayDatabaseInMemoryComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract build()Lcom/ebay/db/EbayDatabaseInMemoryComponent;
.end method

.method public abstract withContext(Landroid/content/Context;)Lcom/ebay/db/EbayDatabaseInMemoryComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method
