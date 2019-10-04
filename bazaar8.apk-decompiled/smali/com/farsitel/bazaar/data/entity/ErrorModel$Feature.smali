.class public abstract Lcom/farsitel/bazaar/data/entity/ErrorModel$Feature;
.super Lcom/farsitel/bazaar/data/entity/ErrorModel;
.source "ErrorModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/data/entity/ErrorModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Feature"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/farsitel/bazaar/data/entity/ErrorModel;-><init>(Ljava/lang/String;Lh/f/b/f;)V

    return-void
.end method
