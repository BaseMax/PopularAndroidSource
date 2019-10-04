.class final Lio/fabric/sdk/android/services/concurrency/d$a$1;
.super Lio/fabric/sdk/android/services/concurrency/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/concurrency/d$a;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/concurrency/f<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/concurrency/d$a;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/concurrency/d$a;Ljava/lang/Runnable;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/d$a$1;->a:Lio/fabric/sdk/android/services/concurrency/d$a;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lio/fabric/sdk/android/services/concurrency/f;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getDelegate()Lio/fabric/sdk/android/services/concurrency/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/fabric/sdk/android/services/concurrency/a<",
            "Lio/fabric/sdk/android/services/concurrency/j;",
            ">;:",
            "Lio/fabric/sdk/android/services/concurrency/g;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/j;",
            ">()TT;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/d$a$1;->a:Lio/fabric/sdk/android/services/concurrency/d$a;

    invoke-static {v0}, Lio/fabric/sdk/android/services/concurrency/d$a;->a(Lio/fabric/sdk/android/services/concurrency/d$a;)Lio/fabric/sdk/android/services/concurrency/d;

    move-result-object v0

    return-object v0
.end method
