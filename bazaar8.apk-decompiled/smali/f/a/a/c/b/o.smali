.class public Lf/a/a/c/b/o;
.super Ljava/lang/Object;
.source "SyncAPICallHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/c/b/o$a;
    }
.end annotation


# instance fields
.field public a:Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;

.field public b:Lir/cafebazaar/inline/platform/InlineApplication;

.field public c:Lf/a/a/c/a;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lir/cafebazaar/inline/platform/InlineApplication;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lf/a/a/c/b/o;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lir/cafebazaar/inline/platform/InlineApplication;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v2, Lf/a/a/b/a;->a:Lf/a/a/c/a;

    iput-object v2, v1, Lf/a/a/c/b/o;->c:Lf/a/a/c/a;

    move-object v2, p1

    .line 4
    iput-object v2, v1, Lf/a/a/c/b/o;->b:Lir/cafebazaar/inline/platform/InlineApplication;

    .line 5
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_0

    .line 6
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;

    .line 9
    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/InlineApplication;->d()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object v4

    invoke-virtual {v4}, Lir/cafebazaar/inline/platform/InlineUser;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    .line 11
    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/InlineApplication;->g()Lf/a/a/d/f;

    move-result-object v2

    invoke-interface {v2}, Lf/a/a/d/f;->getVersion()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, ""

    move-object v2, v0

    move-object v10, p2

    move-object/from16 v11, p4

    invoke-direct/range {v2 .. v12}, Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object v0, v1, Lf/a/a/c/b/o;->a:Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lf/a/a/c/b/o;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/c/b/o$a;)V
    .locals 6

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lf/a/a/c/b/h;

    invoke-direct {v1, p0, p1}, Lf/a/a/c/b/h;-><init>(Lf/a/a/c/b/o;Lf/a/a/c/b/o$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "start"

    .line 4
    invoke-static {v2}, Lf/a/a/c/b/o;->b(Ljava/lang/String;)V

    .line 5
    :try_start_0
    iget-object v2, p0, Lf/a/a/c/b/o;->a:Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;->getPayload()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "permittedData"

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lf/a/a/c/b/o;->b:Lir/cafebazaar/inline/platform/InlineApplication;

    .line 6
    invoke-virtual {v5}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object v5

    invoke-virtual {v5}, Lir/cafebazaar/inline/platform/InlineUser;->b()Lir/cafebazaar/inline/ux/permission/PermissionManager;

    move-result-object v5

    invoke-virtual {v5}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a()Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;

    move-result-object v5

    invoke-virtual {v5}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 7
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object v2, p0, Lf/a/a/c/b/o;->b:Lir/cafebazaar/inline/platform/InlineApplication;

    invoke-virtual {v2}, Lir/cafebazaar/inline/platform/InlineApplication;->b()Lf/a/a/g/f/a/b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, p0, Lf/a/a/c/b/o;->a:Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;->getPayload()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "purchases"

    iget-object v4, p0, Lf/a/a/c/b/o;->b:Lir/cafebazaar/inline/platform/InlineApplication;

    invoke-virtual {v4}, Lir/cafebazaar/inline/platform/InlineApplication;->b()Lf/a/a/g/f/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lf/a/a/g/f/a/b;->b()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    :cond_0
    iget-object v2, p0, Lf/a/a/c/b/o;->c:Lf/a/a/c/a;

    iget-object v3, p0, Lf/a/a/c/b/o;->a:Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;

    new-instance v4, Lf/a/a/c/b/k;

    invoke-direct {v4, p0, v0, v1, p1}, Lf/a/a/c/b/k;-><init>(Lf/a/a/c/b/o;JLf/a/a/c/b/o$a;)V

    invoke-virtual {v2, v3, v4}, Lf/a/a/c/a;->a(Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;Lf/a/a/c/b;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 12
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lf/a/a/c/b/n;

    invoke-direct {v2, p0, p1, v0}, Lf/a/a/c/b/n;-><init>(Lf/a/a/c/b/o;Lf/a/a/c/b/o$a;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 14
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lf/a/a/c/b/m;

    invoke-direct {v2, p0, p1, v0}, Lf/a/a/c/b/m;-><init>(Lf/a/a/c/b/o;Lf/a/a/c/b/o$a;Ljava/lang/InterruptedException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_2
    move-exception v0

    .line 15
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 16
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lf/a/a/c/b/l;

    invoke-direct {v2, p0, p1, v0}, Lf/a/a/c/b/l;-><init>(Lf/a/a/c/b/o;Lf/a/a/c/b/o$a;Lorg/json/JSONException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
