.class public final Lio/reactivex/internal/operators/a/w;
.super Lio/reactivex/a;
.source "SourceFile"


# instance fields
.field final a:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/g;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 23
    iput-object p1, p0, Lio/reactivex/internal/operators/a/w;->a:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lio/reactivex/internal/operators/a/w;->a:Lio/reactivex/g;

    invoke-interface {v0, p1}, Lio/reactivex/g;->subscribe(Lio/reactivex/d;)V

    return-void
.end method