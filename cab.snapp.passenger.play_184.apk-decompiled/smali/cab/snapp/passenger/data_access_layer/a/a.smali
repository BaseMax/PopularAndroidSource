.class public abstract Lcab/snapp/passenger/data_access_layer/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lio/reactivex/z;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lio/reactivex/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/a;->a:Landroidx/collection/SparseArrayCompat;

    .line 26
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/a;->b:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method private b(I)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/a;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/b/c;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/a;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/a;->b(I)V

    return-void
.end method

.method public addDataSource(Lio/reactivex/z;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/z<",
            "TT;>;I)V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/a;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2, p1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 1092
    new-instance v0, Lcab/snapp/passenger/data_access_layer/a/a$1;

    invoke-direct {v0, p0, p2}, Lcab/snapp/passenger/data_access_layer/a/a$1;-><init>(Lcab/snapp/passenger/data_access_layer/a/a;I)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method

.method public removeDataSource(I)V
    .locals 1

    .line 155
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/a;->b(I)V

    .line 156
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/a;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    return-void
.end method
