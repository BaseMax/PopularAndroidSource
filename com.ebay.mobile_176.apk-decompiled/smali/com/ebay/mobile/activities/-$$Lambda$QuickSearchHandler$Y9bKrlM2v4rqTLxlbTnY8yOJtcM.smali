.class public final synthetic Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$Y9bKrlM2v4rqTLxlbTnY8yOJtcM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/ebay/mobile/activities/QuickSearchHandler$SearchPrefix$IntentBuilder;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/activities/QuickSearchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/activities/QuickSearchHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$Y9bKrlM2v4rqTLxlbTnY8yOJtcM;->f$0:Lcom/ebay/mobile/activities/QuickSearchHandler;

    return-void
.end method


# virtual methods
.method public final buildIntentForQuery(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/ebay/mobile/activities/-$$Lambda$QuickSearchHandler$Y9bKrlM2v4rqTLxlbTnY8yOJtcM;->f$0:Lcom/ebay/mobile/activities/QuickSearchHandler;

    invoke-static {v0, p1, p2}, Lcom/ebay/mobile/activities/QuickSearchHandler;->lambda$getIntentBuilderForPrefix$2(Lcom/ebay/mobile/activities/QuickSearchHandler;Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
