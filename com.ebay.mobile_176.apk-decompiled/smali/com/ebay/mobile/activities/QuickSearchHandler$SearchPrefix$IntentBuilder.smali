.class interface abstract Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix$IntentBuilder;
.super Ljava/lang/Object;
.source "QuickSearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IntentBuilder"
.end annotation


# virtual methods
.method public abstract buildIntentForQuery(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
