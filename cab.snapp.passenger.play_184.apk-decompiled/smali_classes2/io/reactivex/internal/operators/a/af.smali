.class public final Lio/reactivex/internal/operators/a/af;
.super Lio/reactivex/a;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/reactivex/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lio/reactivex/internal/operators/a/af;

    invoke-direct {v0}, Lio/reactivex/internal/operators/a/af;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/a/af;->INSTANCE:Lio/reactivex/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 1

    .line 27
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/b/c;)V

    return-void
.end method
