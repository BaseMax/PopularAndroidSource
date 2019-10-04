.class public final Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$simCardMcc$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DeviceInfoDataSource.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/b/c;-><init>(Landroid/content/Context;Lc/c/a/e/d/u/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/e/b/c;


# direct methods
.method public constructor <init>(Lc/c/a/e/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$simCardMcc$2;->this$0:Lc/c/a/e/b/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$simCardMcc$2;->this$0:Lc/c/a/e/b/c;

    invoke-static {v0}, Lc/c/a/e/b/c;->b(Lc/c/a/e/b/c;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$simCardMcc$2;->this$0:Lc/c/a/e/b/c;

    invoke-static {v0}, Lc/c/a/e/b/c;->b(Lc/c/a/e/b/c;)[I

    move-result-object v0

    aget v2, v0, v2

    :cond_1
    return v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$simCardMcc$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
