.class final Lcab/snapp/passenger/data_access_layer/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/data_access_layer/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcab/snapp/passenger/data_access_layer/a/a;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/data_access_layer/a/a;I)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/a$1;->b:Lcab/snapp/passenger/data_access_layer/a/a;

    iput p2, p0, Lcab/snapp/passenger/data_access_layer/a/a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/a$1;->b:Lcab/snapp/passenger/data_access_layer/a/a;

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/a/a$1;->a:I

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/a;->a(I)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/a$1;->b:Lcab/snapp/passenger/data_access_layer/a/a;

    iget-object v0, v0, Lcab/snapp/passenger/data_access_layer/a/a;->b:Landroidx/collection/SparseArrayCompat;

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/a/a$1;->a:I

    invoke-virtual {v0, v1, p1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    return-void
.end method
