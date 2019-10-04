.class final Lio/reactivex/internal/e/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/e/q$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/e/h<",
        "Lio/reactivex/internal/e/q$f;",
        "Lio/reactivex/a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ah$c;


# direct methods
.method constructor <init>(Lio/reactivex/ah$c;)V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lio/reactivex/internal/e/q$a;->a:Lio/reactivex/ah$c;

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/internal/e/q$f;)Lio/reactivex/a;
    .locals 1

    .line 275
    new-instance v0, Lio/reactivex/internal/e/q$a$a;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/e/q$a$a;-><init>(Lio/reactivex/internal/e/q$a;Lio/reactivex/internal/e/q$f;)V

    return-object v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 266
    check-cast p1, Lio/reactivex/internal/e/q$f;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/e/q$a;->apply(Lio/reactivex/internal/e/q$f;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method
