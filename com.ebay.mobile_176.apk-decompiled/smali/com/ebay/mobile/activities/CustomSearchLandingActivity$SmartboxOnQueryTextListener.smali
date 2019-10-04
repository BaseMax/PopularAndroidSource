.class Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;
.super Ljava/lang/Object;
.source "CustomSearchLandingActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/CustomSearchLandingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartboxOnQueryTextListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;


# direct methods
.method private constructor <init>(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;Lcom/ebay/mobile/activities/CustomSearchLandingActivity$1;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;-><init>(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;)V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    iget-object v0, v0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->progress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-static {v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->access$100(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-static {v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->access$100(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-static {v0, v3}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->access$202(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;Z)Z

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-static {v0, v2}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->access$302(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-static {v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->access$400(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-static {v0, p1}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->access$500(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;Ljava/lang/CharSequence;)V

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-static {v0, v3}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->access$402(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;Z)Z

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-static {v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->access$600(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-static {v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->access$600(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 285
    iget-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-static {p1, v2}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->access$602(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->access$402(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;Z)Z

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    .line 297
    invoke-static {v0, p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->createFromDefaults(Landroid/content/Context;Ljava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p1

    .line 298
    sget-object v0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$search$SearchType:[I

    iget-object v2, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-static {v2}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->access$700(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;)Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/search/SearchType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_0

    .line 306
    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setDealsSearch()Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object v0

    new-instance v2, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v3, "DealsSearch"

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, v2}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-static {v0}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->access$800(Lcom/ebay/mobile/activities/CustomSearchLandingActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setGarageSearch(Ljava/util/Map;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object v0

    new-instance v2, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string v3, "GarageSearch"

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, v2}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    .line 311
    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 310
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->startActivity(Landroid/content/Intent;)V

    .line 312
    iget-object p1, p0, Lcom/ebay/mobile/activities/CustomSearchLandingActivity$SmartboxOnQueryTextListener;->this$0:Lcom/ebay/mobile/activities/CustomSearchLandingActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/CustomSearchLandingActivity;->finish()V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
