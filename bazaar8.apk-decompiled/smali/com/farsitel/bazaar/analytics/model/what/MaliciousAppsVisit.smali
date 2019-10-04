.class public final Lcom/farsitel/bazaar/analytics/model/what/MaliciousAppsVisit;
.super Lcom/farsitel/bazaar/analytics/model/what/VisitEvent;
.source "VisitEvent.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "referrer"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "malicious_apps"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v1}, Lcom/farsitel/bazaar/analytics/model/what/VisitEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lh/f/b/f;)V

    return-void
.end method
