.class final Lio/reactivex/internal/e/q$a$a;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/e/q$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/e/q$f;

.field final synthetic b:Lio/reactivex/internal/e/q$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/e/q$a;Lio/reactivex/internal/e/q$f;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lio/reactivex/internal/e/q$a$a;->b:Lio/reactivex/internal/e/q$a;

    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 282
    iput-object p2, p0, Lio/reactivex/internal/e/q$a$a;->a:Lio/reactivex/internal/e/q$f;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lio/reactivex/internal/e/q$a$a;->a:Lio/reactivex/internal/e/q$f;

    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    .line 288
    iget-object v0, p0, Lio/reactivex/internal/e/q$a$a;->a:Lio/reactivex/internal/e/q$f;

    iget-object v1, p0, Lio/reactivex/internal/e/q$a$a;->b:Lio/reactivex/internal/e/q$a;

    iget-object v1, v1, Lio/reactivex/internal/e/q$a;->a:Lio/reactivex/ah$c;

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/e/q$f;->b(Lio/reactivex/ah$c;Lio/reactivex/d;)V

    return-void
.end method
