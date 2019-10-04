.class public final Lcab/snapp/passenger/data_access_layer/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lio/reactivex/j/b<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/b;->a:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method private a(I)Lio/reactivex/j/b;
    .locals 2

    .line 92
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/b;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/j/b;

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/b;->a:Landroidx/collection/SparseArrayCompat;

    invoke-static {}, Lio/reactivex/j/b;->create()Lio/reactivex/j/b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/b;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/j/b;

    return-object p1
.end method

.method private static synthetic a(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 51
    instance-of v0, p0, Ljava/lang/ClassCastException;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic lambda$GoEHnUsKzYUz5IM6DCQdeNidIUg(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/data_access_layer/a/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final clearAll()V
    .locals 3

    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/a/b;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/a/b;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/j/b;

    invoke-virtual {v1}, Lio/reactivex/j/b;->onComplete()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/b;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    return-void
.end method

.method public final emit(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/b;->a(I)Lio/reactivex/j/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final size()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/b;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public final subscribe(ILio/reactivex/e/g;)Lio/reactivex/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lio/reactivex/e/g<",
            "TT;>;)",
            "Lio/reactivex/b/c;"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/b;->a(I)Lio/reactivex/j/b;

    move-result-object p1

    .line 49
    sget-object v0, Lcab/snapp/passenger/data_access_layer/a/-$$Lambda$b$GoEHnUsKzYUz5IM6DCQdeNidIUg;->INSTANCE:Lcab/snapp/passenger/data_access_layer/a/-$$Lambda$b$GoEHnUsKzYUz5IM6DCQdeNidIUg;

    invoke-virtual {p1, p2, v0}, Lio/reactivex/j/b;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1
.end method

.method public final test(I)Lio/reactivex/observers/e;
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/b;->a(I)Lio/reactivex/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/j/b;->test()Lio/reactivex/observers/e;

    move-result-object p1

    return-object p1
.end method
