.class final Lio/reactivex/b/h;
.super Lio/reactivex/b/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/b/f<",
        "Lorg/b/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/b/d;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lio/reactivex/b/f;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lorg/b/d;

    .line 1031
    invoke-interface {p1}, Lorg/b/d;->cancel()V

    return-void
.end method
