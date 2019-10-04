.class final Lcab/snapp/d/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/d/a/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/d/a/c;-><init>(Landroid/content/Context;Lcab/snapp/d/a/a;Lcab/snapp/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/d/a/c;


# direct methods
.method constructor <init>(Lcab/snapp/d/a/c;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcab/snapp/d/a/c$1;->a:Lcab/snapp/d/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 2

    const-string v0, "MQTT"

    const-string v1, "MQTT Connected."

    .line 52
    invoke-static {v0, v1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onError(I)V
    .locals 0

    return-void
.end method

.method public final onMQTTData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 39
    :try_start_0
    new-instance p1, Lcom/google/gson/e;

    invoke-direct {p1}, Lcom/google/gson/e;-><init>()V

    const-class v0, Lcab/snapp/a/a;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MQTT"

    const-string v0, "onMQTTData: can\'t make data model"

    .line 43
    invoke-static {p2, v0}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 46
    :goto_0
    iget-object p2, p0, Lcab/snapp/d/a/c$1;->a:Lcab/snapp/d/a/c;

    invoke-virtual {p2, p1}, Lcab/snapp/d/a/c;->onEvent(Lcab/snapp/a/a;)V

    return-void
.end method
