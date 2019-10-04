.class public final Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;
.super Ljava/lang/Object;
.source "MoreItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem$a;


# instance fields
.field public final error:Lcom/farsitel/bazaar/data/entity/ErrorModel;

.field public final state:Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;->a:Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem$a;

    return-void
.end method

.method public constructor <init>(Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;->state:Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;->error:Lcom/farsitel/bazaar/data/entity/ErrorModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;-><init>(Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/farsitel/bazaar/data/entity/ErrorModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;->error:Lcom/farsitel/bazaar/data/entity/ErrorModel;

    return-object v0
.end method

.method public final b()Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;->state:Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;->state:Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;

    iget-object v1, p1, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;->state:Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;->error:Lcom/farsitel/bazaar/data/entity/ErrorModel;

    iget-object p1, p1, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;->error:Lcom/farsitel/bazaar/data/entity/ErrorModel;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getViewType()I
    .locals 1

    const v0, 0x7f0d00c6

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;->state:Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;->error:Lcom/farsitel/bazaar/data/entity/ErrorModel;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoreItem(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;->state:Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;->error:Lcom/farsitel/bazaar/data/entity/ErrorModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
