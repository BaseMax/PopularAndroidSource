.class public final Lc/c/a/e/d/b/G;
.super Ljava/lang/Object;
.source "SettingsLocalDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/d/b/G$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/e/d/b/G$a;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lc/c/a/e/d/b/I;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/e/d/b/G$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/e/d/b/G$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/e/d/b/G;->a:Lc/c/a/e/d/b/G$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/d/b/I;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/b/G;->b:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "bazaar_kids_notify"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final B()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "updates_notification"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final a()V
    .locals 6

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "isNotReadyForBazaar8"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final a(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v1, "last_iab_login_notification"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "pass"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-string v2, "bazaar_kids_pass"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final a(Z)V
    .locals 6

    .line 4
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "advertisingOptOut"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final b(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v1, "version_code"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    const-string v0, "nonce"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-string v2, "action_log_nonce"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final b(Z)V
    .locals 6

    .line 4
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "canShowLocationPermission"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final b()Z
    .locals 3

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "canShowLocationPermission"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-string v1, "bazaar_kids_pass"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7

    const-string v0, "advertisingId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-string v2, "advertisingId"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final c(Z)V
    .locals 6

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "location_base_offer"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 6

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "bazaar_kids_notify"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-string v1, "client_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final e()V
    .locals 6

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "bazaar_kids_notify"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 7

    const-string v0, "token"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-string v2, "fcm_token"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-string v1, "action_log_nonce"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3

    const-string v0, "locale"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-string v1, "advertisingId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 7

    const-string v0, "scheduleUpdateTime"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-string v2, "scheduleUpdateTime"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "advertisingOptOut"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-string v1, "bazaar_kids_pass"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-string v1, "client_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-string v1, "fcm_token"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final l()J
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_iab_login_notification"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()Ljava/util/Locale;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-string v1, "locale"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    new-instance v0, Ljava/util/Locale;

    const-string v1, "fa"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-string v1, "scheduleUpdateTime"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    invoke-virtual {v0}, Lc/c/a/e/d/b/I;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()J
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "version_code"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "bandwidth_optimization"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final r()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/b/G;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final s()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "patch_enable"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "location_base_offer"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "location_permission_denied_once"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isNotReadyForBazaar8"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const-string v1, "update_network_type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "wifi"

    .line 2
    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final x()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "update_scheduling"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final y()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v1, "location_permission_denied_once"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final z()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/G;->c:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "keep_backup_of_apps"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
