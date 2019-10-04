.class final Lcab/snapp/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/b;


# direct methods
.method constructor <init>(Lcab/snapp/b;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcab/snapp/b$1;->a:Lcab/snapp/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lcab/snapp/a/a;)V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcab/snapp/b$1;->a:Lcab/snapp/b;

    invoke-static {v0}, Lcab/snapp/b;->a(Lcab/snapp/b;)Lio/reactivex/j/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcab/snapp/b$1;->a:Lcab/snapp/b;

    invoke-static {v0}, Lcab/snapp/b;->a(Lcab/snapp/b;)Lio/reactivex/j/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcab/snapp/b$1;->a:Lcab/snapp/b;

    invoke-static {v0, p1}, Lcab/snapp/b;->a(Lcab/snapp/b;Lcab/snapp/a/a;)V

    :cond_0
    return-void
.end method
