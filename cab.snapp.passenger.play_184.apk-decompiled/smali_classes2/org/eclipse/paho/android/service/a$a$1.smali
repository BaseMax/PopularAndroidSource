.class final Lorg/eclipse/paho/android/service/a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/a$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/a$a;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/a$a;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lorg/eclipse/paho/android/service/a$a$1;->a:Lorg/eclipse/paho/android/service/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lorg/eclipse/paho/a/a/h;Ljava/lang/Throwable;)V
    .locals 2

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failure. Release lock("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/eclipse/paho/android/service/a$a$1;->a:Lorg/eclipse/paho/android/service/a$a;

    invoke-static {p2}, Lorg/eclipse/paho/android/service/a$a;->a(Lorg/eclipse/paho/android/service/a$a;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "):"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a$a$1;->a:Lorg/eclipse/paho/android/service/a$a;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/a$a;->b(Lorg/eclipse/paho/android/service/a$a;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public final onSuccess(Lorg/eclipse/paho/a/a/h;)V
    .locals 2

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Success. Release lock("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/android/service/a$a$1;->a:Lorg/eclipse/paho/android/service/a$a;

    invoke-static {v0}, Lorg/eclipse/paho/android/service/a$a;->a(Lorg/eclipse/paho/android/service/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a$a$1;->a:Lorg/eclipse/paho/android/service/a$a;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/a$a;->b(Lorg/eclipse/paho/android/service/a$a;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
