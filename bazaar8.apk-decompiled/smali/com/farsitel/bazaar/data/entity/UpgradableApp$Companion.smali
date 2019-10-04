.class public final Lcom/farsitel/bazaar/data/entity/UpgradableApp$Companion;
.super Ljava/lang/Object;
.source "Application.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/data/entity/UpgradableApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/data/entity/UpgradableApp$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromAppItem(Lcom/farsitel/bazaar/common/model/page/ListItem$App;)Lcom/farsitel/bazaar/data/entity/UpgradableApp;
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getAppName()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isFree()Z

    move-result v4

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getInstalledVersionCode()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    .line 6
    invoke-direct/range {v1 .. v8}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;-><init>(Ljava/lang/String;Ljava/lang/String;ZJZZ)V

    return-object v0
.end method
