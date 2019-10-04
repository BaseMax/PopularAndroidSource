.class final Lcab/snapp/d/a/a/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/d/a/a/a;->unsubscribe(Ljava/lang/String;Lcab/snapp/d/a/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/d/a/b/d;

.field final synthetic b:Lcab/snapp/d/a/a/a;


# direct methods
.method constructor <init>(Lcab/snapp/d/a/a/a;Lcab/snapp/d/a/b/d;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcab/snapp/d/a/a/a$4;->b:Lcab/snapp/d/a/a/a;

    iput-object p2, p0, Lcab/snapp/d/a/a/a$4;->a:Lcab/snapp/d/a/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lorg/eclipse/paho/a/a/h;Ljava/lang/Throwable;)V
    .locals 0

    .line 343
    iget-object p1, p0, Lcab/snapp/d/a/a/a$4;->a:Lcab/snapp/d/a/b/d;

    if-eqz p1, :cond_0

    .line 345
    invoke-interface {p1}, Lcab/snapp/d/a/b/d;->onUnsubscribeFailed()V

    :cond_0
    return-void
.end method

.method public final onSuccess(Lorg/eclipse/paho/a/a/h;)V
    .locals 0

    .line 334
    iget-object p1, p0, Lcab/snapp/d/a/a/a$4;->a:Lcab/snapp/d/a/b/d;

    if-eqz p1, :cond_0

    .line 336
    invoke-interface {p1}, Lcab/snapp/d/a/b/d;->onUnsubscribeSucceed()V

    :cond_0
    return-void
.end method
