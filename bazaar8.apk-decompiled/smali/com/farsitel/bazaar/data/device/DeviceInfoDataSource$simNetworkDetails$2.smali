.class public final Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$simNetworkDetails$2;
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
        "[I>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/e/b/c;


# direct methods
.method public constructor <init>(Lc/c/a/e/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$simNetworkDetails$2;->this$0:Lc/c/a/e/b/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$simNetworkDetails$2;->invoke()[I

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[I
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$simNetworkDetails$2;->this$0:Lc/c/a/e/b/c;

    invoke-static {v0}, Lc/c/a/e/b/c;->a(Lc/c/a/e/b/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 5
    new-array v2, v1, [I

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v4

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v2, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 8
    sget-object v2, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "telephony manager : network"

    invoke-direct {v3, v4, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    .line 9
    :cond_0
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    return-object v0

    .line 10
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
