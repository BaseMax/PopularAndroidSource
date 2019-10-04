.class Lcom/codahale/metrics/WeightedSnapshot$1;
.super Ljava/lang/Object;
.source "WeightedSnapshot.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codahale/metrics/WeightedSnapshot;-><init>(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codahale/metrics/WeightedSnapshot;


# direct methods
.method constructor <init>(Lcom/codahale/metrics/WeightedSnapshot;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/codahale/metrics/WeightedSnapshot$1;->this$0:Lcom/codahale/metrics/WeightedSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;)I
    .locals 4

    .line 46
    iget-wide v0, p1, Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;->value:J

    iget-wide v2, p2, Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;->value:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 48
    :cond_0
    iget-wide v0, p1, Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;->value:J

    iget-wide p1, p2, Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;->value:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;

    check-cast p2, Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;

    invoke-virtual {p0, p1, p2}, Lcom/codahale/metrics/WeightedSnapshot$1;->compare(Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;Lcom/codahale/metrics/WeightedSnapshot$WeightedSample;)I

    move-result p1

    return p1
.end method
