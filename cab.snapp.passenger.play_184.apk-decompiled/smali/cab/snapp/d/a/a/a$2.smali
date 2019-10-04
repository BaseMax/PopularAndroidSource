.class final Lcab/snapp/d/a/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/d/a/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/d/a/a/a;->onSuccess(Lorg/eclipse/paho/a/a/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/d/a/a/a;


# direct methods
.method constructor <init>(Lcab/snapp/d/a/a/a;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcab/snapp/d/a/a/a$2;->a:Lcab/snapp/d/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSubscribeFailed()V
    .locals 2

    const-string v0, "MQTT"

    const-string v1, "USER EVENT Subscribe Failed!"

    .line 218
    invoke-static {v0, v1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSubscribeSucceed()V
    .locals 2

    const-string v0, "MQTT"

    const-string v1, "USER EVENT Subscribed!"

    .line 212
    invoke-static {v0, v1}, Lcab/snapp/b;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
