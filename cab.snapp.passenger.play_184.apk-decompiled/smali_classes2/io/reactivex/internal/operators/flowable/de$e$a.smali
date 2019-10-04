.class final Lio/reactivex/internal/operators/flowable/de$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/de$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/e/g<",
        "Lio/reactivex/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/flowable/de$e;

.field private final b:Lio/reactivex/internal/f/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/f/v<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/de$e;Lio/reactivex/internal/f/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/f/v<",
            "TR;>;)V"
        }
    .end annotation

    .line 1134
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/de$e$a;->a:Lio/reactivex/internal/operators/flowable/de$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/de$e$a;->b:Lio/reactivex/internal/f/v;

    return-void
.end method


# virtual methods
.method public final accept(Lio/reactivex/b/c;)V
    .locals 1

    .line 1140
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/de$e$a;->b:Lio/reactivex/internal/f/v;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/f/v;->setResource(Lio/reactivex/b/c;)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1131
    check-cast p1, Lio/reactivex/b/c;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/de$e$a;->accept(Lio/reactivex/b/c;)V

    return-void
.end method
