.class final Lcab/snapp/d/a/a/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/d/a/a/a;->publish(Ljava/lang/String;Ljava/lang/String;Lcab/snapp/d/a/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/d/a/b/b;

.field final synthetic b:Lcab/snapp/d/a/a/a;


# direct methods
.method constructor <init>(Lcab/snapp/d/a/a/a;Lcab/snapp/d/a/b/b;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcab/snapp/d/a/a/a$5;->b:Lcab/snapp/d/a/a/a;

    iput-object p2, p0, Lcab/snapp/d/a/a/a$5;->a:Lcab/snapp/d/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lorg/eclipse/paho/a/a/h;Ljava/lang/Throwable;)V
    .locals 0

    .line 402
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 403
    iget-object p1, p0, Lcab/snapp/d/a/a/a$5;->a:Lcab/snapp/d/a/b/b;

    if-eqz p1, :cond_0

    .line 405
    invoke-interface {p1}, Lcab/snapp/d/a/b/b;->onPublishFailed()V

    :cond_0
    return-void
.end method

.method public final onSuccess(Lorg/eclipse/paho/a/a/h;)V
    .locals 0

    .line 393
    iget-object p1, p0, Lcab/snapp/d/a/a/a$5;->a:Lcab/snapp/d/a/b/b;

    if-eqz p1, :cond_0

    .line 395
    invoke-interface {p1}, Lcab/snapp/d/a/b/b;->onPublishSucceed()V

    :cond_0
    return-void
.end method
