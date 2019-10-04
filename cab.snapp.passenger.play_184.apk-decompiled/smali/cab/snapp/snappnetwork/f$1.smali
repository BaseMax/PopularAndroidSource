.class final Lcab/snapp/snappnetwork/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappnetwork/f;->buildObservableResponsebody()Lio/reactivex/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappnetwork/f;


# direct methods
.method constructor <init>(Lcab/snapp/snappnetwork/f;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcab/snapp/snappnetwork/f$1;->a:Lcab/snapp/snappnetwork/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcab/snapp/snappnetwork/f$1;->call()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/lang/Throwable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error request parameter!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
