.class final Lcom/a/a/a/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/a/f;->setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/settings/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/a/a/a/f;


# direct methods
.method constructor <init>(Lcom/a/a/a/f;Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/a/a/a/f$1;->c:Lcom/a/a/a/f;

    iput-object p2, p0, Lcom/a/a/a/f$1;->a:Lio/fabric/sdk/android/services/settings/b;

    iput-object p3, p0, Lcom/a/a/a/f$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/f$1;->c:Lcom/a/a/a/f;

    iget-object v0, v0, Lcom/a/a/a/f;->g:Lcom/a/a/a/af;

    iget-object v1, p0, Lcom/a/a/a/f$1;->a:Lio/fabric/sdk/android/services/settings/b;

    iget-object v2, p0, Lcom/a/a/a/f$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/a/a/a/af;->setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 73
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to set analytics settings data"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
