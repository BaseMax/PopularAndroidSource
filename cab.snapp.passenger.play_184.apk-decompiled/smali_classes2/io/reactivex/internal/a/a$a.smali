.class final Lio/reactivex/internal/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/e/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e/a;


# direct methods
.method constructor <init>(Lio/reactivex/e/a;)V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lio/reactivex/internal/a/a$a;->a:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 344
    iget-object p1, p0, Lio/reactivex/internal/a/a$a;->a:Lio/reactivex/e/a;

    invoke-interface {p1}, Lio/reactivex/e/a;->run()V

    return-void
.end method
