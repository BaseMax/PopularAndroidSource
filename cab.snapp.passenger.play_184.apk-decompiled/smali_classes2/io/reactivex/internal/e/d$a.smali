.class final Lio/reactivex/internal/e/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/e/d;

.field private final b:Lio/reactivex/internal/e/d$b;


# direct methods
.method constructor <init>(Lio/reactivex/internal/e/d;Lio/reactivex/internal/e/d$b;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lio/reactivex/internal/e/d$a;->a:Lio/reactivex/internal/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p2, p0, Lio/reactivex/internal/e/d$a;->b:Lio/reactivex/internal/e/d$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 470
    iget-object v0, p0, Lio/reactivex/internal/e/d$a;->b:Lio/reactivex/internal/e/d$b;

    iget-object v0, v0, Lio/reactivex/internal/e/d$b;->b:Lio/reactivex/internal/disposables/f;

    iget-object v1, p0, Lio/reactivex/internal/e/d$a;->a:Lio/reactivex/internal/e/d;

    iget-object v2, p0, Lio/reactivex/internal/e/d$a;->b:Lio/reactivex/internal/e/d$b;

    invoke-virtual {v1, v2}, Lio/reactivex/internal/e/d;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-void
.end method
