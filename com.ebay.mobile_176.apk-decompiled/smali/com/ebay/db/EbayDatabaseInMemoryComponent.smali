.class public interface abstract Lcom/ebay/db/EbayDatabaseInMemoryComponent;
.super Ljava/lang/Object;
.source "EbayDatabaseInMemoryComponent.java"

# interfaces
.implements Lcom/ebay/db/EbayDatabaseComponent;


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/db/EbayDatabaseInMemoryComponent$Builder;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation
