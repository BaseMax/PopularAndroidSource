.class public final Lcom/farsitel/bazaar/analytics/model/what/UpgradableAppsItemClick;
.super Lcom/farsitel/bazaar/analytics/model/what/ItemClick;
.source "ItemClick.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "referrer"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradable_apps"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v1}, Lcom/farsitel/bazaar/analytics/model/what/ItemClick;-><init>(Ljava/lang/String;Ljava/lang/String;Lh/f/b/f;)V

    return-void
.end method