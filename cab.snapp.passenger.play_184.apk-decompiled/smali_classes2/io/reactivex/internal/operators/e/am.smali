.class public final Lio/reactivex/internal/operators/e/am;
.super Lio/reactivex/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/ai<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/reactivex/ai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ai<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lio/reactivex/internal/operators/e/am;

    invoke-direct {v0}, Lio/reactivex/internal/operators/e/am;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/e/am;->INSTANCE:Lio/reactivex/ai;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/al;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 27
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    return-void
.end method
