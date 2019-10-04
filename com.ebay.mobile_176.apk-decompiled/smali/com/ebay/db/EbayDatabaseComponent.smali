.class public interface abstract Lcom/ebay/db/EbayDatabaseComponent;
.super Ljava/lang/Object;
.source "EbayDatabaseComponent.java"


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/ebay/db/dagger/EbayDatabaseModule;,
        Lcom/ebay/nonfatalreporter/NonFatalReporterModule;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/db/EbayDatabaseComponent$Builder;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# virtual methods
.method public abstract getEbayDatabase()Lcom/ebay/db/EbayDatabase;
.end method
