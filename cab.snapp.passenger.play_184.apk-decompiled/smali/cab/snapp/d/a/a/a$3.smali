.class final Lcab/snapp/d/a/a/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/d/a/a/a;->subscribe(Ljava/lang/String;Lcab/snapp/d/a/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/d/a/b/c;

.field final synthetic b:Lcab/snapp/d/a/a/a;


# direct methods
.method constructor <init>(Lcab/snapp/d/a/a/a;Lcab/snapp/d/a/b/c;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcab/snapp/d/a/a/a$3;->b:Lcab/snapp/d/a/a/a;

    iput-object p2, p0, Lcab/snapp/d/a/a/a$3;->a:Lcab/snapp/d/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lorg/eclipse/paho/a/a/h;Ljava/lang/Throwable;)V
    .locals 0

    .line 298
    iget-object p1, p0, Lcab/snapp/d/a/a/a$3;->a:Lcab/snapp/d/a/b/c;

    if-eqz p1, :cond_0

    .line 300
    invoke-interface {p1}, Lcab/snapp/d/a/b/c;->onSubscribeFailed()V

    :cond_0
    return-void
.end method

.method public final onSuccess(Lorg/eclipse/paho/a/a/h;)V
    .locals 0

    .line 289
    iget-object p1, p0, Lcab/snapp/d/a/a/a$3;->a:Lcab/snapp/d/a/b/c;

    if-eqz p1, :cond_0

    .line 291
    invoke-interface {p1}, Lcab/snapp/d/a/b/c;->onSubscribeSucceed()V

    :cond_0
    return-void
.end method
