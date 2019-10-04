.class final Lio/reactivex/internal/operators/c/ee$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/ee$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/c/ee$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/ee$a;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lio/reactivex/internal/operators/c/ee$a$a;->a:Lio/reactivex/internal/operators/c/ee$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/c/ee$a$a;->a:Lio/reactivex/internal/operators/c/ee$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/c/ee$a;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method
