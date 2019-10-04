.class final Lcab/snapp/d/b/a$1;
.super Lcab/snapp/snappnetwork/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/d/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/snappnetwork/a/a<",
        "Lcab/snapp/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/d/b/a;


# direct methods
.method constructor <init>(Lcab/snapp/d/b/a;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcab/snapp/d/b/a$1;->a:Lcab/snapp/d/b/a;

    invoke-direct {p0}, Lcab/snapp/snappnetwork/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcab/snapp/snappnetwork/model/b;I)V
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Lcab/snapp/snappnetwork/a/a;->onFailure(Lcab/snapp/snappnetwork/model/b;I)V

    .line 113
    iget-object p1, p0, Lcab/snapp/d/b/a$1;->a:Lcab/snapp/d/b/a;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcab/snapp/d/b/a;->d:Z

    return-void
.end method

.method public final onSuccess(Lcab/snapp/a/b;)V
    .locals 5

    .line 58
    invoke-super {p0, p1}, Lcab/snapp/snappnetwork/a/a;->onSuccess(Lcab/snapp/snappnetwork/model/f;)V

    .line 61
    iget-object v0, p0, Lcab/snapp/d/b/a$1;->a:Lcab/snapp/d/b/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcab/snapp/d/b/a;->d:Z

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Lcab/snapp/a/b;->getRideEventModels()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcab/snapp/a/b;->getRideEventModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    invoke-virtual {p1}, Lcab/snapp/a/b;->getServerTime()J

    move-result-wide v0

    .line 66
    invoke-virtual {p1}, Lcab/snapp/a/b;->getRideEventModels()Ljava/util/List;

    move-result-object p1

    .line 67
    new-instance v2, Lcab/snapp/d/b/a$1$1;

    invoke-direct {v2, p0}, Lcab/snapp/d/b/a$1$1;-><init>(Lcab/snapp/d/b/a$1;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/a/a;

    .line 98
    invoke-virtual {p1}, Lcab/snapp/a/a;->getExpiresIn()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 100
    iget-object v0, p0, Lcab/snapp/d/b/a$1;->a:Lcab/snapp/d/b/a;

    iget v0, v0, Lcab/snapp/d/b/a;->ACK:I

    invoke-virtual {p1, v0}, Lcab/snapp/a/a;->setAckId(I)V

    .line 102
    iget-object v0, p0, Lcab/snapp/d/b/a$1;->a:Lcab/snapp/d/b/a;

    invoke-virtual {v0, p1}, Lcab/snapp/d/b/a;->onEvent(Lcab/snapp/a/a;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic onSuccess(Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    .line 54
    check-cast p1, Lcab/snapp/a/b;

    invoke-virtual {p0, p1}, Lcab/snapp/d/b/a$1;->onSuccess(Lcab/snapp/a/b;)V

    return-void
.end method
